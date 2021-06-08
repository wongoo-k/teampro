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
 * Servlet implementation class EmployeeList
 */
@WebServlet("/employee/listEmp")
public class EmployeeList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmployeeList() {
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
//		String login_eno = "", login_ename = "";
//		Boolean isLogon = false;
//		HttpSession session = request.getSession(false);
//		if (session != null) {
//			isLogon = (Boolean) session.getAttribute("isLogon");
//			if (isLogon == true) {
//				login_eno = (String) session.getAttribute("login.id");
//				login_ename = (String) session.getAttribute("login.pw");
				RequestDispatcher dispatch = request.getRequestDispatcher("/listForm.jsp");
				dispatch.forward(request, response);
//			} else {
//				RequestDispatcher dispatch = request.getRequestDispatcher("/loginForm.jsp");
//				dispatch.forward(request, response);
//			}
//		} else {
//			RequestDispatcher dispatch = request.getRequestDispatcher("/loginForm.jsp");
//			dispatch.forward(request, response);
//		}
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
		EmployeeDAO dao = new EmployeeDAO();
		List<EmployeeVO> list = dao.listEmp();
		request.setAttribute("list", list);
		RequestDispatcher dispatch = request.getRequestDispatcher("/listDone.jsp");
		dispatch.forward(request, response);

	}

}
