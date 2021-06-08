<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새글쓰기</title>
</head>
<body>
<h1>글 작성하기</h1>
<form action="HkController.do" method="post">
<input type="hidden" name="command" value="insert">
<table border="1">
	<tr>
		<th>작성자(ID)</th>
		<td><input type="text" name="id" required="required"></td> <!-- 유효값 처리 : required="required" pattern="[a-z]" -->
	</tr>
	<tr>
		<th>이름</th>
		<td><input type="text" name="name" required="required"></td>
	</tr>
	<tr>
		<th>제목</th>
		<td><input type="text" name="title" required="required"></td>
	</tr>
	<tr>
		<th>내용</th>
		<td><textarea rows="10" cols="60" name="content" required="required"></textarea></td>
	</tr>
	<tr>
		<td align="right" colspan="2">
			<input type="submit" value="등록">
			<input type="button" value="목록" onclick="boardList()">
		</td>
	</tr>
	
</table>
</form>
<script type="text/javascript">
	function boardList() {
		// BOM --> Location객체 : 위치관련 객체
		location.href = "HkController.do?command=boardlist";
	}
</script>
</body>
</html>