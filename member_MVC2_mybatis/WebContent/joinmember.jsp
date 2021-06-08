<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록</title>
</head>
<body>
<h1>회원등록</h1>
<form action="WgController.do" method="post">
<input type="hidden" name="command" value="join">
<table border="1">
	<tr>
		<th>아이디</th>
		<td><input type="text" name="id" required="required"></td> <!-- 유효값 처리 : required="required" pattern="[a-z]" -->
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><input type="password" name="pwd" required="required"></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><input type="text" name="name" required="required"></td>
	</tr>
	<tr>
		<th>이메일</th>
		<td><input type="email" name="email" required="required"></td>
	</tr>
	<tr>
		<td align="right" colspan="4">
			<input type="submit" value="회원등록">
			<input type="button" value="회원목록" onclick="memberList()">
		</td>
	</tr>
	
</table>
</form>
<script type="text/javascript">
	function memberList() {
		// BOM --> Location객체 : 위치관련 객체
		location.href = "WgController.do?command=memberlist";
	}
</script>
</body>
</html>