package sec04.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GuGuTest
 */
@WebServlet("/gugu")
public class GuguTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GuguTest() {
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

		// 사용자에게 구구단을 입력받는 기능 구현
		// 일반적으로 주소창에 ~/gugu 입력하면 실행되는 method

		// request.setCharacterEncoding("UTF-8"); 주소창에 아무것도 입력받지 않음..
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter(); // return type은 PrinterWriter
		// 타입 변수명 = 값 or 연산식...
		// int a = "a입니다";
		// int a = 10;
		// 클래스타입 인스턴스 = 인스턴스.메소드()
		// PrintWriter out = response.getWriter();

		// 인터페이스타입 인스턴스 = 클래스타입(인터페이스의 구현객체)
		// Type자리에는 8가지 기본형, 4가지 참조형 (배열 , 열거 , 클래스 , 인터페이스)
		// List list = new ArrayList();
		// List<String> list = new ArrayList<String>();
		// int[] --> 이미 int 인걸 알지만, List라는건 순차적이다만 정의가되어 있으니,
		// 그안에 데이터가 int인지 String인지 알지 못하기 때문에 만들때 제네릭이라는 방법으로 정의한다.

		// 자바 3대 특징 : 캡슐화(private,getter,setter) , 다형성 (override, 상속관계에서만 - 구현객체)
		// 상속 (부모의 기능을 물려쓴다.. 대신, 부모를 내가 결정한다)

		//
		out.print("<html><head>");
		out.print("<script src='js/gugu.js'></script>");
		out.print("</head>");
		out.print("<body><form method='POST' action='gugu' onsubmit='return validateForm()'>");
		out.print("원하는 구구단 숫자를 넣으세요 <input type='text' name='dan' id='dan'><br>");
		out.print("<input type='submit' value='전송'>");
		out.print("</form>");
		out.print("</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		// 사용자가 구구단을 입력하면 POST방식으로 서버에게 전달하여 결과물을 받는 형태
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<html><head>");
		out.print("<script src='js/gugu.js'></script>");
		out.print("</head>");
		out.print("<body><form method='POST' action='gugu' onsubmit='return validateForm()'>");
		out.print("원하는 구구단 숫자를 넣으세요 <input type='text' name='dan' id='dan'><br>");
		out.print("<input type='submit' value='전송'>");
		out.print("</form>");
		out.print("</body></html>");
		// int dan = Integer.parseInt(request.getParameter("dan"));

		int dan = 0;
		try {
			dan = Integer.parseInt(request.getParameter("dan"));
		} catch (Exception e) {
			dan = 2;
		} finally {
			if (dan >= 2 && dan <= 9) {

			} else {
				dan = 2;
			}
		}

		out.print("<table border=1 width=800 align=center>");
		out.print("<tr align=center bgcolor='#FFFF66'>");
		out.print("<td colspan=2>" + dan + " 단 출력 </td>");
		out.print("</tr>");
		for (int i = 1; i < 10; i++) {
			if (i % 2 == 0) {
				out.print("<tr align=center bgcolor='#ACFA58'>");
			} else {
				out.print("<tr align=center bgcolor='#81BEF7'>");
			}
			out.print("<td width=400>");
			out.print(dan + " * " + i);
			out.print("</td>");
			out.print("<td width=400>");
			out.print(i * dan);
			out.print("</td>");
			out.print("</tr>");
		}
		out.print("</table>");
	}
}
