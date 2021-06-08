<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="util" class="com.hk.board.utils.Util" />
<h1>일정상세보기</h1>
<table border="1">
	<tr>
		<th>ID</th>
		<td>${requestScope.dto.id}</td> <!-- requestScope는 어디서 받아왔는지에 대한 표기. 생략가능 -->
	</tr>
	<tr>
		<th>일정</th>
		<td>
			<jsp:setProperty value="${dto.mdate}" property="toDates" name="util"/>
			<jsp:getProperty property="toDates" name="util"/>
		</td>
	</tr>
	<tr>
		<th>제목</th>
		<td>${dto.title}</td>
	</tr>
	<tr>
		<th>내용</th>
		<td><textarea rows="10" cols="60" readonly="readonly">${dto.content}</textarea> </td>
	</tr>
	<tr>
		<td colspan="2" align="right">
			<input type="button" value="수정" onclick="location.href='updateForm.do?seq=${dto.seq}'" /> 
			<input type="button" value="삭제" onclick="location.href='calMulDel.do?seq=${dto.seq}'" /> 
			<input type="button" value="목록" onclick="location.href='calBoardList.do'" /> <!-- session을 이용하여 간소화 -->
			<input type="button" value="달력" onclick="location.href='calendar.do?year=${ymd.year}&month=${ymd.month}'" /> 
		</td>
	</tr>
</table>
</body>
</html>