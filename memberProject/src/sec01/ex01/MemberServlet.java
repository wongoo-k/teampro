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
      List<MemberVO> list = dao.listMembers();

      
      for(int i=0;i<list.size();i++) { 
         //System.out.println(list.get(i).getId());
         System.out.println(list.get(i).toString());
      }
      
      // View (사용자 화면 생성 역할)
      response.setContentType("text/html; charset=UTF-8");
      PrintWriter out = response.getWriter();
      
      // 내가 만들려고 하는 html을 미리 만들어 놓음.
      // table을 이용해서 만들 예정 .. (<table><tr><td></td></tr></table>
      out.println("<html><head></head>");
      out.println("<body><table border='1'>");
      out.println("<tr><td>아이디</td><td>비밀번호</td><td>이름</td><td>이메일</td><td>가입일</td><td>삭제</td></tr>");        
      
      // 이 부분은 DB에 불러오는 반복이 필요한 부분 .
      for(int i=0;i<list.size();i++) { 
         // for문을 통해서 list에 들어있는 Class(MemberVO)를 하나씩 꺼내
         // 그 클래스 안에 있는 데이터를 getter를 이용하여 최종 꺼낸다.
         MemberVO memberVO = list.get(i);
         String id = memberVO.getId(); // 컬럼명인데, 대소문자 구별 안하다.
         String pwd = memberVO.getPwd();
         String name = memberVO.getName();
         String email = memberVO.getEmail();
         Date joinDate = memberVO.getJoinDate();
         out.println("<tr><td><a href='update?id="+id+"'>"+ id + "</a></td><td>"+ pwd+"</td>");
         out.println("<td>"+name+"</td><td>"+email+"</td><td>"+joinDate +"</td><td>");
         out.println("<a href='delete?id="+id+"'>삭제</a>");
         out.println("</td></tr>");
       
      }   
      out.println("</table></body></html>");
   }
}