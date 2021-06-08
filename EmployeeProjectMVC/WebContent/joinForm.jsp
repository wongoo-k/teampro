<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	isELIgnored="false"    
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="kr">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>사원등록</title>

    <!-- Custom fonts for this template-->
    <link href="${contextPath}/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${contextPath}/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">사원등록</h1>
                            </div>
                            <form action="${contextPath}/employee/joinEmp" method="post" class="user">
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="number" name="eno" class="form-control form-control-user" id="exampleFirstName"
                                            placeholder="사원번호">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" name="ename" class="form-control form-control-user" id="exampleLastName"
                                            placeholder="이름">
                                    </div>
                                </div>
                               <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" name="job" class="form-control form-control-user" id="exampleFirstName"
                                            placeholder="업무명">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="number" name="manager" class="form-control form-control-user" id="exampleLastName"
                                            placeholder="관리자번호">
                                    </div>
                                </div><div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="number" name="salary" class="form-control form-control-user" id="exampleFirstName"
                                            placeholder="연봉">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="number" name="commission" class="form-control form-control-user" id="exampleLastName"
                                            placeholder="커미션">
                                    </div>
                                </div><div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="number" name="dno" class="form-control form-control-user" id="exampleFirstName"
                                            placeholder="부서번호">
                                    </div>                        
                                </div>
                                <input type="submit" class="btn btn-primary btn-user btn-block" value="등록하기">                                                            
                            </form>
                            <hr>                          
                            <div class="text-center">
                                <a class="small" href="${contextPath}/loginForm.jsp">로그인 페이지로 이동</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="${contextPath}/vendor/jquery/jquery.min.js"></script>
    <script src="${contextPath}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${contextPath}/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${contextPath}/js/sb-admin-2.min.js"></script>

</body>

</html>
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원등록</title>
</head>
<body>
	<form action="${contextPath}/employee/joinEmp" method="post">
		<h1 style="text-align:center">사원등록</h1>	
		<table align="center">
			<tr>
				<td width="200">
					<p align="right">사원번호
				</td>
				<td width="400"><input type="number" name="eno"></td>
			</tr>
			<tr>
				<td width="200">
					<p align="right">이름
				</td>
				<td width="400"><input type="text" name="ename"></td>
			</tr>
			<tr>
				<td width="200">
					<p align="right">업무명
				</td>
				<td width="400"><input type="text" name="job"></td>
			</tr>
			<tr>
				<td width="200">
					<p align="right">관리자사번
				</td>
				<td width="400"><input type="number" name="manager"></td>
			</tr>
			<tr>
				<td width="200">
					<p align="right">연봉
				</td>
				<td width="400"><input type="number" name="salary"></td>
			</tr>
			<tr>
				<td width="200">
					<p align="right">커미션
				</td>
				<td width="400"><input type="number" name="commission"></td>
			</tr>
			<tr>
				<td width="200">
					<p align="right">부서번호
				</td>
				<td width="400"><input type="number" name="dno"></td>
			</tr>
			<tr>
				<td width="200">
					<p>&nbsp;</p>
				</td>
				<td width="400">
					<input type="submit" value="등록하기">
					<input type="reset" value="다시입력">
				</td>
			</tr>					
		</table>
	</form>
	
</body>
</html> --%>