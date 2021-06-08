package signup;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SignupServlet
 */
@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SignupServlet() {
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
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 1. request(Client)에서 사용자가 입력한
		// doGet(request, response);
		request.setCharacterEncoding("UTF-8"); // 나중에는 개념만 남고 소스/설정은 다른곳으로 감.
		String id = request.getParameter("id");
		System.out.println("아이디 : " + id);

		String pw = request.getParameter("pw");
		System.out.println("비밀번호 : " + pw);

		String name = request.getParameter("name");
		System.out.println("이름 : " + name);

		String date = request.getParameter("date");
		System.out.println("생년월일 : " + date);

		String intro = request.getParameter("intro");
		System.out.println("자기소개 : " + intro);

		System.out.println("doPost 호출");
		// 2. 비지니스 로직 처리하기 (DB에 입력, 외부연계..)
		// -- 지금은 없음

		// 3. response(Client)에 처리된 결과 혹은 내가 보내고 싶은

		response.setContentType("application/xml; charset=UTF-8");
		// html을 만들어서 보내야하는데.. 아직은 그냥 text만 혹은 html중 일부만 보냄
		response.getWriter().append("<html><head>")
							//.append("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/signup.css\">")							
							.append("</head>")
							.append("<body><table id=\"table\" style=\"width:50%\" border=\"1\">")
							.append("<tr><th>아이디</th><th>비밀번호</th><th>이름</th><th>생년월일</th><th>자기소개</th></tr>")
							.append("<tr><td>" + id + "</td><td>" + pw + "</td><td>" + name + "</td><td>" + date + "</td><td>" + intro + "</td></tr>")
							.append("</table></body></html>");
		
		  /*String html = "";
	      
	      html = "<html><head>";
	      html += "<script src='js/signup.js'></script>";
	      html += "</head>";
	      html += "<body><table border='1'>";
	      html += "<tr><td>아이디</td><td>" +id +"</td></tr>";
	      html += "<tr><td>패스워드</td><td>" +pw +"</td></tr>";
	      html += "</table></body></html>";
	      // 이렇게 하는게 불편해서 나온게.. JSP (Java Server Pages)
	      response.getWriter().append(html);*/


	}

}
