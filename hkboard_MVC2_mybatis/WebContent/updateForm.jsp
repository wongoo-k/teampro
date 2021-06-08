<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글수정하기</title>
</head>
<body>
<h1>게시글 수정하기</h1>
<form action="HkController.do" method="post">
<input type="hidden" name="command" value="update">
<input type="hidden" name="seq" value="${dto.seq}">
<table border="1">
	<tr>
		<th>작성자(ID)</th>
		<td>${dto.id}</td>
	</tr>
	<tr>
		<th>이름</th>
		<td>${dto.name}</td>
	</tr>
	<tr>
		<th>제목</th>
		<td><input type="text" name="title" value="${dto.title}" required="required"></td>
	</tr>
	<tr>
		<th>내용</th>
		<td><textarea rows="10" cols="60" name="content" required="required">${dto.content}</textarea></td>
	</tr>
	<tr>
		<td align="right" colspan="2">
			<input type="submit" value="수정완료">
			<input type="button" value="목록" onclick="boardList()">
			<input type="button" value="상세보기" onclick="detailBoard(${dto.seq})">
		</td>
	</tr>
	
</table>
</form>
<script type="text/javascript">
	function boardList() {
		// BOM --> Location객체 : 위치관련 객체
		location.href = "HkController.do?command=boardlist";
	}
	
	function detailBoard(seq) {
		location.href = "HkController.do?command=detailboard&seq="+seq;
	}
</script>
</body>
</html>