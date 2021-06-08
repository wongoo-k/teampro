<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
function confirmId() {        
	var r = confirm("정말 삭제하시겠습니까?");
		if(r == true) {
		document.getElementById("myForm").submit();
		} else {
			window.location="listEmp"
		}
}
	window.onload = function() {
		confirmId();
	}
</script>
<title>Insert title here</title>
</head>
<body>
	<form action="deleteEmp" method="post" id="myForm">
		<input type="hidden" name="eno" value="${emp.eno}">
	</form>
	
</body>
</html>