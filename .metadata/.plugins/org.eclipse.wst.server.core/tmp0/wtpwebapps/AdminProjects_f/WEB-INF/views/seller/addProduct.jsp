<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>상품 등록하기</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function (e) {
				$('#img_Url').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}

</script>
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
<style type = "text/css">
	table{
		width:80%;
		margin:auto;
		height: 100px;
		text-align: center;
	}
</style>
</head>
<body>
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
<a href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-1" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">홈</a>
</li>
 <li class="nav-item">
<a href="search.do" aria-label="Toggle navigation">카테고리</a>
</li>
<li class="nav-item">
<a class=" dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-4" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">마이페이지</a>
<ul class="sub-menu mega-menu collapse" id="submenu-1-4">
<li class="single-block">
<ul>
<li class="mega-menu-title">상점</li>
<li class="nav-item"><a href="myShop.do">내 상점 보기</a></li>
<li class="nav-item"><a href="myShopAddForm.do">상점 추가</a></li>
</ul>
</li>
<li class="single-block">
<ul>
<li class="mega-menu-title">마이페이지</li>
<li class="nav-item"><a href="myPage.do">마이페이지</a></li>
<li class="nav-item"><a href="myPageUpdateForm.do">정보수정</a></li>
<li class="nav-item"><a href="myPageDelete.do">회원탈퇴</a></li>
</ul>
</li>
</ul>
</li>
</ul>
</div> 
<div class="login-button">
<ul>
<li>
<p>${dto.name }</p>
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
<h1 class="page-title">상품 추가</h1>
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<ul class="breadcrumb-nav">
<li><a href=".">Home</a></li>
<li>상품 추가</li>
</ul>
</div>
</div>
</div>
</div>



<section class="dashboard section">
<div class="container">
<div class="row">
<div class="col-12">
<div class="main-content">
<div class="dashboard-block mt-0 profile-settings-block">
<h3 class="block-title">상품추가</h3>
<div class="inner-block">
<form class="profile-setting-form" method="post" action="addProductDo.do" enctype="multipart/form-data">
<div class="row">
<div class="col-lg-6 col-12">
<div class="form-group upload-image">
<label>상품 사진</label>
<input type="file" name="img_Url" onchange ="readURL(this);" />
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<img id ="img_Url" width=200 height=200 />
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<label>상품 이름</label>
<input name="productName" type="text" placeholder="상품 이름">
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<label>가격</label>
<input name="price" type="text" placeholder="가격">
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<label>재고</label>
<input name="stock" type="text" placeholder="재고">
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<label>카테고리</label>
<select name="category">
	<option value="식품">식품</option>
	<option value="유아">유아</option>
	<option value="식음료">식음료</option>
	<option value="전자기기">전자기기</option>
	<option value="뷰티">뷰티</option>
	<option value="의약품">의약품</option>
	<option value="의류">의류</option>
</select>
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<label>내용</label>
<textarea name="content" rows="1000" cols="1000" placeholder="내용"></textarea>
</div>
</div>
<input type="hidden" name="id" value="${id }" />
<input type="hidden" name="shopId" value="${shopId }" />
<div class="col-12">
<div class="form-group button mb-0">
<button type="submit" class="btn">상품 등록하기</button>
</div>
</div>
</div>
</form>
</div>
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