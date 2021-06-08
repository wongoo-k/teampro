package employee;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class EmployeeDelete
 */
@WebServlet("/employee/deleteEmp")
public class EmployeeDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmployeeDelete() {
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
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String login_eno = "", login_ename = "";
		Boolean isLogon = false;
		HttpSession session = request.getSession(false);
		if (session != null) {
			isLogon = (Boolean) session.getAttribute("isLogon");
			if (isLogon == true) {
				login_eno = (String) session.getAttribute("login.id");
				login_ename = (String) session.getAttribute("login.pw");
				int eno = Integer.parseInt(request.getParameter("eno"));
				EmployeeDAO dao = new EmployeeDAO();
				EmployeeVO emp = dao.findEmp(eno);
				request.setAttribute("emp", emp);
				RequestDispatcher dispatch = request.getRequestDispatcher("/deleteForm.jsp");
				dispatch.forward(request, response);
			} else {
				response.sendRedirect("../auth/loginEmp");
			}
		} else {
			response.sendRedirect("../auth/loginEmp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		int eno = Integer.parseInt(request.getParameter("eno"));
		EmployeeDAO dao = new EmployeeDAO();
		int ret = dao.deleteEmp(eno);

		request.setAttribute("success", ret);
		RequestDispatcher dispatch = request.getRequestDispatcher("/deleteDone.jsp");
		dispatch.forward(request, response);
	}

}
