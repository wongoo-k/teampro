package sec01.test;

// java.sql은 DB관련 패키지 모음
import java.sql.Statement;
import java.util.Date;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

// javax.servlet은 Servlet관련 패키지 모음
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DBConnect
 */
@WebServlet("/conn")
public class DBConnect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DBConnect() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		/*
		 * [ JDBC 6단계 ] -- 필수 암기 
		 * 1) 드라이버 로딩 
		 * 2) DB접속 (커넥션 얻기) 
		 * 3) 쿼리준비 
		 * 4) 쿼리실행 
		 * 5) 결과얻기
		 * 6) DB접속 해제 (닫기)
		 */
		
		// 1) 드라이버 로딩 (내 tomcat build path에 ojdbc드라이버가 있으니, 거기서 oracle접속 드라이버 찾아서 자바에서 쓸수있게 등록해)
	     try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e8) {
			// TODO Auto-generated catch block
			e8.printStackTrace();
		}
		// 2) DB접속 (커넥션 얻기)
	     String url = "jdbc:oracle:thin:@localhost:1521:XE";
	     String id = "STUDY";
	     String pw = "STUDY";
	     Connection conn = null;
		try {
			conn = DriverManager.getConnection(url, id, pw);
		} catch (SQLException e7) {
			// TODO Auto-generated catch block
			e7.printStackTrace();
		}
		 // 메소드 만들때
		 // 접근제한자 리턴타입 메소드명(파라메터)
		 // public void test(int num) {   }
		 // public Connection test(String url) {  return Conn
		
		 // null이 나온다.. 인스턴스 (클래스만든) new 안했다...
	     // 3) 쿼리준비
	     Statement stmt = null;
		try {
			stmt = conn.createStatement();
		} catch (SQLException e6) {
			// TODO Auto-generated catch block
			e6.printStackTrace();
		}
	     // 4) 쿼리실행 , 5) 결과얻기   동시에 수행
	     String query = "select * from t_member"; // 자바에서는 sql 명령어 끝에 ; 붙이지 않는다.
	     ResultSet rs = null;
		try {
			rs = stmt.executeQuery(query);
		} catch (SQLException e5) {
			// TODO Auto-generated catch block
			e5.printStackTrace();
		}
	     try {
			while(rs.next()) { // Row단위로 처리하는데 우리 눈에는 여러줄이 한번에 보이지만, JAVA는 한줄씩 요청
				 String rs_id = null;
				try {
					rs_id = rs.getString("ID");
				} catch (SQLException e4) {
					// TODO Auto-generated catch block
					e4.printStackTrace();
				} // 컬럼명으로 가져옴
				 String rs_pwd = null;
				try {
					rs_pwd = rs.getString("PWD");
				} catch (SQLException e3) {
					// TODO Auto-generated catch block
					e3.printStackTrace();
				} // 컬럼명 대/소문자 관계없음
				 try {
					String rs_name = rs.getString("NAME");
				} catch (SQLException e2) {
					// TODO Auto-generated catch block
					e2.printStackTrace();
				}
				 try {
					String rs_email = rs.getString("EMAIL");
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				 
				 // java.util.Date하고 java.sql.Date하고 다른점
				 // java.util.Date가 상위클래스 이고, 시간을 더 정밀하게 다룸.
				 try {
					Date rs_date = rs.getDate("JOINDATE");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				 
				 System.out.println("id = "+rs_id + "," + "pwd = " + rs_pwd);
				 
			 }
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	     
	     // 6) DB접속 해제 (닫기)
	     // 실행결과 닫기
	     try {
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	     try {
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	     // DB접속 닫기
	     try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}     
	}
}
