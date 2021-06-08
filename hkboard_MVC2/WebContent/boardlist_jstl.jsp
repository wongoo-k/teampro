<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글목록</title>
</head>
<body>
<h1 align="center">게시판글목록</h1>
<table align="center" border="1">
	<col width="50px">
	<col width="50px">
	<col width="100px">
	<col width="300px">
	<col width="100px">
	<tr>
		<th><input type="checkbox" name="all" onclick="allSel()"></th>
		<th>번호</th>
		<th>작성자</th>
		<th>제목</th>
		<th>작성일</th>
	</tr>
		<c:forEach items="${requestScope.list}" var="dto">
			<tr align="center">
				<td><input type="checkbox" name="chk" value="${dto.seq}"></td>
				<td>${dto.seq}</td>
				<td>${dto.id}</td>
				<td>${dto.title}</td>
				<td>${dto.regdate}</td>
			</tr>				
		</c:forEach>
	<tr>
		<td align="right" colspan="5">
			<a href="HkController.do?command=insertboard">글쓰기</a>
			<a href="index.jsp">메인</a>
		</td>
	</tr>
			
</table>
</body>
</html>