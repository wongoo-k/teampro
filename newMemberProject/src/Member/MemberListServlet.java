package Member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MemberListServlet
 */
@WebServlet("/member/list")
public class MemberListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MemberListServlet() {
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

				MemberDAO dao = new MemberDAO();
				List<MemberVO> list = dao.listMembers();
				for (int i = 0; i < list.size(); i++) {

					System.out.println(list.get(i).toString());
				}
				response.setContentType("text/html; charset=UTF-8");
				out.println("<html><head></head>");
				out.println("<body><table border='1'>");
				out.println("<tr><td>아이디</td><td>비밀번호</td><td>이름</td><td>이메일</td><td>가입일</td><td>삭제</td></tr>");

				for (int i = 0; i < list.size(); i++) {
					MemberVO memberVO = list.get(i);
					String id1 = memberVO.getId();
					String pwd = memberVO.getPwd();
					String name = memberVO.getName();
					String email = memberVO.getEmail();
					Date joinDate = memberVO.getJoinDate();
					out.println("<tr><td><a href='update?id=" + id1 + "'>" + id1 + "</a></td><td>" + pwd + "</td>");
					out.println("<td>" + name + "</td><td>" + email + "</td><td>" + joinDate + "</td><td>");
					out.println("<a href='delete?id=" + id1 + "&" + "name=" + name + "'>삭제</a>");
					out.println("</td></tr>");
				}
				out.println(
						"</table><input type='button' value='회원가입' onclick='javascript:location.replace(\"join\")'>");
				out.println(
						"<input type='button' value='로그아웃' onclick='javascript:location.replace(\"../auth/logout\")'></body></html>");
			} else {
				response.sendRedirect("../auth/login");
			}
		} else {
			response.sendRedirect("../auth/login");
		}
	}
}