package sec01.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/update")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		// 회원목록에서 회원ID를 주면
		request.setCharacterEncoding("UTF-8");
		// 그 ID를 사용하여 회원정보를 조회하고
		// <a href='update?id=hong'>
		String id = request.getParameter("id");
		// 조회된 정보를 html로 만들어서 사용자에게 전달함.
		MemberDAO memberDAO = new MemberDAO();
		MemberVO vo = new MemberVO();
		vo = memberDAO.selectMember(id);
		//System.out.println("servlet DB결과 : " + vo.toString());
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.println("<!DOCTYPE html>\r\n" + 
				"<html>\r\n" + 
				"<head>\r\n" + 
				"<meta charset='UTF-8'>\r\n" + 
				"<title>Insert title here</title>\r\n" + 
				"</head>\r\n" + 
				"<body>\r\n" + 
				"	<form action='update' method='post'>\r\n" + 
				"		아이디 : <input type='text' name='id' value='"+vo.getId()+"' readonly><br>\r\n" + 
				"		비밀번호 : <input type='password' name='pwd' value='"+vo.getPwd()+"'><br>\r\n" + 
				"		이름 : <input type='text' name='name' value='"+vo.getName()+"'><br>\r\n" + 
				"		이메일 : <input type='text' name='email' value='"+vo.getEmail()+"'><br>\r\n" + 
				"		<input type='button' value='돌아가기' onclick='javascript:location.replace(\"member\")'>\r\n" + 
				"		<input type='submit' value='수정'>\r\n" + 
				"	</form>\r\n" + 
				"</body>\r\n" + 
				"</html>");
		
		// * 추가기능.. joinDate는 화면에 보이게는 하되 수정안되도록.
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		// doGet에서 넘어온 회원정보들을
		// DB에 업데이트 한다
		// 그 결과를 사용자에게 전달한다.
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		// joindate는 가져올 필요 없음.

		// 저장한 데이터를 class로 만들어서 저장하고
		MemberVO vo = new MemberVO();
		vo.setId(id);
		vo.setPwd(pwd);
		vo.setName(name);
		vo.setEmail(email);
		// vo.setJoinDate는 만들지 않고 전달.

		// 만든 class를 DAO를 불러서 전달하고
		MemberDAO memberDAO = new MemberDAO();
		int ret = memberDAO.updateMember(vo);

		// 정상적으로 DB에 insert되면 완료
		// 사용자에게 정상적으로 입력되었다고 완료 메세지
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if (ret > 0) {
			out.println("<html><head>"
					//+ "<meta http-equiv='Refresh' content='3;url=member'>"
					+ "<script>"
					+ "window.onload = function() { setTimeout(function() { window.location='member' }, 3000); }"
					+ "</script>"
					+ "</head>");
			out.println("<body><p> 정상적으로 수정이 완료되었습니다.</p></body>");
			out.println("</html>");
		} else {
			out.println("<html><head>"
					+ "<meta http-equiv='Refresh' content='3;url=member'>"
					+ "</head>");
			out.println("<body><p> 수정에 오류가 발생했습니다.</p></body>");
			out.println("</html>");
		}
	}

}
