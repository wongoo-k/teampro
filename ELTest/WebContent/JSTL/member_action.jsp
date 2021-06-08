<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	isELIgnored="false"
	import="java.util.*, sec01.ex01.*"	
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:useBean id="m" class="sec01.ex01.MemberVO"/>
<jsp:setProperty property="*" name="m"/>
<%
	MemberDAO memDAO = new MemberDAO();
	memDAO.joinMember(m);
	List membersList = memDAO.listMembers();
	request.setAttribute("membersList", membersList);
%>
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="membersList.jsp" />
</body>
</html>