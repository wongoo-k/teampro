<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=utf-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	<script type="text/javascript" src="resources/index.js"></script>
	<style type="text/css">
		.noti{
			width: 100px;
			height: 50px;
			background: orange;
			display: none;
		}
	</style>
</head>
<body>
<h1>
	Hello world!  
</h1>
<P>  The time on the server is ${serverTime}. </P>
<ul>
	<li>
		<span class="id">${memDTO!=null?memDTO.member_id:"aa"}</span>
<%-- 	  	<input type="radio" name="rdi" value='${memDTO!=null?memDTO.member_id:"aa"}'> --%>
			<input type="radio" name="rdi" value='hk'>
	</li>
</ul>
<input type="text" id="input" />
<button onclick="send()">보내기</button>
<div id="notifications"></div>
</body>
</html>
