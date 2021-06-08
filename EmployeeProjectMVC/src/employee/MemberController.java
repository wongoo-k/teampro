package employee;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Membercontroller
 */
@WebServlet("/employee/mem.do")
public class MemberController extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberController() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
    *      response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      doHandle(request, response);
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
    *      response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      doHandle(request, response);
   }

   private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	   
      request.setCharacterEncoding("utf-8");
      // 의무적으로 해줌.. 클라이언트에서 받아오는 값을 utf-8로 인식하겠다.
      // 이건 무조건 맨 윗줄에 써야함.. -> Servlet Filter에서 처리
      
      EmployeeDAO employeeDAO = new EmployeeDAO();
      // 사용자 입력을 받아서 DAO를 new하고 사용준비.
      
      List<EmployeeVO> employeeList = employeeDAO.listEmp();
      // List에 EmployeeVO라는 DTO를 이용하여 저장하고.. null일수도,1명만 있을수도,100명이 있을수도 있음.
      
      request.setAttribute("employeeList", employeeList);
      // request에 넣어준 이유 (보관소 : application,session, request)
      // Servlet하고 JSP하고 데이터를 서로 공유하려면, 보관소를 써야한다.
      
      //response.setContentType("text/html;charset=utf-8");
      // JSP에서 수행하기 때문에 생략        
      
      RequestDispatcher dispatch = request.getRequestDispatcher("/listMembers.jsp");
      dispatch.forward(request, response);
      //내가 가지고 있는 request,response를 새로운 listMembers.jsp JSP에 전달한다
   }
}