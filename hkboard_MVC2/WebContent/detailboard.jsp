<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세보기</title>
</head>
<body>
<h1>게시글 상세보기</h1>
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
		<td>${dto.title}</td>
	</tr>
	<tr>
		<th>내용</th>
		<td><textarea rows="10" cols="60" name="content" readonly>${dto.content}</textarea></td>
	</tr>
	<tr>
		<td align="right" colspan="2">
			<input type="button" value="수정" onclick="updateBoard(${dto.seq})">
			<input type="button" value="삭제" onclick="delBoard(${dto.seq})">
			<input type="button" value="목록" onclick="boardList()">
		</td>
	</tr>
	
</table>
<script type="text/javascript">
	function boardList() {
		// BOM --> Location객체 : 위치관련 객체
		location.href = "HkController.do?command=boardlist";
	}
	
	function updateBoard(seq) {
		location.href = "HkController.do?command=updateForm&seq="+seq;
	}
	
	// 대화창 종류: alert(), confirm(), prompt()
	function delBoard(seq) {
		//location.href = "HkController.do?command=delboard&seq=${dto.seq}"; 
		// ${dto.seq}는 서버쪽에서 실행되는 코드기 때문에 
	    // 클라이언트 코드와 같이 쓰는건 안정적이지 않을수 있음
	    
		if (confirm("정말 삭제하시겠습니까??")) {
			location.href = "HkController.do?command=delboard&seq="+seq;
		}     																 
	}
	
</script>
</body>
</html>