package sec01.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		// /member에서 넘어온 ID를 이용하여 삭제할껀지 여부 확인
		
		// 클라이언트에 html을 만들어서 삭제할껀지 물어보고..
		// 다시 되돌아 올때는 doPost로 돌아옴...
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id"); // delete 만들때 id 로 만듦.
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.println("\r\n" + 
				"<html>\r\n" + 
				"<head>\r\n" + 
				"     <script>\r\n" + 
				"     function confirmId() {\r\n" + 
				"          var r = confirm('사용자ID :"+id+" 를 진짜 삭제하시겠습니까?');\r\n" + 
				"          if(r == true) {\r\n" + 
				"               // ok 이면.. form submit을 해버림...\r\n" + 
				"               document.getElementById('myForm').submit();\r\n" + 
				"          } else {\r\n" + 
				"             //취소이면  \r\n" + 
				"          }\r\n" + 
				"     }\r\n" + 
				"\r\n" + 
				"     window.onload = function() {\r\n" + 
				"          confirmId();\r\n" + 
				"     }\r\n" + 
				"     </script>\r\n" + 
				"</head>\r\n" + 
				"<body>\r\n" + 
				"     <form action='delete' method='post' id='myForm'>\r\n" + 
				"          <input type='hidden' name='id' value='"+id+"'>\r\n" + 
				"     </form>\r\n" + 
				"</body>\r\n" + 
				"</html>");				
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		//System.out.println("여기까지들어옴");
		//사용자가 OK를 하면 이쪽으로 오고, not ok를 하면..?? /member로 보내기
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id"); //doGet을 통해 만든 form에서 다시 Post로 들어옴.
		//DAO를 만들어서 요청하고
		//삭제가 잘 되었으면 사용자에게 메세지로 알림
		MemberDAO memberDAO = new MemberDAO();
		int ret = memberDAO.deleteMember(id);

		// 정상적으로 DB에 insert되면 완료
		// 사용자에게 정상적으로 입력되었다고 완료 메세지
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if (ret > 0) {
			out.println("<html><head></head>");
			out.println("<body><p> 정상적으로 삭제가 완료되었습니다.</p></body>");
			out.println("</html>");
		} else {
			out.println("<html><head></head>");
			out.println("<body><p> 삭제에 오류가 발생했습니다.</p></body>");
			out.println("</html>");
		}
	}

}
