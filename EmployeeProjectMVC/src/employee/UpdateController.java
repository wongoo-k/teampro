package employee;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateController
 */
@WebServlet("/employee/update.do")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateController() {
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

		String eno = request.getParameter("eno");
		// 웹에서 URL로 넘어오는건 무조건 String으로 처리
		// int eno = Integer.parseInt(request.getParameter("eno"));
		// int 형태인걸 알면 변환해서 받아도 상관없음.

		System.out.println("eno = " + eno);
		// 무조건 sysout을 통해서 찍어야함. (변수안에 있는건 무조건 찍는 연습)

		EmployeeDAO dao = new EmployeeDAO();
		EmployeeVO vo = new EmployeeVO();
		vo = dao.selectOne(eno);

		// 한명 혹은 0명 찾았고
		request.setAttribute("vo", vo);
		RequestDispatcher dispatch = request.getRequestDispatcher("/updateFormMembers.jsp");
		dispatch.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}
