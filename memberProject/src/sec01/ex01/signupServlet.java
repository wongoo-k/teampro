package sec01.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class signupMember
 */
@WebServlet("/signup")
public class signupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public signupServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.println("<!DOCTYPE html>\r\n" + 
				"<html>\r\n" + 
				"<head>\r\n" + 
				"<meta charset='UTF-8'>\r\n" + 
				"<title>Insert title here</title>\r\n" + 
				"</head>\r\n" + 
				"<body>\r\n" + 
				"	<form action='signup' method='post'>\r\n" + 
				"		아이디 : <input type='text' name='id'><br>\r\n" + 
				"		비밀번호 : <input type='password' name='pwd'><br>\r\n" + 
				"		이름 : <input type='text' name='name'><br>\r\n" + 
				"		이메일 : <input type='text' name='email'><br>\r\n" + 
				"		<input type='reset' value='취소'>\r\n" + 
				"		<input type='submit' value='완료'>\r\n" + 
				"	</form>\r\n" + 
				"</body>\r\n" + 
				"</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);

		// 사용자가 입력한 입력정보
		// ID, PWD, NAME, EMAIL 정보를 request로 불러와서
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		// joindate는 가져올 필요 없음.

		// 저장한 데이터를 class로 만들어서 저장하고
		MemberVO vo = new MemberVO();
		vo.setId(id);
		vo.setPwd(pwd);
		vo.setName(name);
		vo.setEmail(email);
		// vo.setJoinDate는 만들지 않고 전달.

		// 만든 class를 DAO를 불러서 전달하고
		MemberDAO memberDAO = new MemberDAO();
		int ret = memberDAO.signupMember(vo);

		// 정상적으로 DB에 insert되면 완료
		// 사용자에게 정상적으로 입력되었다고 완료 메세지
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if (ret > 0) {
			out.println("<html><head></head>");
			out.println("<body><p> 정상적으로 가입이 완료되었습니다.</p></body>");
			out.println("</html>");
		} else {
			out.println("<html><head></head>");
			out.println("<body><p> 가입시 오류가 발생했습니다.</p></body>");
			out.println("</html>");
		}
	}

}
