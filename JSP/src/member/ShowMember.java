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
 * Servlet implementation class ShowMember
 */
@WebServlet("/auth/show")
public class ShowMember extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowMember() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();	
		String id="", pw="";
		Boolean isLogon = false;
		HttpSession session = request.getSession(false);
		if (session != null) {
			isLogon = (Boolean)session.getAttribute("isLogon");
			if (isLogon == true) {
				// Session 정보 꺼냈다면..
				id = (String)session.getAttribute("login.id");
				pw = (String)session.getAttribute("login.pw");
				
				// DB정보 꺼내기..
	            MemberDAO memberDAO = new MemberDAO();
	            MemberVO vo = new MemberVO();
	            vo = memberDAO.selectMember(id);
			    System.out.println("id : " + id);
				out.println("<html><head></head>");
			    out.println("<body><table border='1'>");
			    out.println("<tr><td>아이디</td><td>비밀번호</td><td>이름</td><td>이메일</td><td>가입일</td></tr>");
			    out.println("<tr><td><a href='../member/update?id="+vo.getId()+"'>"+ vo.getId() + "</a></td><td>"+ vo.getPwd() +"</td>");
		        out.println("<td>"+ vo.getName() +"</td><td>"+ vo.getEmail() +"</td><td>"+ vo.getJoinDate() +"</td></td>");
		        out.println("</table>");
		        out.println("<button onclick=\"location.href='logout'\">로그아웃</button>");
		        out.println("</body></html>");
			} else {
				response.sendRedirect("login");
			}
		} else {
			response.sendRedirect("login");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}
