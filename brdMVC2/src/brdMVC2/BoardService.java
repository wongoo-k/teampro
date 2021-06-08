package brdMVC2;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BoardService {
	BoardDAO boardDAO;
	int count;
	
	public BoardService() {
		boardDAO = new BoardDAO();
		count = 0;
	}
	
//	public List<ArticleDto> listArticles() {
//		List<ArticleDto> articlesList = boardDAO.selectAllArticles();
//		return articlesList;		
//	}
	
	public int addArticle(ArticleDto article) {
		return boardDAO.insertNewArticle(article);
	}

	public ArticleDto viewArticle(int articleNO) {
		// TODO Auto-generated method stub
		ArticleDto article = null;
		article = boardDAO.selectArticle(articleNO);
		return article;
	}

	public List<Integer> removeArticle(int articleNO) {
		// TODO Auto-generated method stub
		List<Integer> articleNOList = boardDAO.selectRemoveArticles(articleNO);
		boardDAO.deleteArticle(articleNO);
		return articleNOList;
	}

	public int addReply(ArticleDto article) {
		// TODO Auto-generated method stub
		return boardDAO.insertNewArticle(article);
	}

	public Map listArticles(Map pagingMap) {
		// TODO Auto-generated method stub
		Map articlesMap = new HashMap();
		System.out.println("--START -------- boardDAO.selectAllArticles(pagingMap) START");
		List<ArticleDto> articlesList = boardDAO.selectAllArticles(pagingMap);
		System.out.println("--END -------- boardDAO.selectAllArticles(pagingMap) START");

		System.out.println("BoardService Count = " + (count++));
		int totArticles = boardDAO.selectTotArticles();
		articlesMap.put("articlesList", articlesList);
		articlesMap.put("totArticles", totArticles);
		return articlesMap;
	}
	
}
