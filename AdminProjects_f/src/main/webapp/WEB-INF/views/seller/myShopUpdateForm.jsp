<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 상점 수정하기</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function (e) {
				$('#shopImg').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}

</script>
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
<a class=" dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-1" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">Home</a>
<ul class="sub-menu collapse" id="submenu-1-1">
<li class="nav-item"><a href="index.html">Home Default</a></li>
<li class="nav-item active"><a href="index2.html">Home Version 2</a></li>
<li class="nav-item"><a href="index3.html">Home Version 3</a></li>
</ul>
</li>
 <li class="nav-item">
<a href="category.html" aria-label="Toggle navigation">Categories</a>
</li>
<li class="nav-item">
<a class="active dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-4" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">내 상점</a>
<ul class="sub-menu mega-menu collapse" id="submenu-1-4">
<li class="single-block">
<ul>
<li class="mega-menu-title">상점</li>
<li class=" active nav-item"><a href="myShop.do">내 상점 보기</a></li>
<li class="nav-item"><a href="myShopAddForm.do">상점 추가</a></li>
</ul>
</li>
<li class="single-block">
<ul>
<li class="mega-menu-title">마이페이지</li>
<li class="nav-item"><a href="myPageUpdateForm.do">정보수정</a></li>
<li class="nav-item"><a href="myPageDelete.do">회원탈퇴</a>
</li>
</ul>
</li>
</ul>
</li>
<li class="nav-item">
<a class=" dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-5" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">회원관리</a>
<ul class="sub-menu collapse" id="submenu-1-5">
<li class="nav-item"><a href="newMemberList.do">회원 승인</a></li>
<li class="nav-item"><a href="memberList.do">회원리스트</a></li>
<li class="nav-item"><a href="delMemberList.do">탈퇴 회원</a></li>
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
<h1 class="page-title">상점 수정하기</h1>
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<ul class="breadcrumb-nav">
<li><a href=".">Home</a></li>
<li>상점 수정하기</li>
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
<h3 class="block-title">상점 수정하기</h3>
<div class="inner-block">
<form class="profile-setting-form" method="post" action="myShopUpdate.do" enctype="multipart/form-data">
<div class="row">
<div class="col-lg-6 col-12">
<div class="form-group upload-image">
<label>프로필 사진</label>
<input type="file" name="shopImg" onchange ="readURL(this);" />
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<img id="shopImg" src="upload/shop/${sdto.shopImg }" width=100 height=100 />
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<label>상점 이름</label>
<input name="shopName" type="text" value="${sdto.shopName }">
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<label>상점 번호</label>
<input name="shopTel" type="text" onkeyup="inputTelNumber(this);" maxlength="11" value="${sdto.shopTel }">
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<label>우편번호</label>
<input name="shopOdd" type="text" value="${sdto.shopOdd }">
</div>
</div>
<div class="col-lg-4 col-12">
<div class="form-group">
 <label>지역</label>
<select name="local">
					<option value="강남구" ${sdto.local == "강남구"? "selected" : "" }>강남구</option>
					<option value="강동구" ${sdto.local == "강동구"? "selected" : "" }>강동구</option>
					<option value="강북구" ${sdto.local == "강북구"? "selected" : "" }>강북구</option>
					<option value="강서구" ${sdto.local == "강서구"? "selected" : "" }>강서구</option>	
					<option value="관악구" ${sdto.local == "관악구"? "selected" : "" }>관악구</option>
					<option value="광진구" ${sdto.local == "광진구"? "selected" : "" }>광진구</option>
					<option value="구로구" ${sdto.local == "구로구"? "selected" : "" }>구로구</option>
					<option value="금천구" ${sdto.local == "금천구"? "selected" : "" }>금천구</option>
					<option value="노원구" ${sdto.local == "노원구"? "selected" : "" }>노원구</option>
					<option value="도봉구" ${sdto.local == "도봉구"? "selected" : "" }>도봉구</option>
					<option value="동대문구" ${sdto.local == "동대문구"? "selected" : "" }>동대문구</option>
					<option value="동작구" ${sdto.local == "동작구"? "selected" : "" }>동작구</option>											
					<option value="마포구" ${sdto.local == "마포구"? "selected" : "" }>마포구</option>
					<option value="서대문구" ${sdto.local == "서대문구"? "selected" : "" }>서대문구</option>
					<option value="서초구" ${sdto.local == "서초구"? "selected" : "" }>서초구</option>
					<option value="성동구" ${sdto.local == "성동구"? "selected" : "" }>성동구</option>	
					<option value="성북구" ${sdto.local == "성북구"? "selected" : "" }>성북구</option>
					<option value="송파구" ${sdto.local == "송파구"? "selected" : "" }>송파구</option>
					<option value="양천구" ${sdto.local == "양천구"? "selected" : "" }>양천구</option>
					<option value="영등포구" ${sdto.local == "영등포구"? "selected" : "" }>영등포구</option>
					<option value="용산구" ${sdto.local == "용산구"? "selected" : "" }>용산구</option>
					<option value="은평구" ${sdto.local == "은평구"? "selected" : "" }>은평구</option>
					<option value="종로구" ${sdto.local == "종로구"? "selected" : "" }>종로구</option>
					<option value="중구" ${sdto.local == "중구"? "selected" : "" }>중구</option>	
					<option value="중랑구" ${sdto.local == "중랑구"? "selected" : "" }>중랑구</option>
			</select> 
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<label>상점 주소</label>
<input name="shopAdd" type="text" value="${sdto.shopAdd }">
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
 <label>상점 자세한 주소</label>
<input name="shopDetailAdd" type="text" value="${sdto.shopDetailAdd }">
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
 <label>사업자번호</label>
<input name="businessNum" type="text" value="${sdto.businessNum }">
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
 <label>오픈날짜</label>
<input type="text" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${sdto.openDate }"/>" readonly>
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
 <label>상점번호</label>
<input name="shopId" type="text" value="${sdto.shopId }" readonly>
</div>
</div>

<div class="col-12">
<div class="form-group button mb-0">
<button type="submit" class="btn">수정하기</button>
<button type="submit" class="btn" formaction="myShopDelete.do?id=${sdto.id}&shopId=${sdto.shopId }" >돌아가기</button>
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