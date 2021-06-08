<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, employee.*"
    isELIgnored="false"
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

    <title>사원 리스트</title>

    <!-- Custom fonts for this template -->
    <link href="${contextPath}/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${contextPath}/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="${contextPath}/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<style>
	.cls1 {
		font-size: 40px;
		text-align: center;
	}
	.cls2 {
		font-size: 20px;
		text-align: center;
	}
</style>
</head>
<body>
<%-- 	<p class="cls1">회원정보</p>
	<table align="center" border="1">
		<tr align="center" bgcolor="lightblue">
			<td width="7%"><b>사원번호</b></td>
			<td width="7%"><b>이름</b></td>
			<td width="7%"><b>업무명</b></td>
			<td width="7%"><b>관리자사번</b></td>
			<td width="7%"><b>입사일</b></td>
			<td width="7%"><b>연봉</b></td>
			<td width="7%"><b>커미션</b></td>
			<td width="7%"><b>부서번호</b></td>
			<td width="7%"><b>수정</b></td>
			<td width="7%"><b>삭제</b></td>
		</tr>
		
		<c:choose>
			<c:when test="${list == null}">
				<tr>
					<td colspan=8>
						<b>등록된 회원이 없습니다.</b>
					</td>
				</tr>
			</c:when>			
			<c:when test="${list != null}">
				<c:forEach var="emp" items="${list}">
					<tr align="center">
						<td>${emp.eno }</td>
						<td>${emp.ename }</td>
						<td>${emp.job }</td>
						<td>${emp.manager }</td>
						<td>${emp.hireDate }</td>
						<td>${emp.salary }</td>
						<td>${emp.commission }</td>
						<td>${emp.dno }</td>
						<td><a href="${contextPath}/employee/updateEmp?eno=${emp.eno}">수정</a></td>
						<td><a href="${contextPath}/employee/deleteEmp?eno=${emp.eno}">삭제</a></td>
					</tr>
				</c:forEach>
			</c:when>
		</c:choose>			
	</table> 
	<a href="${contextPath}/employee/joinEmp">
		<p class="cls2">사원 등록하기</p>
	</a>--%>
	<div class="container-fluid">           
	<!-- DataTales Example -->
    <div class="card shadow mb-4">
    <div class="card-header py-3">
    	<h6 class="m-0 font-weight-bold text-primary">사원 리스트</h6>
    </div>
    <div class="card-body">
    <div class="table-responsive">
    <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
    <div class="row">
    <div class="col-sm-12 col-md-6">
    <div class="dataTables_length" id="dataTable_length">
    <label>Show 
    <select name="dataTable_length" aria-controls="dataTable" class="custom-select custom-select-sm form-control form-control-sm">
    <option value="10">10</option>
    <option value="25">25</option>
    <option value="50">50</option>
    <option value="100">100</option>
    </select> entries
    </label>
    </div>
    </div>
    <div class="col-sm-12 col-md-6">
    <div id="dataTable_filter" class="dataTables_filter">
    <label>Search:
    <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable">
    </label>
    </div>
    </div>
    </div>
    <div class="row"><div class="col-sm-12">
    <table class="table table-bordered dataTable" id="dataTable" width="100%" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
    	<thead>
        	<tr role="row">
            	<th class="sorting_asc" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 57px;">이름</th>                            
                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 49px;">사원번호</th>
                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 31px;">업무명</th>
                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 68px;">관리자번호</th>
                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 67px;">입사일</th>
                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 68px;">연봉</th>
                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 67px;">커미션</th>
                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 62px;">부서번호</th>
                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 67px;">수정</th>
                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 62px;">삭제</th>
        	</tr>
        </thead>
        <tfoot>
        	<tr>
        		<th rowspan="1" colspan="1">이름</th>
            	<th rowspan="1" colspan="1">사원번호</th>
            	<th rowspan="1" colspan="1">업무명</th>
            	<th rowspan="1" colspan="1">관리자번호</th>
            	<th rowspan="1" colspan="1">입사일</th>
            	<th rowspan="1" colspan="1">연봉</th>
            	<th rowspan="1" colspan="1">커미션</th>
             	<th rowspan="1" colspan="1">부서번호</th>
             	<th rowspan="1" colspan="1">수정</th>
             	<th rowspan="1" colspan="1">삭제</th>
        	</tr>
  	    </tfoot>
  	    <tbody>
        	<c:forEach var="emp" items="${list}">   
            	<tr role="row" class="odd">
                	<td class="sorting_1">${emp.ename }</td>
                    <td>${emp.eno }</td>
					<td>${emp.job }</td>
					<td>${emp.manager }</td>
					<td>${emp.hireDate }</td>
					<td>${emp.salary }</td>
					<td>${emp.commission }</td>
					<td>${emp.dno }</td>
					<td><a href="${contextPath}/employee/updateEmp?eno=${emp.eno}">수정</a></td>
					<td><a href="${contextPath}/employee/deleteEmp?eno=${emp.eno}">삭제</a></td>
                </tr>
            </c:forEach>
         </tbody>
                                </table>
                                <a href="${contextPath}/employee/joinEmp">
		<p class="cls2">사원 등록하기</p>
	</a></div></div><div class="row"><div class="col-sm-12 col-md-5"><div class="dataTables_info" id="dataTable_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div></div><div class="col-sm-12 col-md-7"><div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate"><ul class="pagination"><li class="paginate_button page-item previous disabled" id="dataTable_previous"><a href="#" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li><li class="paginate_button page-item active"><a href="#" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link">2</a></li><li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="3" tabindex="0" class="page-link">3</a></li><li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="4" tabindex="0" class="page-link">4</a></li><li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="5" tabindex="0" class="page-link">5</a></li><li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="6" tabindex="0" class="page-link">6</a></li><li class="paginate_button page-item next" id="dataTable_next"><a href="#" aria-controls="dataTable" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li></ul></div></div></div></div>
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

    <!-- Page level plugins -->
    <script src="${contextPath}/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="${contextPath}/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <!-- <script src="../js/demo/datatables-demo.js"></script> -->
</body>
</html>