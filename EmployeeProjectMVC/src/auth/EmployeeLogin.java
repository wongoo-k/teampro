package auth;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import employee.EmployeeDAO;
import employee.EmployeeVO;

/**
 * Servlet implementation class EmployeeLogin
 */
@WebServlet("/auth/loginEmp")
public class EmployeeLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeLogin() {
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
		RequestDispatcher dispatch = request.getRequestDispatcher("/loginForm.jsp");
		dispatch.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setContentType("text/html; charset=utf-8");	
		int user_eno = Integer.parseInt(request.getParameter("user_eno"));
		String user_ename = request.getParameter("user_ename");

		EmployeeVO vo = new EmployeeVO();
		vo.setEno(user_eno);
		vo.setEname(user_ename);
		
		EmployeeDAO dao = new EmployeeDAO();
		boolean result = dao.loginEmp(vo);
		if (result) {
			HttpSession session = request.getSession();
			session.removeAttribute("isLogon");
			session.setAttribute("isLogon", true);
			session.setAttribute("login.eno", user_eno);
			session.setAttribute("login.ename", user_ename);
			request.setAttribute("result", result);
			RequestDispatcher dispatch = request.getRequestDispatcher("/loginDone.jsp");
			dispatch.forward(request, response);
			
		} else {
			request.setAttribute("result", result);
			RequestDispatcher dispatch = request.getRequestDispatcher("/loginDone.jsp");
		    dispatch.forward(request, response);
		}
	} 

}
