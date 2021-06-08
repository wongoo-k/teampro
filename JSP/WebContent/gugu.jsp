<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	//int dan = Integer.parseInt(request.getParameter("dan"));
    
%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr align="center" bgcolor="#FFFF66">
			<td>2단 출력</td><td>3단 출력</td>
			<td>4단 출력</td><td>5단 출력</td>			
	    </tr>
	    <%
	    	for(int i=1; i<10; i++){
	    %>
	    <%
	    	if(i%2==1){
	    %>
	    	<tr align="center" bgcolor="#CCFF66">
	    <%
	    	}else{
	    %>	
	    	<tr align="center" bgcolor="#CCCCFF">
	    <%
	    	}
	    %>	
	    		<td>
	    			2 * <%=i %> = <%=i*2 %>
	    		</td>	    		
	    		<td>
	    			3 * <%=i %> = <%=i*3 %>
	    		</td>	    		
	    		<td>
	    			4 * <%=i %> = <%=i*4 %>
	    		</td>	    		
	    		<td>
	    			5 * <%=i %> = <%=i*5 %>
	    		</td>	    		
	    	</tr>
	    <%
	    	}
	    %>
	</table>
	<br>
	<br>
	<table border="1">
		<tr align="center" bgcolor="#FFFF66">
			<td>6단 출력</td><td>7단 출력</td>
			<td>8단 출력</td><td>9단 출력</td>			
	    </tr>
	    <%
	    	for(int i=1; i<10; i++){
	    %>
	    <%
	    	if(i%2==1){
	    %>
	    	<tr align="center" bgcolor="#CCFF66">
	    <%
	    	}else{
	    %>	
	    	<tr align="center" bgcolor="#CCCCFF">
	    <%
	    	}
	    %>	
	    		<td>
	    			6 * <%=i %> = <%=i*6 %>
	    		</td>	    		
	    		<td>
	    			7 * <%=i %> = <%=i*7 %>
	    		</td>	    		
	    		<td>
	    			8 * <%=i %> = <%=i*8 %>
	    		</td>	    		
	    		<td>
	    			9 * <%=i %> = <%=i*9 %>
	    		</td>	    	
	    	</tr>
	    <%
	    	}
	    %>
	</table>
</body>
</html>