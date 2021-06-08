<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원정보</h1>
	<form action="listEmp" method="post">
		<input type="submit" value="회원정보조회">		
	</form>
	<button onclick="location.href='../auth/logoutEmp'">로그아웃</button>
</body>
</html>