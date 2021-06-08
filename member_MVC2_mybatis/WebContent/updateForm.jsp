<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원수정하기</title>
</head>
<body>
<h1>회원 수정하기</h1>
<form action="WgController.do" method="post">
<input type="hidden" name="command" value="update">
<input type="hidden" name="id" value="${dto.id}">
<table border="1">
	<tr>
		<th>아이디</th>
		<td>${dto.id}</td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><input type="text" name="pwd" value="${dto.pwd}" required="required"></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><input type="text" name="name" value="${dto.name}" required="required"></td>
	</tr>
	<tr>
		<th>이메일</th>
		<td><input type="email" name="email" value="${dto.email}" required="required"></td>
	</tr>
	<tr>
		<th>가입일</th>
		<td><fmt:formatDate value="${dto.joinDate}" pattern="yyyy년MM월dd일 hh:mm:ss" /></td>
	</tr>
	<tr>
		<td align="right" colspan="3">
			<input type="submit" value="수정완료">
			<input type="button" value="회원목록" onclick="memberList()">
			<input type="button" value="상세보기" onclick="detailMember('${dto.id}')">
		</td>
	</tr>
	
</table>
</form>
<script type="text/javascript">
	function memberList() {
		location.href = "WgController.do?command=memberlist";
	}
	
	function detailMember(id) {
		location.href = "WgController.do?command=detailmember&id="+id;
	}
</script>
</body>
</html>