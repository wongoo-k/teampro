package auth;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Member.MemberDAO;
import Member.MemberVO;

/**
 * Servlet implementation class MemberLoginServlet
 */
@WebServlet("/auth/login")
public class MemberLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html>\r\n" + "<head>\r\n" + "</head>\r\n" + "<body>\r\n"
				+ "	<form name='frmLogin' method='post' action='login' encType='utf-8'>\r\n"
				+ "		아이디 : <input type='text' name='user_id'><br>\r\n"
				+ "		비밀번호 : <input type='password' name='user_pw'><br>\r\n"
				+ "		<input type='submit' value='로그인'>\r\n" + "		<input type='reset' value='다시 입력'>\r\n"
				+ "	</form>\r\n" + "</body>\r\n" + "</html>");
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();		
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");

		MemberVO vo = new MemberVO();
		vo.setId(user_id);
		vo.setPwd(user_pw);
		
		MemberDAO memberDAO = new MemberDAO();
		boolean result = memberDAO.isExisted(vo);
		if (result) {
			HttpSession session = request.getSession();
			session.setAttribute("isLogon", true);
			session.setAttribute("login.id", user_id);
			session.setAttribute("login.pw", user_pw);
			
			out.println("<html><head>"
					+ "<meta http-equiv='Refresh' content='2;url=../member/list'>"
					+ "</head>");
			out.println("안녕하세요 " + user_id + "님!!<br>");
			out.println("</body></html>");			
		} else {
			out.println("<html><body>");
			out.println("회원 아이디가 틀립니다. <br>");
			out.println("<a href='login'> 다시 로그인하기 </a>");
			out.println("</body></html>");
		}
	}
}