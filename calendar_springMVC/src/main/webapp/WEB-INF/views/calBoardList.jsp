<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="com.hk.board.dtos.CalDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>       
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	function allChk(val) {
		var chks = document.getElementsByName("seq");
		for (var i=0; i<chks.length; i++) {
			chks[i].checked = val.checked;
		}
	}
	
	$(function(){
		$("form").submit(function(){
			var bool = true;
			var count = $(this).find("input[name=seq]:checked").length;
			if (count == 0) {
				alert("최소 하나이상 체크하세요!!");
				bool = false;
			} else if (confirm("정말 삭제하시겠습니까??")) {
				bool = true;
			} else {
				bool = false;
			}
		
			return bool;
		});	
	
		var chks = document.getElementsByName("seq");
		for (var i = 0; i < chks.length; i++) {
			chks[i].onclick = function() { 
				var checkedObjs = document.querySelectorAll("input[name=seq]:checked");
				if (checkedObjs.length == chks.length) {
					document.getElementsByName("all")[0].checked = true;
				} else {
					document.getElementsByName("all")[0].checked = false;
				}
			}
		}	
	});
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	List<CalDto> list = (List<CalDto>)request.getAttribute("list");	
%>
<body>
<h1>일정목록보기</h1>
<form action="calMulDel.do" method="post">
<input type="hidden" name="year" value="${param.year}" />
<input type="hidden" name="month" value="${param.month}" />
<input type="hidden" name="date" value="${param.date}" />
<table border="1">
	<col width="50px">
	<col width="50px">
	<col width="300px">
	<col width="250px">
	<col width="250px">
	<tr>
		<th><input type="checkbox" name="all" onclick="allChk(this)" /></th>
		<th>번호</th>
		<th>제목</th>
		<th>일정</th>
		<th>작성일</th>
	</tr>
	<%
		if (list == null || list.size() == 0) {
			out.print("<tr><td colspan='5'>-----작성된 일정이 없습니다.-----</tr></td>");
		} else {
			for (CalDto dto : list) {
				%>
				<tr align="center">
					<td><input type="checkbox" name="seq" value="<%=dto.getSeq()%>" /></td>
					<td><%=dto.getSeq()%></td>
					<td><a href="calDetail.do?seq=<%=dto.getSeq()%>"><%=dto.getTitle()%></a></td>
					<td><%=toDates(dto.getMdate())%></td>
					
					<td><fmt:formatDate value="<%=dto.getRegdate()%>" pattern="yyyy년MM월dd일 hh:mm:ss" /></td>
				</tr>
				<%
			}
		}
	%>
	<tr>
		<td align="center">
			<input type="submit" value="삭제" />
		</td>
		<td colspan="4" align="right" >	<!-- sessionScope 생략가능 -->
			<a href="calendar.do?year=${sessionScope.ymd.year}&month=${sessionScope.ymd.month}">달력보기</a>		
		</td>
	</tr>
</table>
</form>
<%!
	public String toDates(String mdate) {
	
		// 문자열 --> date타입으로 변환 --> 문자열을 date패턴으로수정 -- > date타입으로 변환
		// 날짜형식: yyyy-MM-dd hh:mm:ss
		String m = mdate.substring(0, 4)+"-"
				 + mdate.substring(4, 6)+"-"
				 + mdate.substring(6, 8)+" "
				 + mdate.substring(8, 10)+":"
				 + mdate.substring(10)+":00";
				 
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일HH시mm분");
		Timestamp tm = Timestamp.valueOf(m); // 문자열을 Date타입으로 변환
		return sdf.format(tm);
	}
%>
</body>
</html>