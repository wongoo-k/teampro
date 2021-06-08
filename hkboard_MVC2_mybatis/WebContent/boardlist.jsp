<%@page import="com.hk.dtos.HkDto"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	// core, BOM, DOM 3가지 영역으로 나눔
	function allSel(val) {
		// val --> input객체 --> Element객체 안에 구현. 여러 속성들이 있음 그중에 tagName을 사용해봄
		// alert(val.tagName);
		// alert(val);
		// getElementById(), getElementsByTagName(), className 등....
		var chks = document.getElementsByName("chk"); // [chk,chk,chk..] 
		for (var i=0; i<chks.length; i++) {
			chks[i].checked = val.checked;
		}
	}
</script>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<%
	List<HkDto> list = (List<HkDto>) request.getAttribute("list"); /* 캐스팅 */
%>
<body>
<h1 align="center">게시판 글목록</h1>
<form action="HkController.do" method="post">
<input type="hidden" name="command" value="muldel">
<table align="center" border="1">
	<col width="50px">
	<col width="50px">
	<col width="100px">
	<col width="300px">
	<col width="200px">
	<tr>
		<th><input type="checkbox" name="all" onclick="allSel(this)"></th>
		<th>번호</th>
		<th>작성자</th>
		<th>제목</th>
		<th>작성일</th>
	</tr>
	<%
		for (int i=0; i<list.size(); i++) {
			HkDto dto =  list.get(i);
	%>
			<tr align="center">
				<td><input type="checkbox" name="chk" value="<%=dto.getSeq()%>"></td>
				<td><%=dto.getSeq()%></td>
				<td><%=dto.getId()%></td>
				<td><a href="HkController.do?command=detailboard&seq=<%=dto.getSeq()%>"><%=dto.getTitle()%></a></td>
				<td><fmt:formatDate value="<%=dto.getRegdate()%>" pattern="yyyy년MM월dd일 hh:mm:ss" /></td> <!-- 대문자MM 은 월, 소문자 mm 은 분. -->
			</tr>				
	<%
		}
	%>
	<tr>
		<td align="right" colspan="5">
			<a href="HkController.do?command=insertboard">글쓰기</a>
			<a href="index.jsp">메인</a>
			<input type="submit" value="선택삭제">
		</td>
	</tr>
			
</table>
</form>
</body>
</html>