package manager;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import listener.LoginImpl;

/**
 * Servlet implementation class LoginStatus
 */
@WebServlet("/LoginStatus")
public class LoginStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginStatus() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		//관리자 한테 현재 로그인하고있는 현황을 알려줌..
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession();
		String user_id = (String) session.getAttribute("login.id");
		String user_pw = (String) session.getAttribute("login.pw");
		
		LoginImpl loginUser = new LoginImpl(user_id,user_pw);
		
		if(session.isNew()) {
			session.setAttribute("loginUser", loginUser);
		}
		
		out.println("<html><head>");
		out.println("<script>setTimeout('history.go(0);',1000) </script>");
		out.println("<body> 현재 접속한 ID는 :" + loginUser.user_id + "<br>");
		out.println("총 접속자 수는 : " + LoginImpl.total_user + "<br>");
		out.println("</head></body>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
