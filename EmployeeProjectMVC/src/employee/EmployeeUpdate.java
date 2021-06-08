package employee;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class EmployeeUpdate
 */
@WebServlet("/employee/updateEmp")
public class EmployeeUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmployeeUpdate() {
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
		
//		  String login_eno = "", login_ename = ""; Boolean isLogon = false; HttpSession
//		  session = request.getSession(false); if (session != null) { isLogon =
//		  (Boolean) session.getAttribute("isLogon"); if (isLogon == true) { login_eno =
//		  (String) session.getAttribute("login.id"); login_ename = (String)
//		  session.getAttribute("login.pw");
		 
				int eno = Integer.parseInt(request.getParameter("eno"));
				EmployeeDAO dao = new EmployeeDAO();
				EmployeeVO empInfo = dao.findEmp(eno);
				request.setAttribute("empInfo", empInfo);
				RequestDispatcher dispatch = request.getRequestDispatcher("/updateForm.jsp");
				dispatch.forward(request, response);
//			} else {
//				response.sendRedirect("../auth/loginEmp");
//			}
//		} else {
//			response.sendRedirect("../auth/loginEmp");
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
		int eno = Integer.parseInt(request.getParameter("eno"));
		String ename = request.getParameter("ename");
		String job = request.getParameter("job");
		int manager = Integer.parseInt(request.getParameter("manager"));
		int salary = Integer.parseInt(request.getParameter("salary"));
		int commission = Integer.parseInt(request.getParameter("commission"));
		int dno = Integer.parseInt(request.getParameter("dno"));

		EmployeeVO vo = new EmployeeVO();
		vo.setEno(eno);
		vo.setEname(ename);
		vo.setJob(job);
		vo.setManager(manager);
		vo.setSalary(salary);
		vo.setCommission(commission);
		vo.setDno(dno);

		EmployeeDAO dao = new EmployeeDAO();
		int ret = dao.updateEmp(vo);

		request.setAttribute("success", ret);
		RequestDispatcher dispatch = request.getRequestDispatcher("/updateDone.jsp");
		dispatch.forward(request, response);
	}
}
