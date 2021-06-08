package member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MemberUpdateServlet
 */
@WebServlet("/member/update")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MemberUpdateServlet() {
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
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		String id = "", pw = "";
		Boolean isLogon = false;
		HttpSession session = request.getSession(false);
		if (session != null) {
			isLogon = (Boolean) session.getAttribute("isLogon");
			if (isLogon == true) {
				// Session 정보 꺼냈다면..
				id = (String) session.getAttribute("login.id");
				pw = (String) session.getAttribute("login.pw");
				
				//request.setCharacterEncoding("UTF-8");
				String id1 = request.getParameter("id");
				MemberDAO memberDAO = new MemberDAO();
				MemberVO vo = new MemberVO();
				vo = memberDAO.selectMember(id1);
				response.setContentType("text/html; charset=UTF-8");

				out.println("<!DOCTYPE html>\r\n" + "<html>\r\n" + "<head>\r\n" + "<meta charset='UTF-8'>\r\n"
						+ "<title>Insert title here</title>\r\n" + "</head>\r\n" + "<body>\r\n"
						+ "	<form action='update' method='post'>\r\n"
						+ "		아이디 : <input type='text' name='id' value='" + vo.getId() + "' readonly><br>\r\n"
						+ "		비밀번호 : <input type='password' name='pwd' value='" + vo.getPwd() + "'><br>\r\n"
						+ "		이름 : <input type='text' name='name' value='" + vo.getName() + "'><br>\r\n"
						+ "		이메일 : <input type='text' name='email' value='" + vo.getEmail() + "'><br>\r\n"
						+ "		<input type='button' value='리스트로 돌아가기' onclick='javascript:location.replace(\"list\")'>\r\n"
						+ "		<input type='submit' value='수정'>\r\n"
						+ "		<input type='button' value='계정삭제' onclick='javascript:location.replace(\"delete?id="
						+ vo.getId() + "&" + "name=" + vo.getName() + "\")'>\r\n" + "	</form>\r\n" + "</body>\r\n"
						+ "</html>");
			} else {
				response.sendRedirect("../auth/login");
			}
		} else {
			response.sendRedirect("../auth/login");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String email = request.getParameter("email");

		MemberVO vo = new MemberVO();
		vo.setId(id);
		vo.setPwd(pwd);
		vo.setName(name);
		vo.setEmail(email);

		MemberDAO memberDAO = new MemberDAO();
		int ret = memberDAO.updateMember(vo);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if (ret > 0) {
			out.println("<html><head>" + "<script>"
					+ "window.onload = function() { setTimeout(function() { window.location='update' }, 2000); }"
					+ "</script>" + "</head>");
			out.println("<body><p> 정상적으로 수정이 완료되었습니다.</p></body>");
			out.println("</html>");
		} else {
			out.println("<html><head>" + "<meta http-equiv='Refresh' content='2;url=update'>" + "</head>");
			out.println("<body><p> 수정에 오류가 발생했습니다.</p></body>");
			out.println("</html>");
		}
	}
}