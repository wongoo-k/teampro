<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:set var="file1" value="${param.param1}" />

<title>Insert title here</title>
</head>
<body>
	매개변수 1 : <c:out value="${file1}" /><br>
	
	<c:if test="${not empty file1}">
		<img src="${contextPath}/download.do?fileName=${file1}" width=300 height=300 /><br>
	</c:if>	
	<br>
	파일 내려받기 : <br>
	<a href="${contextPath}/download.do?fileName=${file1}"> 파일 내려받기</a><br>
</body>
</html>