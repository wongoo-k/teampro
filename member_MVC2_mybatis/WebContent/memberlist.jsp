<%@page import="com.wg.dtos.wgDTO"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function allSel(val) {
		var chks = document.getElementsByName("chk");
		for (var i=0; i<chks.length; i++) {
			chks[i].checked = val.checked;
		}
	}
</script>
<meta charset="UTF-8">
<title>회원목록</title>
</head>
<%
	List<wgDTO> list = (List<wgDTO>) request.getAttribute("list");
%>
<body>
<h1 align="center">게시판 글목록</h1>
<form action="WgController.do" method="post">
<input type="hidden" name="command" value="muldel">
<table align="center" border="1">
	<col width="50px">
	<col width="100px">
	<col width="100px">
	<col width="200px">
	<tr>
		<th><input type="checkbox" name="all" onclick="allSel(this)"></th>
		<th>아이디</th>
		<th>이름</th>
		<th>가입일</th>
	</tr>
	<%
		for (int i=0; i<list.size(); i++) {
			wgDTO dto =  list.get(i);
	%>
			<tr align="center">
				<td><input type="checkbox" name="chk" value="<%=dto.getId()%>"></td>
				<td><a href="WgController.do?command=detailmember&id=<%=dto.getId()%>"><%=dto.getId()%></a></td>
				<td><%=dto.getName()%></td>		
				<td><fmt:formatDate value="<%=dto.getJoinDate()%>" pattern="yyyy년MM월dd일 hh:mm:ss" /></td> <!-- 대문자MM 은 월, 소문자 mm 은 분. -->
			</tr>				
	<%
		}
	%>
	<tr>
		<td align="right" colspan="4">
			<a href="WgController.do?command=joinmember">회원등록</a>
			<a href="index.jsp">메인</a>
			<input type="submit" value="선택삭제">
		</td>
	</tr>
			
</table>
</form>
</body>
</html>