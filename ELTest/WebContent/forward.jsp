<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	request.setAttribute("address", "서울시 영등포구");
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward</title>
</head>
<body>
	<jsp:forward page="member2.jsp"></jsp:forward>
	<%-- <jsp:include page=""></jsp:include> --%>
</body>
</html>