<%@page import="java.util.List"%>
<%@page import="com.yogi.hoxy.dtos.ShopDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 상점 정보보기</title>
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
 <a href="search.do" aria-label="Toggle navigation">카테고리</a>
</li>
<li class="nav-item">
<a class=" active dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-4" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">관리자페이지</a>
<ul class="sub-menu mega-menu collapse" id="submenu-1-4">
<li class="single-block">
<ul>
<li class="mega-menu-title">회원</li>
<li class="nav-item"><a href="newMemberList.do">신규회원</a></li>
<li class="nav-item"><a href="memberList.do">회원 리스트</a></li>
<li class="nav-item"><a href="delMemberList.do">탈퇴 회원</a></li>
</ul>
</li>
<li class="single-block">
<ul>
<li class="mega-menu-title">상점</li>
<li class="nav-item"><a href="newShopList.do">신규 상점</a></li>
<li class=" active nav-item"><a href="shopList.do">상점 리스트</a></li>
<li class="nav-item"><a href="delShopList.do">상점 삭제</a></li>
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
<h1 class="page-title">상점 정보보기</h1>
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<ul class="breadcrumb-nav">
<li><a href=".">Home</a></li>
<li>상점 정보보기</li>
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
<h3 class="block-title">상점 정보보기</h3>
<div class="inner-block">
<form class="profile-setting-form" method="post">
<div class="row">
<div class="col-12">
<div class="form-group upload-image">
<label>상점 이미지</label>
<img id="shopImg" src="upload/${sdto.shopImg }" width=100 height=100 />
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<label>아이디</label>
<input type="text" value="${sdto.id }" readonly>
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<label>상점 이름</label>
<input name="shopName" type="text" value="${sdto.shopName }" readonly>
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<label>상점 번호</label>
<input name="shopTel" type="text" value="${sdto.shopTel }" readonly>
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<label>우편번호</label>
<input name="shopOdd" type="text" value="${sdto.shopOdd }" readonly>
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
 <label>지역</label>
<input name="local" type="text" value="${sdto.local }" readonly> 
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<label>상점 주소</label>
<input name="shopAdd" type="text" value="${sdto.shopAdd }" readonly>
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
 <label>상점 자세한 주소</label>
<input name="shopDetailAdd" type="text" value="${sdto.shopDetailAdd }" readonly>
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
 <label>사업자번호</label>
<input name="businessNum" type="text" value="${sdto.businessNum }" readonly>
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
 <label>오픈날짜</label>
<input name="openDate" type="text" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${sdto.openDate }"/>" readonly>
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
 <label>상점번호</label>
<input type="text" value="${sdto.shopId }" readonly>
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<label>권한</label>
<input name="power" type="text" value=
									<c:if test="${sdto.power == 0 }">
										"승인 미완료"
									</c:if>
									<c:if test="${sdto.power == 1}">
										"승인 완료"
									</c:if> readonly>
</div>
</div><div class="col-lg-6 col-12">
<div class="form-group">
 <label>삭제여부</label>
<input name="del" type="text" value=
									<c:if test="${sdto.del == 0 }">
										"정상"
									</c:if>
									<c:if test="${sdto.del == 1}">
										"삭제요청"
									</c:if> readonly>
</div>
</div>
<div class="col-12">
<div class="form-group button mb-0">
<button type="submit" class="btn" formaction="shopUpdateForm.do?id=${sdto.id}&shopId=${sdto.shopId }">수정 폼</button>
<button type="submit" class="btn" formaction="shopDelete.do?shopId=${sdto.shopId }">삭제하기</button>
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
<script src="resources/js/count-up.min.js"></script>
<script src="resources/js/main.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script type="text/javascript">
        //========= testimonial 
        tns({
            container: '.testimonial-slider',
            items: 3,
            slideBy: 'page',
            autoplay: false,
            mouseDrag: true,
            gutter: 0,
            nav: true,
            controls: false,
            controlsText: ['<i class="lni lni-arrow-left"></i>', '<i class="lni lni-arrow-right"></i>'],
            responsive: {
                0: {
                    items: 1,
                },
                540: {
                    items: 1,
                },
                768: {
                    items: 2,
                },
                992: {
                    items: 2,
                },
                1170: {
                    items: 2,
                }
            }
        });

        //====== counter up 
        var cu = new counterUp({
            start: 0,
            duration: 2000,
            intvalues: true,
            interval: 100,
            append: " ",
        });
        cu.start();
    </script>
</body>
</html>