package employee;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EmployeeJoin
 */
@WebServlet("/employee/joinEmp")
public class EmployeeJoin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeJoin() {
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
		RequestDispatcher dispatch = request.getRequestDispatcher("/joinForm.jsp");
		dispatch.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
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
		System.out.println(vo);
		EmployeeDAO dao = new EmployeeDAO();
		int ret = dao.joinEmp(vo);
		
		request.setAttribute("success", ret);		 
	    RequestDispatcher dispatch = request.getRequestDispatcher("/joinDone.jsp");
	    dispatch.forward(request, response);
	}

}
