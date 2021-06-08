package sec02.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalculatorServlet
 */
@WebServlet("/calc")
public class CalculatorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalculatorServlet() {
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
		PrintWriter out = response.getWriter();
		
		out.println("		<html>\r\n" + 
				"		<head>\r\n" + 
				"		</head>\r\n" + 
				"		<body>\r\n" + 
				"			<form action=\"calc\" method=\"post\">\r\n" + 
				"				<input type=\"text\" name=\"num1\"> + \r\n" + 
				"				<input type=\"text\" name=\"num2\"> =\r\n" + 
				"				<input type=\"text\" name=\"sum\" value=\"0\"> &nbsp;&nbsp;\r\n" + 
				"				<input type=\"submit\" value=\"계산\">\r\n" + 
				"			</form>				\r\n" + 
				"		</body>\r\n" + 
				"		</html>");		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		request.setCharacterEncoding("UTF-8");
		
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		
		int parseNum1 = Integer.parseInt(num1);
		int parseNum2 = Integer.parseInt(num2);
		
		int sum = parseNum1 + parseNum2;
		
		// 히스토리 기록 한줄로..
		String history = request.getParameter("sumhistory");
		history = history + "\r\n" + num1 + "+" + num2 + "=" + sum;
	
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.println("	<html>\r\n" + 
				"		<head>\r\n" + 
				"		</head>\r\n" + 
				"		<body>\r\n" + 
				"			<form method='post' action='calc'>\r\n" + 
				"				<input type='text' name='num1' value='"+parseNum1+"'> +\r\n" + 
				"				<input type='text' name='num2' value='"+parseNum2+"'> =\r\n" + 
				"				<input type='text' name='sum' value='"+sum+"'> &nbsp;&nbsp;\r\n" + 
				"				<input type='submit' value='계산'>\r\n" + 
				"				<br><textarea name='sumhistory'>"+history+"</textarea>" +
				"			</form>\r\n" + 
				"		</body>\r\n" + 
				"		</html>");
	}

}
