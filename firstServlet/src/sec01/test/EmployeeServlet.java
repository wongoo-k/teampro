package sec01.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EmployeeServlet
 */
@WebServlet("/employee")
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		EmployeeDAO dao = new EmployeeDAO();
		List<EmployeeVO> list = dao.listEmployees();
		
//		for(int i=0; i<list.size(); i++) {
//			
//			System.out.println(list.get(i).toString());
//		}
			
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<html><head></head>");
		out.println("<body><table border = '1'>");
		out.println("<tr><td>사원번호</td><td>이름</td><td>직책</td><td>매니저번호</td><td>입사일</td><td>급여</td><td>성과급</td><td>부서번호</td></tr>");
		for (int i=0; i<list.size(); i++) {
			EmployeeVO employeeVO = list.get(i);
			int eno = employeeVO.getEno();
			String ename = employeeVO.getEname();
			String job = employeeVO.getJob();
			int manager = employeeVO.getManager();
			Date hiredate = employeeVO.getHirerdate();
			int salary = employeeVO.getSalary();
			int commission = employeeVO.getCommission();
			int dno = employeeVO.getDno();
			out.println("<tr><td>"+eno+"</td><td>"+ename+"</td><td>"+job+"</td><td>"+manager+"</td>");
			out.println("<td>"+hiredate+"</td><td>"+salary+"</td><td>"+commission+"</td><td>"+dno+"</td></tr>");
			
		}
		out.println("</table></body></html>");
	}

}
