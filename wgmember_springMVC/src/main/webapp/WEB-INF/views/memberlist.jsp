<%@page import="com.wg.mem.dtos.WgDto"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	function allSel(val) {
		var chks = document.getElementsByName("chk");
		for (var i=0; i<chks.length; i++) {
			chks[i].checked = val.checked;
		}
	}
	
	$(function(){ // window.onload=fucntion(){} // page가 로딩되는 작업을 이벤트로 인식
		$("form").submit(function(){
			var bool = true;
			var count = $(this).find("input[name=chk]:checked").length;
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
	
		// 체크박스 처리: 전체선택 체크박스 체크/해제를 자동으로 하는 기능
		var chks = document.getElementsByName("chk");
		for (var i = 0; i < chks.length; i++) {
			chks[i].onclick = function() { // 체크박스에서 클릭이벤트가 발생하면 함수를 실행해라
				var checkedObjs = document.querySelectorAll("input[name=chk]:checked");
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
<title>회원목록</title>
</head>
<%
	List<WgDto> list = (List<WgDto>) request.getAttribute("list");
%>
<body>
<h1 align="center">회원목록</h1>
<form action="muldel.do" method="post">
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
	if(list == null || list.size() == 0) {
		out.print("<tr align='center'><td colspan='5'>----------등록된 회원이 없습니다.----------</td></tr>");		
			} else {
		for (int i=0; i<list.size(); i++) {
			WgDto dto =  list.get(i);
	%>
			<tr align="center">
				<td><input type="checkbox" name="chk" value="<%=dto.getId()%>"></td>
				<td><a href="detailmember.do?id=<%=dto.getId()%>"><%=dto.getId()%></a></td>
				<td><%=dto.getName()%></td>		
				<td><fmt:formatDate value="<%=dto.getJoinDate()%>" pattern="yyyy년MM월dd일 hh:mm:ss" /></td> <!-- 대문자MM 은 월, 소문자 mm 은 분. -->
			</tr>				
	<%
			}
		}
	%>
	<tr>
		<td align="right" colspan="4">
			<a href="joinmember.do">회원등록</a>
			<a href=".">메인</a>
			<input type="submit" value="선택삭제">
		</td>
	</tr>
			
</table>
</form>
</body>
</html>