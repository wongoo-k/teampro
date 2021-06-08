<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"
   isELIgnored="false" 
%>
<!-- tag라이브러리 : tag모음. JAVA코드를 치환하는 역할. -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
request.setCharacterEncoding("UTF-8");
%>    
<html>
<head>
   <meta  charset="UTF-8">
   <title>회원 정보 출력창</title>
<style>
     .cls1 {
       font-size:40px;
       text-align:center;
     }
    
     .cls2 {
       font-size:20px;
       text-align:center;
     }
  </style>
  
</head>
<body>
 <p class="cls1">회원정보</p>
   <table align="center" border="1" >
      <tr align="center" bgcolor="lightgreen">
         <td width="7%" ><b>사원번호</b></td>
         <td width="7%" ><b>이름</b></td>
         <td width="7%" ><b>업무명</b></td>
         <td width="7%"><b>관리자사번</b></td>
         <td width="7%" ><b>입사일</b></td>
         <td width="7%" ><b>연봉</b></td>
         <td width="7%" ><b>커미션</b></td>
         <td width="7%" ><b>부서번호</b></td>
         
   </tr>

<c:choose>
    <c:when test="${ empty employeeList}" >
      <tr>
        <td colspan=5 align="center">
          <b>등록된 회원이 없습니다.</b>
       </td>  
      </tr>
   </c:when>  
   <c:when test="${!empty employeeList }" >
   <!--  servlet에서는 request.setAttribute("employeeList")
       JSP에서는 request.getAttribute("employeeList"); ->List->for
  -->
      <c:forEach  var="emp" items="${employeeList }" >
        <tr align="center">
          <td><a href="update.do?eno=${emp.eno }">${emp.eno }</a></td> <!-- emp.getEno() -->         
          <td>${emp.ename }</td> <!--  emp.getEname() -->
          <td>${emp.job }</td>     
          <td>${emp.manager }</td>     
          <td>${emp.hireDate }</td>     
          <td>${emp.salary }</td>     
          <td>${emp.commission }</td>     
          <td>${emp.dno }</td>     
       </tr>
     </c:forEach>
</c:when>
</c:choose>
   </table>  
 <a href="#"><p class="cls2">회원 가입하기</p></a>
</body>
</html>