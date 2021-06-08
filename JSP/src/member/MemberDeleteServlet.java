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
 * Servlet implementation class MemberDeleteServlet
 */
@WebServlet("/member/delete")
public class MemberDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MemberDeleteServlet() {
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
				response.setContentType("text/html; charset=UTF-8");
				String id1 = request.getParameter("id");
				String name = request.getParameter("name");

				out.println("\r\n" + "<html>\r\n" + "<head>\r\n" + "     <script>\r\n"
						+ "     function confirmId() {\r\n" + "          var r = confirm('사용자 ID : " + id1
						+ " 사용자 NAME : " + name + " 를(을) 진짜 삭제하시겠습니까?');\r\n" + "          if(r == true) {\r\n"
						+ "               document.getElementById('myForm').submit();\r\n" + "          } else {\r\n"
						+ "				window.location='list' " + "          }\r\n" + "     }\r\n" + "\r\n"
						+ "     window.onload = function() {\r\n" + "          confirmId();\r\n" + "     }\r\n"
						+ "     </script>\r\n" + "</head>\r\n" + "<body>\r\n"
						+ "     <form action='delete' method='post' id='myForm'>\r\n"
						+ "          <input type='hidden' name='id' value='" + id1 + "'>\r\n"
						+ "          <input type='hidden' name='name' value='" + name + "'>\r\n" + "     </form>\r\n"
						+ "</body>\r\n" + "</html>");
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
	//	request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		MemberDAO memberDAO = new MemberDAO();
		int ret = memberDAO.deleteMember(id);

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if (ret > 0) {
			out.println("<html><head>" + "<meta http-equiv='Refresh' content='2;url=list'>" + "</head>");
			out.println("<body><p> 정상적으로 삭제가 완료되었습니다.</p></body>");
			out.println("</html>");
		} else {
			out.println("<html><head>" + "<meta http-equiv='Refresh' content='2;url=list'>" + "</head>");
			out.println("<body><p> 삭제에 오류가 발생했습니다.</p></body>");
			out.println("</html>");
		}
	}
}