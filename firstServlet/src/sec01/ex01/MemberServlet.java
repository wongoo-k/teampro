package sec01.ex01;

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
 * Servlet implementation class MemberServlet
 */
@WebServlet("/member")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		// Controller (조정자 역할)
		MemberDAO dao = new MemberDAO();
		List<MemberVO> list = dao.listMembers(request);
		
//		for(int i=0; i<list.size(); i++) {
//			//System.out.println(list.get(i).getId());
//			System.out.println(list.get(i).toString());
//		}
		
		// View (사용자 화면 생성 역할)
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		// 내가 만드려고 하는 html을 미리 만들어 놓음.
		// table을 이용해서 만들 예정.. (<table><tr><td></td></tr></table>..)
		out.println("<html><head></head>");
		out.println("<body>");
		out.println("<form name=\"frmInput\" method=\"get\" action=\"member\">\r\n" + 
				"		아이디 : <input type=\"text\" name=\"id\"><br>\r\n" + 
				"		비밀번호 : <input type=\"password\" name=\"pw\"><br>\r\n" + 
				"		이름 : <input type=\"text\" name=\"name\"><br>\r\n" + 
				"		이메일 : <input type=\"text\" name=\"email\"><br>");
		out.println("<input type=\"submit\" value=\"전송\">\r\n" + 
				"		<input type=\"reset\" value=\"초기화\">");
		out.println("</form>");
		out.println("<table border = '1'>");
		out.println("<tr><td>아이디</td><td>비밀번호</td><td>이름</td><td>이메일</td><td>가입일</td></tr>");
		
		// 이 부분은 DB에 불러오는 반복이 필요한 부분 .
		for(int i=0; i<list.size(); i++) {
			// for문을 통해서 list에 들어있는 Class(MemberVO)를 하나씩 
			// 그 클래스 안에 있는 데이터를 getter를 이용하여 최종 꺼
			MemberVO memberVO = list.get(i);
			String id = memberVO.getId();
			String pwd = memberVO.getPwd();
			String name = memberVO.getName();
			String email = memberVO.getEmail();
			Date joinDate = memberVO.getJoinDate();
			out.println("<tr><td>"+id+"</td><td>"+pwd+"</td>");
			out.println("<td>"+name+"</td><td>"+email+"</td><td>"+joinDate+"</td></tr>");
			
		}
		out.println("</table></body></html>");
	}

}
