<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" 
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <!-- setAttribute를 통해서 넘어온 success 값을 확인해서 성공인지 실패인지 알려줌 -->
	<c:if test="${result == true }">
   <!--  정상인상태 -->
   		<h1> 로그인 되었습니다.</h1>
   		<meta http-equiv='Refresh' content='2;url=../employee/listEmp'>
	</c:if>
	<c:if test="${result == false }">
   <!--  비 정상인상태 -->
   		<h1> 로그인 오류가 발생했습니다.</h1>
   		<h1> 로그인 창으로 돌아갑니다.</h1>
   		<meta http-equiv='Refresh' content='2;url=loginEmp'>
	</c:if>
</body>
</html>