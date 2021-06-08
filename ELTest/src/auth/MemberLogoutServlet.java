package auth;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MemberLogoutServlet
 */
@WebServlet("/auth/logout")
public class MemberLogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberLogoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		
		out.println("\r\n" + 
				"<html>\r\n" + 
				"<head>\r\n" + 
				"     <script>\r\n" + 
				"     function confirmLogout() {\r\n" + 
				"          var r = confirm('로그아웃 하시겠습니까?');\r\n" + 
				"          if(r == true) {\r\n" + 
				"               document.getElementById('myForm').submit();\r\n" + 
				"          } else {\r\n" + 
				"				window.location='show' " +
				"          }\r\n" +
				"     }\r\n" + 
				"\r\n" + 
				"     window.onload = function() {\r\n" + 
				"          confirmLogout();\r\n" + 
				"     }\r\n" + 
				"     </script>\r\n" + 
				"</head>\r\n" + 
				"<body>\r\n" +
				"     <form action='logout' method='post' id='myForm'>\r\n" + 
				"          <input type='hidden'>\r\n" +
				"     </form>\r\n" + 
				"</body>\r\n" + 
				"</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();

		session.invalidate();
				
		out.println("<html><head>"
				+ "<meta http-equiv='Refresh' content='2;url=login'>"
				+ "</head>");
		out.println("<body><h3>정상적으로 로그아웃 되었습니다.</h3></body></html>");
		  
	}

}
