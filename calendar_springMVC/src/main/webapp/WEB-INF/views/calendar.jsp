<%@page import="com.hk.board.dtos.CalDto"%>
<%@page import="java.util.List"%>
<%@page import="com.hk.board.utils.Util"%>
<%@page import="com.sun.javafx.css.Declaration"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js" ></script>
<style type="text/css">
	#calendar {
		border-collapse: collapse; /* 테두리를 실선으로 표현한다. */
		border: 1px solid gray;
	}
	
	#calendar td {
		width: 100px;
		height: 100px;
		text-align: left;
		vertical-align: top;
	}
	
	a {
		text-decoration: none;
	}
	
	img {
		width: 18px; height: 18px;
	}
	
	#container {
/* 		border: 1px solid red; */
		width: 750px;
		margin: 0 auto;
	}
	
	#container td > p {
		font-size: 12px;
		margin-bottom: 1px;
		background-color: silver;
	}
	
	.cPreview {
		position: absolute;
		left: -38px;
		top: -35px;
		background-color: pink;
		width: 40px;
		height: 40px;
		text-align: center;
		line-height: 40px;
		font-weight: bold;
		border-radius: 20px 20px 1px 20px;
	}
	
	td {
		position: relative;
	}
	
</style>
<script type="text/javascript">

	// 값이 1자리이면 두자리로 만들어 주는 기능
	function isTwo(str) {
		return str.length < 2 ? "0" + str : str;
	}

	// $(function(){}) --> window.onload = function(){}
	$(function() {
		$(".countView").hover(function(){
			var aObj = $(this);
			var year = $(".y").text().trim(); // 년
			var month = $(".m").text().trim(); // 월
			var date = $(this).text().trim(); // 일 (this 는 hover가 실행되는 조건. 여기서는 커서를 calendar의 date 에 올렸을때.)
			var yyyyMMdd = year +isTwo(month) + isTwo(date);
// 			alert(yyyyMMdd);
			
			$.ajax({
				method: "post",
				url: "calCountAjax.do",
				data: {"yyyyMMdd": yyyyMMdd}, // 기본적으로 "k": V 방식이지만 yyyyMMdd="+yyyyMMdd 로도 쓸수있음.
				dataType: "text", // 서버로부터 받는 값의 타입
				async : false, // $.ajax() 가 기본이 비동기식 실행이므로 false로 설정하여 동기식으로 바꿈.(먼저 실행됨을 방지)
				success: function(val) {
// 					alert("서버통신성공!! and val:" + val);
					aObj.after("<div class='cPreview'>"+val+"</div>");
				},
				error: function() {
					alert("서버통신실패!!");
				}
			});
		},function(){
			$(".cPreview").remove(); // 마우스가 나가면 해당 엘리먼트를 삭제한다.
		});
	});
</script>

</head>
<%

	// 달력의 날짜를 바꾸기 위해 전달된 year와 month 파라미터를 받는다.
	String paramYear = request.getParameter("year");
	String paramMonth = request.getParameter("month");

	Calendar cal = Calendar.getInstance(); // new (x)
	int year = cal.get(Calendar.YEAR); // 현재 년도를 구함
	int month = cal.get(Calendar.MONTH)+1; // 현재 월을 구함 (0월~11월) 출력할땐 +1, 요청할땐 -1
	
	if (paramYear != null) {
		year = Integer.parseInt(paramYear);
	}
	
	if (paramMonth != null) {
		month = Integer.parseInt(paramMonth);
	}
	// 월이 증가하다가 12보다 커지면 13,14.. 넘어가는 현상을 처리
	if (month > 12) {
		month = 1; // 1월로 변경
		year++; // 년도는 다음해로 넘어가니까 +1년 증가시키기
	}
	
	if (month < 1) {
		month = 12;
		year--;
	}
	
	// 현재 월의 1일에 대한 요일 구하기: 1~7 --> 1(일요일), 2(월요일)..~7(토요일)
	// set(year, month-1, 1) --> month-1 : calendar기준(0~11), 우리기준(1~12)
	cal.set(year, month-1, 1); // 원하는 날짜로 넣어준다
	int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
	
	// 현재 월의 마지막 날 구하기
	int lastDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	
	// 해당 달의 일정 받기
	List<CalDto> clist = (List<CalDto>)request.getAttribute("clist");
%>
<body>
<div id="container" >
<h1>일정달력보기</h1>
<table border="1" id="calendar">
	<caption>
		<a href="calendar.do?year=<%=year-1%>&month=<%=month%>">◁</a>
		<a href="calendar.do?year=<%=year%>&month=<%=month-1%>">◀</a>
		<span class="y"><%= year %></span>년 <span class="m"><%= month %></span>월		
		<a href="calendar.do?year=<%=year%>&month=<%=month+1%>">▶</a>
		<a href="calendar.do?year=<%=year+1%>&month=<%=month%>">▷</a>
	</caption>
	<tr>
		<th>일요일</th>
		<th>월요일</th>
		<th>화요일</th>
		<th>수요일</th>
		<th>목요일</th>
		<th>금요일</th>
		<th>토요일</th>
	</tr>
	<tr>
		<%  // 달력에 시작하는 공백을 출력한다.
			// 공백출력하는 for문
			for (int i=0; i<dayOfWeek-1; i++) {
				out.print("<td>&nbsp;</td>");
			}
			// 날짜 출력하는 for문
			for (int i=1; i<=lastDay; i++) {
				%>
				<td>
					<a class="countView" style="color: <%=Util.fontColor(dayOfWeek, i) %>" href="calBoardList.do?year=<%= year %>&month=<%= month %>&date=<%= i %>"><%= i %></a>
					<a href="insertCalForm.do?year=<%= year %>&month=<%= month %>&date=<%= i %>">
						<img alt="pen" src="resources/img/pen.png">
					</a>
					<%=getCalViewList(i, clist) %>
				</td>
				<%
				// 행을 바꿔주기 --> 현재일(i)이 토요일인지 확인 --> 공백수+현재날짜 한 값이 7로 나눠떨어지면 7의배수
				if ((dayOfWeek-1+i)%7 == 0) {
					out.print("</tr><tr>");
				}
			}
			// 나머지 공백 출력하는 for문
			int countNbsp = (7-(dayOfWeek-1+lastDay)%7)%7;
			for (int i=0; i<countNbsp; i++) {
				out.print("<td>&nbsp;</td>");
			}
		%>
				
	</tr>
</table>
</div>
<%! // Declaration: jsp에서 java method 선언가능 
	public String getCalViewList(int i, List<CalDto> clist){
		String d = Util.isTwo(i+"");// mdate--> "05" 
		String cList = "";//달력에 출력해줄 일정제목을 저장할 변수
		for(CalDto calDto:clist){
			if(calDto.getMdate().substring(6, 8).equals(d)){
				cList += "<p>"
					  + (calDto.getTitle().length() > 7 ? calDto.getTitle().substring(0,7) + ".." : calDto.getTitle())
					  + "</p>";
			}
		}	
		return cList;//결과: "<p>title</p><p>title</p>"
	}


// 	public String fontColor(int dayOfWeek, int i) {
// 		String color = "";
// 		if ((dayOfWeek-1+i)%7 == 0) { // 토요일인 경우
// 			color = "blue";
// 		} else if ((dayOfWeek-1+i)%7 == 1) { // 일요일인 경우
// 			color = "red";
// 		} else {
// 			color = "black"; // 나머지
// 		}
// 		return color;
// 	}
%>

</body>
</html>