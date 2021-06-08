package sec01.ex01;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

public class MemberDAO {
	// 필드 선언 : JDBC 6단계에서 사용할 필드
	private Statement stmt;
	private Connection con;
	
	// 메소드 선언 (기능) -- 사용자 전체목록 조회하기
	public List<MemberVO> listMembers(HttpServletRequest request) {
		List<MemberVO> list = new ArrayList<MemberVO>();
		try {
		String id1 = request.getParameter("id");
		String pwd1 = request.getParameter("pwd");
		String name1 = request.getParameter("name");
		String email1 = request.getParameter("email");
		// 1,2,3) 드라이버로딩,DB접속,쿼리준비
			connDB();
		// 4)쿼리 실행
			String query = "SELECT * FROM T_MEMBER";
			System.out.println("Query = " + query);
			ResultSet rs = stmt.executeQuery(query);
	    // 5)결과 얻기
			while (rs.next()) {
				// DB에 select해서 1개의 Row를 가져와서 JAVA 변수에 저장..
				String id = rs.getNString("id"); // 컬럼명, 대소문자 구분 안함.
				String pwd = rs.getNString("pwd");
				String name = rs.getNString("name");
				String email = rs.getNString("email");
				Date joinDate = rs.getDate("joinDate");
				
				//Array에 하나씩 쌓아서 나중에 한번에 리턴
				//Array에 하나식 쌓기위해 getter/setter를 이용하여 class에 넣는다.
				MemberVO vo = new MemberVO();
				vo.setId(id);
				vo.setPwd(pwd);
				vo.setName(name);
				vo.setEmail(email);
				vo.setJoinDate(joinDate);
				
				//위에 만든 class를 list (ArrayList)에 하나씩 순차적으로 넣는다.
				list.add(vo);
			}		
		// 6)DB접속 해제
			rs.close();
			stmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		// List<MemberVO> 형태를 return 해야함..
		return list;
	}

	private void connDB() {
		// TODO Auto-generated method stub
		String driver = "oracle.jdbc.driver.OracleDriver";
	    String url = "jdbc:oracle:thin:@localhost:1521:XE";
	    String user = "STUDY";
	    String pwd = "STUDY";
		try {
			Class.forName(driver);
			System.out.println("Oracle 드라이버 로딩 성공");
			con = DriverManager.getConnection(url, user, pwd);
			System.out.println("Connection 생성 성공");
			stmt = con.createStatement();
			System.out.println("Statement 생성 성공");			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
