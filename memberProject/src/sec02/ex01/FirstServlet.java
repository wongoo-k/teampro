package sec02.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FirstServlet
 */
@WebServlet("/first")
public class FirstServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FirstServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      //response.getWriter().append("Served at: ").append(request.getContextPath());
      response.setContentType("text/html; charset=UTF-8");
      //response.sendRedirect("second"); // 즉시 http message 302번으로 전달
      
      //response.addHeader("Refresh", "0;url=second"); // 즉시 명령어를 전달하는데... 1초후에 second, html헤더 변경

//      PrintWriter out = response.getWriter();
//      out.print("<html><head>");
//      out.print("<script>");
//      out.print("location.href='second'");
//      out.print("</script>");
//      out.print("<body></body></html>");
      
      // 1. SendRedirect  / 2. addHeader / 3. javascript : 모두 클라이언트에 지시하여 실행한다.
      RequestDispatcher dispatch = request.getRequestDispatcher("second?name=kang");
      dispatch.forward(request, response);
   }

}