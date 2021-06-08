<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	request.setAttribute("id", "kang");
	request.setAttribute("pwd", "1234");
	session.setAttribute("name", "강원구");
	application.setAttribute("email", "kang@email.com");
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward1</title>
</head>
<body>
	<%-- <jsp:forward page="member1.jsp"></jsp:forward> --%>
	<%-- <jsp:include page=""></jsp:include> --%>
	<a href="member1.jsp">member1</a>
</body>
</html>