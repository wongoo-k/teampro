<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.yogi.hoxy.dtos.ShopDto"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>회원탈퇴</title>
<% String id = (String) session.getAttribute("id"); %>
<% List<ShopDto> sList = (List<ShopDto>) request.getAttribute("list");  %>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.svg" />


<link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">

<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/css/LineIcons.2.0.css" />
<link rel="stylesheet" href="resources/css/animate.css" />
<link rel="stylesheet" href="resources/css/tiny-slider.css" />
<link rel="stylesheet" href="resources/css/glightbox.min.css" />
<link rel="stylesheet" href="resources/css/main.css" />
</head>
<body>
<!--[if lte IE 9]>
      <p class="browserupgrade">
        You are using an <strong>outdated</strong> browser. Please
        <a href="https://browsehappy.com/">upgrade your browser</a> to improve
        your experience and security.
      </p>
    <![endif]-->

<div class="preloader">
<div class="preloader-inner">
<div class="preloader-icon">
<span></span>
<span></span>
</div>
</div>
</div>


<header class="header navbar-area">
<div class="container">
<div class="row align-items-center">
<div class="col-lg-12">
<div class="nav-inner">
<nav class="navbar navbar-expand-lg">
<a class="navbar-brand" href=".">
<img src="upload/logo.jpg" alt="Logo">
</a>
<button class="navbar-toggler mobile-menu-btn" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
<span class="toggler-icon"></span>
<span class="toggler-icon"></span>
<span class="toggler-icon"></span>
</button>
<div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
<ul id="nav" class="navbar-nav ms-auto">
<li class="nav-item">
<a href="." aria-label="Toggle navigation">홈</a>
</li>
<li class="nav-item">
<a class=" active dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-4" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">마이페이지</a>
<ul class="sub-menu mega-menu collapse" id="submenu-1-4">
<li class="single-block">
<ul>
<li class=" active nav-item"><a href="cancelDelete.do">회원탈퇴 상태보기</a>
</li>
</ul>
</li>
</ul>
</li>
</ul>
</div> 
<div class="login-button">
<ul>
<li>
<p>${name }</p>
</li>
<li>
<a href="logout.do"><i class="fas fa-sign-out-alt"></i> 로그아웃</a>
</li>
</ul>
</div>
</nav> 
</div>
</div>
</div> 
</div> 
</header>


<div class="breadcrumbs">
<div class="container">
<div class="row align-items-center">
<div class="col-lg-6 col-md-6 col-12">
<div class="breadcrumbs-content">
<h1 class="page-title">회원탈퇴</h1>
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<ul class="breadcrumb-nav">
<li><a href=".">Home</a></li>
<li>회원탈퇴</li>
</ul>
</div>
</div>
</div>
</div>


<section class="dashboard section">
<div class="container">
<div class="row">
<div class="col-lg-3 col-md-4 col-12">

<div class="dashboard-sidebar">
<div class="user-image">
<img src="upload/${profileImg }" alt="#">
<span>${name }</span>
</div>
<div class="dashboard-menu">
<ul>
<li><a class="active" href="myPageDelete.do"><i class="far fa-angry"></i> 회원탈퇴</a></li>
</ul>
</div>
</div>
</div>

<div class="col-lg-9 col-md-12 col-12">
<div class="main-content">
<div class="dashboard-block mt-0 profile-settings-block">
<h3 class="block-title">회원탈퇴</h3>
<form method="post" action="myPageCan.do">
<h2>회원님의 계정을 탈퇴 취소가된 상태입니다.</h2><br>
<h3>복구를 원하신다면 버튼을 눌러주세요.</h3><br>

<div class="my-items">
<h4 align="left">삭제될 상점</h4><br>
<div class="item-list-title">
<div class="row align-items-center">
<div class="col-lg-4 col-md-4 col-12">
<p>상점이름</p>
</div>
<div class="col-lg-4 col-md-4 col-12">
<p>지역</p>
</div>
<div class="col-lg-4 col-md-4 col-12">
<p>개업날짜</p>
</div>
</div>
</div>

<div class="single-item-list">
<div class="row align-items-center">
<%
	if(sList == null || sList.size() == 0){
		%>
		<p align="center">상점이 없습니다.</p>
		<%
	}else {
		for(ShopDto sdto : sList){
%>
	<div class="col-lg-4 col-md-4 col-12">
	<p><%=sdto.getShopName() %></p>
	</div>
	<div class="col-lg-4 col-md-4 col-12">
	<p><%=sdto.getLocal() %></p>
	</div>		
	<div class="col-lg-4 col-md-4 col-12">
	<p><fmt:formatDate pattern="yyyy-MM-dd" value="<%=sdto.getOpenDate() %>"/></p>
	</div>
		<%	}		
		}
		%>
</div>
</div>
<div class="col-12">
<div class="form-group button mb-0">
<input name="id" type="hidden" value="${id }">
<button type="submit" class="btn">탈퇴 취소</button>
</div>
</div>
</form>
</div>
</div>
</div>
</div>
</div>
</section>


<footer class="footer">
<div class="footer-bottom">
<div class="container">
<div class="inner">
<div class="row">
<div class="col-12">
<div class="content">
<p class="copyright-text">Designed and Developed by 1조
</p>
</div>
</div>
</div>
</div>
</div>
</div>

</footer>

<a href="#" class="scroll-top btn-hover">
<i class="fas fa-arrow-up"></i>
</a>

<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/wow.min.js"></script>
<script src="resources/js/tiny-slider.js"></script>
<script src="resources/js/glightbox.min.js"></script>
<script src="resources/js/main.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</body>
</html>