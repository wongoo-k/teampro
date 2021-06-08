<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="udate.do" method="post">
		<input type="text" name="eno" value="${vo.eno }" readonly>
		<input type="submit" value="수정">
		<input type="reset" value="리셋">
	</form>
</body>
</html>