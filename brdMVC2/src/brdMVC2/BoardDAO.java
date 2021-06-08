package brdMVC2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {
	private DataSource dataFactory;
	Connection conn;
	PreparedStatement pstmt;

	public BoardDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

//	public List<ArticleDto> selectAllArticles() {
//		List<ArticleDto> articlesList = new ArrayList<ArticleDto>();
//		try {
//			conn = dataFactory.getConnection();
//			String query = "SELECT LEVEL, articleNO, parentNO, title, content, id, imageFileName, writeDate" + " FROM t_board"
//					+ " START WITH parentNO=0" + " CONNECT BY PRIOR articleNO=parentNO"
//					+ " ORDER SIBLINGS BY articleNO DESC";
//
//			System.out.println(query);
//			pstmt = conn.prepareStatement(query);
//			ResultSet rs = pstmt.executeQuery();
//			while (rs.next()) {
//				int level = rs.getInt("level");
//				int articleNO = rs.getInt("articleNO");
//				int parentNO = rs.getInt("parentNO");
//				String title = rs.getString("title");
//				String content = rs.getString("content");
//				String imageFileName = rs.getString("imageFileName");
//				String id = rs.getString("id");
//				Date writeDate = rs.getDate("writeDate");
//
//				ArticleDto vo = new ArticleDto();
//				vo.setLevel(level);
//				vo.setArticleNO(articleNO);
//				vo.setParentNO(parentNO);
//				vo.setTitle(title);
//				vo.setContent(content);
//				vo.setImageFileName(imageFileName);
//				vo.setId(id);
//				vo.setWriteDate(writeDate);
//				articlesList.add(vo);
//
//				System.out.println("vo : " + vo);
//			}
//			rs.close();
//			pstmt.close();
//			conn.close();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return articlesList;
//	}

	private int getNewArticleNO() {
		try {
			conn = dataFactory.getConnection();
			Properties pro = conn.getClientInfo();
			System.out.println("Properties = " + pro.toString());
			String query = "SELECT MAX(articleNO) FROM T_BOARD";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();

			if (rs.next())
				return (rs.getInt(1) + 1);
			rs.close();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int insertNewArticle(ArticleDto article) {
		int articleNO = getNewArticleNO();
		try {
			conn = dataFactory.getConnection();
			int parentNO = article.getParentNO();
			String title = article.getTitle();
			String content = article.getContent();
			String id = article.getId();
			String imageFileName = article.getImageFileName();
			String query = "INSERT INTO t_board (articleNO, parentNO, title, content, imageFileName, id)"
						 + " VALUES (?, ?, ?, ?, ?, ?)";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, articleNO);
			pstmt.setInt(2, parentNO);
			pstmt.setString(3, title);
			pstmt.setString(4, content);
			pstmt.setString(5, imageFileName);
			pstmt.setString(6, id);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return articleNO;
	}

	public ArticleDto selectArticle(int articleNO) {
		ArticleDto article = new ArticleDto();
		try {
			conn = dataFactory.getConnection();
			String query = "select articleNO, parentNO, title, content, imageFileName, id, WriteDate" + " from t_board"
						 + " where articleNO=?";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, articleNO);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			int _articleNO = rs.getInt("articleNO");
			int parentNO = rs.getInt("parentNO");
			String title = rs.getString("title");
			String content = rs.getString("content");
			String imageFileName = rs.getString("imageFileName");
			String id = rs.getString("id");
			Date writeDate = rs.getDate("writeDate");

			article.setArticleNO(_articleNO);
			article.setParentNO(parentNO);
			article.setTitle(title);
			article.setContent(content);
			article.setImageFileName(imageFileName);
			article.setId(id);
			article.setWriteDate(writeDate);

			rs.close();
			pstmt.close();
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return article;
	}

	public void deleteArticle(int articleNO) {
		// TODO Auto-generated method stub
		try {
			conn = dataFactory.getConnection();
			String query = "DELETE FROM t_board "
						 + " WHERE articleNO in ("
						 + " SELECT articleNO FROM t_board "
						 + " START WITH articleNO = ?"
						 + " CONNECT BY PRIOR articleNO = parentNO )";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, articleNO);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<Integer> selectRemoveArticles(int articleNO) {
		// TODO Auto-generated method stub
		List<Integer> articleNOList = new ArrayList<Integer>();
		try {
			conn = dataFactory.getConnection();
			String query = "SELECT articleNO FROM t_board "
						+ " START WITH articleNO = ?"
						+ " CONNECT BY PRIOR articleNO = parentNO";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, articleNO);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				articleNO = rs.getInt("articleNO");
				articleNOList.add(articleNO);
			}
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return articleNOList;
	}

	public List<ArticleDto> selectAllArticles(Map<String, Integer> pagingMap) {
		// TODO Auto-generated method stub
		List<ArticleDto> articlesList = new ArrayList<ArticleDto>();
		int section = (Integer) pagingMap.get("section");
		int pageNum = (Integer) pagingMap.get("pageNum");
		try {
			System.out.println("DAO ... getConnection START");
			conn = dataFactory.getConnection();
			//System.out.println("DAO ... getConnection END");
			// Datasourc가 Connection Pool 이라고 하는 접속정보를 7개만 만들어 놓은 형태.. 
			
			
			String query = "SELECT * FROM ( "+ "select ROWNUM as recNum,"
						   + " LVL," + "articleNO," + "parentNO," + "title," + "writeDate"
						   + " from (select LEVEL as LVL," + "articleNO," + "parentNO," + "title," + "writeDate"
						   + " from t_board"
						   + " START WITH parentNO=0" + " CONNECT BY PRIOR articleNO = parentNO"
						   + " ORDER SIBLINGS BY articleNO DESC)" + ")"
						   + " where recNum between(?-1)*100+(?-1)*10+1 and (?-1)*100+?*10 ";
			
			System.out.println(query);
			System.out.println("section: " +section);
			System.out.println("pageNum: " +pageNum);
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, section);
			pstmt.setInt(2, pageNum);
			pstmt.setInt(3, section);
			pstmt.setInt(4, pageNum);
			ResultSet rs = pstmt.executeQuery();
			//ResultSet rs = null;
			while (rs.next()) {
				int level = rs.getInt("lvl");
				int articleNO = rs.getInt("articleNO");
				int parentNO = rs.getInt("parentNO");
				String title = rs.getString("title");
				Date writeDate = rs.getDate("writeDate");
				ArticleDto article = new ArticleDto();
				article.setArticleNO(articleNO);
				article.setLevel(level);
				article.setParentNO(parentNO);
				article.setTitle(title);
				article.setWriteDate(writeDate);
				articlesList.add(article);		
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return articlesList;		
	}

	public int selectTotArticles() {
		// TODO Auto-generated method stub
		try {
			conn = dataFactory.getConnection();
			String query = "select count(articleNO) from t_board";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				return (rs.getInt(1));
			}
			rs.close();
			pstmt.close();
			conn.close();
					
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

}
