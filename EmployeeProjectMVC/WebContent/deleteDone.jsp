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
<meta http-equiv='Refresh' content='2;url=listEmp'>
<title>Insert title here</title>
</head>
<body>
  <!-- setAttribute를 통해서 넘어온 success 값을 확인해서 성공인지 실패인지 알려줌 -->
	<c:if test="${success > 0 }">
   <!--  정상인상태 -->
   		<h1> 정상적으로 삭제되었습니다.</h1>   		
	</c:if>
	<c:if test="${success < 1 }">
   <!--  비 정상인상태 -->
   		<h1> 삭제 오류가 발생했습니다.</h1>
   		<h1> 관리자에게 문의하세요.</h1>
	</c:if>
</body>
</html>