<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세보기</title>
</head>
<body>
<h1>회원 상세보기</h1>
<table border="1">
	<tr>
		<th>아이디</th>
		<td>${dto.id}</td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td>${dto.pwd}</td>
	</tr>
	<tr>
		<th>이름</th>
		<td>${dto.name}</td>
	</tr>
	<tr>
		<th>이메일</th>
		<td>${dto.email}</td>
	</tr>
	<tr>
		<th>가입일</th>
		<td><fmt:formatDate value="${dto.joinDate}" pattern="yyyy년MM월dd일 hh:mm:ss" /></td>
	</tr>
	<tr>
		<td align="right" colspan="3">
			<input type="button" value="회원수정" onclick="updateMember('${dto.id}')">
			<input type="button" value="회원삭제" onclick="delMember('${dto.id}')">
			<input type="button" value="회원목록" onclick="memberList()">
		</td>
	</tr>
	
</table>
<script type="text/javascript">
	function memberList() {
		location.href = "memberlist.do";
	}
	
	function updateMember(id) {
		location.href = "updateForm.do?id="+id;
	}
	
	function delMember(id) {
		if (confirm("정말 삭제하시겠습니까??")) {
			location.href = "delmember.do?id="+id;
		}     																 
	}	
</script>
</body>
</html>