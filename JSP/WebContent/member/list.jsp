<%@ page language="java" contentType="text/html; charset=UTF-8"
   import="member.*"
   import="java.util.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
      String user_id = (String) session.getAttribute("login.id");
      if(session == null || user_id == null) { 
         response.sendRedirect("../auth/login");
         return ;
      }            
      MemberDAO memberDAO = new MemberDAO();
      List<MemberVO> list = memberDAO.listMembers();
      response.setContentType("text/html; charset=UTF-8");
%>      
    <table border='1'>  
      <tr> 
      	<td colspan=6> <%=user_id %> / <a href='../auth/logout'>로그아웃</a> </td></tr>
      <tr>
      	<td>아이디</td>
      	<td>비밀번호</td>
      	<td>이름</td>
      	<td>이메일</td>
      	<td>가입일</td>
      	<td>삭제</td>
      </tr>     

<%      

      for(int i=0;i<list.size();i++) { 
         MemberVO memberVO = list.get(i);
         String id = memberVO.getId();
         String pwd = memberVO.getPwd();
         String name = memberVO.getName();
         String email = memberVO.getEmail();
         Date joinDate = memberVO.getJoinDate();
%>
         <tr>
         	<td><a href='update?id=<%=id%>'><%=id %></a></td>
         	<td><%=pwd %></td>
        	<td><%=name %></td><td><%=email %></td><td><%=joinDate %></td>
        	<td><a href='delete?id=<%=id %>'>삭제</a></td>
        </tr>
<%      
      }
%>

      </table>
</body>
</html>