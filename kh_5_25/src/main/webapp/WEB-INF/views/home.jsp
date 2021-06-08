<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>ClassiGrids - Classified Ads and Listing Website Template.</title>
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
<a class="navbar-brand" href="index.html">
<img src="resources/images/logo.png" alt="Logo">
</a>
<button class="navbar-toggler mobile-menu-btn" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
<span class="toggler-icon"></span>
<span class="toggler-icon"></span>
<span class="toggler-icon"></span>
</button>
<div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
<ul id="nav" class="navbar-nav ms-auto">
<li class="nav-item">
<a class="active dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-1" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">Home</a>
<ul class="sub-menu collapse" id="submenu-1-1">
<li class="nav-item active"><a href="home.do">Home Default</a></li>
<li class="nav-item"><a href="index2.html">Home Version 2</a></li>
<li class="nav-item"><a href="index3.html">Home Version 3</a></li>
</ul>
</li>
 <li class="nav-item">
<a href="categories.do" aria-label="Toggle navigation">Categories</a>
</li>
<li class="nav-item">
<a class="dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-3" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">Listings</a>
<ul class="sub-menu collapse" id="submenu-1-3">
<li class="nav-item"><a href="item-listing-grid.html">Ad Grid</a></li>
<li class="nav-item"><a href="item-listing-list.html">Ad Listing</a></li>
<li class="nav-item"><a href="item-details.html">Ad Details</a></li>
</ul>
</li>
<li class="nav-item">
<a class="dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-4" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">Pages</a>
<ul class="sub-menu mega-menu collapse" id="submenu-1-4">
<li class="single-block">
<ul>
<li class="mega-menu-title">Essential Pages</li>
<li class="nav-item"><a href="about-us.html">About Us</a></li>
<li class="nav-item"><a href="item-details.html">Ads Details</a></li>
<li class="nav-item"><a href="post-item.html">Ads Post</a></li>
<li class="nav-item"><a href="pricing.html">Pricing Table</a></li>
<li class="nav-item"><a href="registration.html">Sign Up</a></li>
<li class="nav-item"><a href="login.do">Sign In</a></li>
<li class="nav-item"><a href="contact.html">Contact Us</a></li>
<li class="nav-item"><a href="faq.html">FAQ</a></li>
<li class="nav-item"><a href="404.html">Error Page</a></li>
<li class="nav-item"><a href="mail-success.html">Mail Success</a>
</li>
<li class="nav-item"><a href="coming-soon.html">Comming Soon</a>
</li>
</ul>
</li>
<li class="single-block">
<ul>
<li class="mega-menu-title">Dashboard</li>
<li class="nav-item"><a href="dashboard.html">Account Overview</a>
</li>
<li class="nav-item"><a href="profile-settings.html">My Profile</a>
</li>
<li class="nav-item"><a href="my-items.html">My Ads</a></li>
<li class="nav-item"><a href="favourite-items.html">Favorite Ads</a>
</li>
<li class="nav-item"><a href="post-item.html">Ad post</a></li>
<li class="nav-item"><a href="bookmarked-items.html">Bookmarked Ad</a>
</li>
<li class="nav-item"><a href="messages.html">Messages</a></li>
<li class="nav-item"><a href="delete-account.html">Close account</a>
</li>
<li class="nav-item"><a href="invoice.html">Invoice</a></li>
</ul>
</li>
</ul>
</li>
<li class="nav-item">
<a class="dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-5" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">Blog</a>
<ul class="sub-menu collapse" id="submenu-1-5">
<li class="nav-item"><a href="blog-grid-sidebar.html">Blog Grid Sidebar</a>
</li>
<li class="nav-item"><a href="blog-single.html">Blog Single</a></li>
<li class="nav-item"><a href="blog-single-sidebar.html">Blog Single
Sibebar</a></li>
</ul>
</li>
</ul>
</div> 
<div class="login-button">
<ul>
<div id="kakao_id_login" style="text-align: center"> 
<a href="https://kauth.kakao.com/oauth/authorize?client_id=e6134567a38aafa3c25c8fdb372a361f&
        redirect_uri=http://localhost:8123/login&response_type=code"> 
<img width="223" src="resources/images/kakao_login_medium_narrow.png" /></a> 
</div>
<li>
<a href="login.do"><i class="lni lni-enter"></i> Login</a>
</li>
<li>
<a href="memberjoin.do"><i class="lni lni-user"></i> Register</a>
</li>
</ul>
</div>
<div class="button header-button">
<a href="post-item.html" class="btn">Post an Ad</a>
</div>
</nav> 
</div>
</div>
</div> 
</div> 
</header>


<section class="hero-area overlay">
<div class="container">
<div class="row">
<div class="col-lg-10 offset-lg-1 col-md-12 col-12">
<div class="hero-text text-center">

<div class="section-heading">
<h2 class="wow fadeInUp" data-wow-delay=".3s">YOGIHOXY..?</h2>
<p class="wow fadeInUp" data-wow-delay=".5s">여기?</p>
</div>


<div class="search-form wow fadeInUp" data-wow-delay=".7s">
<div class="row">
<div class="col-lg-4 col-md-4 col-12 p-0">
<div class="search-input">
<label for="keyword"><i class="lni lni-search-alt theme-color"></i></label>
<input type="text" name="keyword" id="keyword" placeholder="Product keyword">
</div>
</div>
<div class="col-lg-3 col-md-3 col-12 p-0">
<div class="search-input">
<label for="category"><i class="lni lni-grid-alt theme-color"></i></label>
<select name="category" id="category">
<option value="none" selected disabled>대분류</option>
<option value="none">FOOD</option>
<option value="none">CHILD</option>
<option value="none">GOODS</option>
<option value="none">BEAUTY</option>
<option value="none">MEDICINE</option>
<option value="none">CLOTHING</option>
</select>
</div>
</div>
<div class="col-lg-3 col-md-3 col-12 p-0">
<div class="search-input">
<label for="location"><i class="lni lni-map-marker theme-color"></i></label>
<select name="location" id="location">
<option value="none" selected disabled>지역</option>
<option value="none">Mapo-gu</option>
<option value="none">Yeongdeungpo-gu</option>
</select>
</div>
</div>
<div class="col-lg-2 col-md-2 col-12 p-0">
<div class="search-btn button">
<button class="btn"><i class="lni lni-search-alt"></i> Search</button>
</div>
</div>
</div>
</div>

</div>
</div>
</div>
</div>
</section>


<section class="categories">
<div class="container">
<div class="cat-inner">
<div class="row">
<div class="col-12 p-0">
<div class="category-slider">

<a href="category.html" class="single-cat">
<div class="icon">
<img src="resources/images/fashion.png" alt="#">
</div>
<h3>Clothing</h3>
<h5 class="total">5</h5>
</a>
<a href="food.do" class="single-cat">
<div class="icon">
<img src="resources/images/food.png" alt="#">
</div>
<h3>Food</h3>
<h5 class="total">15</h5>
</a>
<a href="category.html" class="single-cat">
<div class="icon">
<img src="resources/images/child.png" alt="#">
</div>
<h3>Child</h3>
<h5 class="total">32</h5>
</a>
<a href="category.html" class="single-cat">
<div class="icon">
<img src="resources/images/beauty.png" alt="#">
</div>
<h3>Beauty</h3>
<h5 class="total">25</h5>
</a>
<a href="category.html" class="single-cat">
<div class="icon">
<img src="resources/images/medicine.png" alt="#">
</div>
<h3>Medicine</h3>
<h5 class="total">3</h5>
</a>
</div>
</div>
</div>
</div>
</div>
</section>


<section class="items-grid section custom-padding">
<div class="container">
<div class="row">
<div class="col-12">
<div class="section-title">
<h2 class="wow fadeInUp" data-wow-delay=".4s">Latest Products</h2>
<p class="wow fadeInUp" data-wow-delay=".6s">There are many variations of passages of Lorem
Ipsum available, but the majority have suffered alteration in some form.</p>
</div>
</div>
</div>
<div class="single-head">
<div class="row">
<div class="col-lg-4 col-md-6 col-12">

<div class="single-grid wow fadeInUp" data-wow-delay=".2s">
<div class="image">
<a href="item-details.html" class="thumbnail"><img src="assets/images/items-grid/img1.jpg" alt="#"></a>
<div class="author">
<div class="author-image">
<a href="javascript:void(0)"><img src="assets/images/items-grid/author-1.jpg" alt="#">
 <span>Smith jeko</span></a>
</div>
<p class="sale">For Sale</p>
</div>
</div>
<div class="content">
<div class="top-content">
<a href="javascript:void(0)" class="tag">Mobile Phones</a>
<h3 class="title">
<a href="item-details.html">Apple Iphone X</a>
</h3>
<p class="update-time">Last Updated: 1 hours ago</p>
<ul class="rating">
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><a href="javascript:void(0)">(35)</a></li>
</ul>
<ul class="info-list">
<li><a href="javascript:void(0)"><i class="lni lni-map-marker"></i> New York, US</a></li>
<li><a href="javascript:void(0)"><i class="lni lni-timer"></i> Feb 18, 2023</a></li>
</ul>
</div>
<div class="bottom-content">
<p class="price">Start From: <span>$200.00</span></p>
<a href="javascript:void(0)" class="like"><i class="lni lni-heart"></i></a>
</div>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-grid wow fadeInUp" data-wow-delay=".4s">
<div class="image">
<a href="item-details.html" class="thumbnail"><img src="assets/images/items-grid/img2.jpg" alt="#"></a>
<div class="author">
<div class="author-image">
<a href="javascript:void(0)"><img src="assets/images/items-grid/author-2.jpg" alt="#">
<span>Alex Jui</span></a>
</div>
<p class="sale">For Sale</p>
</div>
</div>
<div class="content">
<div class="top-content">
<a href="javascript:void(0)" class="tag">Real Estate</a>
<h3 class="title">
<a href="item-details.html">Amazing Room for Rent</a>
</h3>
<p class="update-time">Last Updated: 2 hours ago</p>
<ul class="rating">
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
 <li><a href="javascript:void(0)">(20)</a></li>
</ul>
<ul class="info-list">
<li><a href="javascript:void(0)"><i class="lni lni-map-marker"></i> Dallas, Washington</a></li>
<li><a href="javascript:void(0)"><i class="lni lni-timer"></i> Jan 7, 2023</a></li>
</ul>
</div>
<div class="bottom-content">
<p class="price">Start From: <span>$450.00</span></p>
<a href="javascript:void(0)" class="like"><i class="lni lni-heart"></i></a>
</div>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-grid wow fadeInUp" data-wow-delay=".6s">
<div class="image">
<a href="item-details.html" class="thumbnail"><img src="assets/images/items-grid/img3.jpg" alt="#"></a>
<div class="author">
<div class="author-image">
<a href="javascript:void(0)"><img src="assets/images/items-grid/author-3.jpg" alt="#">
<span>Devid Milan</span></a>
</div>
<p class="sale">For Sale</p>
</div>
<p class="item-position"><i class="lni lni-bolt"></i> Featured</p>
</div>
<div class="content">
<div class="top-content">
<a href="javascript:void(0)" class="tag">Mobile Phones</a>
<h3 class="title">
<a href="item-details.html">Canon SX Powershot D-SLR</a>
</h3>
<p class="update-time">Last Updated: 3 hours ago</p>
<ul class="rating">
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><a href="javascript:void(0)">(55)</a></li>
</ul>
<ul class="info-list">
<li><a href="javascript:void(0)"><i class="lni lni-map-marker"></i> New York, US</a></li>
<li><a href="javascript:void(0)"><i class="lni lni-timer"></i> Mar 18, 2023</a></li>
</ul>
</div>
<div class="bottom-content">
<p class="price">Start From: <span>$700.00</span></p>
<a href="javascript:void(0)" class="like"><i class="lni lni-heart"></i></a>
</div>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-grid wow fadeInUp" data-wow-delay=".2s">
<div class="image">
<a href="item-details.html" class="thumbnail"><img src="assets/images/items-grid/img4.jpg" alt="#"></a>
<div class="author">
<div class="author-image">
<a href="javascript:void(0)"><img src="assets/images/items-grid/author-4.jpg" alt="#">
<span>Jesia Jully</span></a>
</div>
<p class="sale">For Sale</p>
</div>
</div>
<div class="content">
<div class="top-content">
<a href="javascript:void(0)" class="tag">Vehicles</a>
<h3 class="title">
<a href="item-details.html">BMW 5 Series GT Car</a>
</h3>
<p class="update-time">Last Updated: 4 hours ago</p>
<ul class="rating">
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><a href="javascript:void(0)">(35)</a></li>
</ul>
<ul class="info-list">
<li><a href="javascript:void(0)"><i class="lni lni-map-marker"></i> New York, US</a></li>
<li><a href="javascript:void(0)"><i class="lni lni-timer"></i> Apr 12, 2023</a></li>
</ul>
</div>
<div class="bottom-content">
<p class="price">Start From: <span>$1000.00</span></p>
<a href="javascript:void(0)" class="like"><i class="lni lni-heart"></i></a>
</div>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-grid wow fadeInUp" data-wow-delay=".4s">
<div class="image">
<a href="item-details.html" class="thumbnail"><img src="assets/images/items-grid/img5.jpg" alt="#"></a>
<div class="author">
<div class="author-image">
<a href="javascript:void(0)"><img src="assets/images/items-grid/author-5.jpg" alt="#">
<span>Thomas Deco</span></a>
</div>
<p class="sale">For Sale</p>
</div>
<p class="item-position"><i class="lni lni-bolt"></i> Featured</p>
</div>
<div class="content">
<div class="top-content">
<a href="javascript:void(0)" class="tag">Apple</a>
<h3 class="title">
<a href="item-details.html">Apple Macbook Pro 13 Inch</a>
</h3>
<p class="update-time">Last Updated: 5 hours ago</p>
<ul class="rating">
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><a href="javascript:void(0)">(35)</a></li>
</ul>
<ul class="info-list">
<li><a href="javascript:void(0)"><i class="lni lni-map-marker"></i> Louis, Missouri, US</a></li>
<li><a href="javascript:void(0)"><i class="lni lni-timer"></i> May 25, 2023</a></li>
</ul>
</div>
<div class="bottom-content">
<p class="price">Start From: <span>$550.00</span></p>
<a href="javascript:void(0)" class="like"><i class="lni lni-heart"></i></a>
</div>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-grid wow fadeInUp" data-wow-delay=".6s">
<div class="image">
<a href="item-details.html" class="thumbnail"><img src="assets/images/items-grid/img6.jpg" alt="#"></a>
<div class="author">
<div class="author-image">
<a href="javascript:void(0)"><img src="assets/images/items-grid/author-6.jpg" alt="#">
<span>Jonson zack</span></a>
</div>
<p class="sale">For Sale</p>
</div>
</div>
<div class="content">
<div class="top-content">
<a href="javascript:void(0)" class="tag">Restaurant</a>
<h3 class="title">
<a href="item-details.html">Cream Restaurant</a>
</h3>
<p class="update-time">Last Updated: 7 hours ago</p>
<ul class="rating">
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><a href="javascript:void(0)">(20)</a></li>
</ul>
<ul class="info-list">
<li><a href="javascript:void(0)"><i class="lni lni-map-marker"></i> New York, US</a></li>
<li><a href="javascript:void(0)"><i class="lni lni-timer"></i> Feb 18, 2023</a></li>
</ul>
</div>
<div class="bottom-content">
<p class="price">Start From: <span>$500.00</span></p>
<a href="javascript:void(0)" class="like"><i class="lni lni-heart"></i></a>
</div>
</div>
</div>

</div>
</div>
</div>
</div>
</section>


<section class="why-choose section">
<div class="container">
<div class="row">
<div class="col-12">
<div class="section-title">
<h2 class="wow fadeInUp" data-wow-delay=".4s">Why Choose Us</h2>
<p class="wow fadeInUp" data-wow-delay=".6s">There are many variations of passages of Lorem
Ipsum available, but the majority have suffered alteration in some form.</p>
</div>
</div>
</div>
<div class="row">
<div class="col-lg-12">
<div class="choose-content">
<div class="row">
<div class="col-lg-4 col-md-6 col-12">

<div class="single-list wow fadeInUp" data-wow-delay=".2s">
<i class="lni lni-book"></i>
<h4>Fully Documented</h4>
<p>Buy and sell everything from used cars to mobile phones and computer or search
for property.</p>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-list wow fadeInUp" data-wow-delay=".4s">
<i class="lni lni-leaf"></i>
<h4>Clean & Modern Design</h4>
<p>Buy and sell everything from used cars to mobile phones and computer or search
for property.</p>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-list wow fadeInUp" data-wow-delay=".6s">
<i class="lni lni-cog"></i>
<h4>Completely Customizable</h4>
<p>Buy and sell everything from used cars to mobile phones and computer or search
for property.</p>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-list wow fadeInUp" data-wow-delay=".2s">
<i class="lni lni-pointer-up"></i>
<h4>User Friendly</h4>
<p>Buy and sell everything from used cars to mobile phones and computer or search
for property.</p>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-list wow fadeInUp" data-wow-delay=".4s">
<i class="lni lni-layout"></i>
<h4>Awesome Layout</h4>
<p>Buy and sell everything from used cars to mobile phones and computer or search
for property.</p>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-list wow fadeInUp" data-wow-delay=".6s">
<i class="lni lni-laptop-phone"></i>
<h4>Fully Responsive</h4>
<p>Buy and sell everything from used cars to mobile phones and computer or search
for property.</p>
</div>

</div>
</div>
</div>
</div>
</div>
</div>
</section>


<section class="browse-cities section">
<div class="container">
<div class="row">
<div class="col-12">
<div class="section-title">
<h2 class="wow fadeInUp" data-wow-delay=".4s">Browse By Cities</h2>
<p class="wow fadeInUp" data-wow-delay=".6s">There are many variations of passages of Lorem
Ipsum available, but the majority have suffered alteration in some form.</p>
</div>
</div>
</div>
<div class="row ">
<div class="col-lg-4 col-md-4 col-12">

<div class="single-city wow fadeInUp" data-wow-delay=".2s">
<a href="category.html" class="info-box">
<div class="image">
<img src="assets/images/cities/img1.jpg" alt="#">
</div>
<div class="content">
<h4 class="name">
New York City
<span>155 Ads</span>
</h4>
</div>
<div class="more-btn">
<i class="lni lni-circle-plus"></i>
</div>
</a>
</div>

</div>
<div class="col-lg-4 col-md-4 col-12">

<div class="single-city wow fadeInUp" data-wow-delay=".4s">
<a href="category.html" class="info-box">
<div class="image">
<img src="assets/images/cities/img2.jpg" alt="#">
</div>
<div class="content">
<h4 class="name">
Philadelphia
<span>288 Ads</span>
</h4>
</div>
<div class="more-btn">
<i class="lni lni-circle-plus"></i>
</div>
</a>
</div>

</div>
<div class="col-lg-4 col-md-4 col-12">

<div class="single-city wow fadeInUp" data-wow-delay=".6s">
<a href="category.html" class="info-box">
<div class="image">
<img src="assets/images/cities/img3.jpg" alt="#">
</div>
<div class="content">
<h4 class="name">
Los Angeles
<span>95 Ads</span>
</h4>
</div>
<div class="more-btn">
<i class="lni lni-circle-plus"></i>
</div>
</a>
</div>

</div>
<div class="col-lg-6 col-md-6 col-12">

<div class="single-city wow fadeInUp" data-wow-delay=".2s">
<a href="category.html" class="info-box">
<div class="image">
<img src="assets/images/cities/img4.jpg" alt="#">
</div>
<div class="content">
<h4 class="name">
San Francisco
<span>355 Ads</span>
</h4>
</div>
<div class="more-btn">
<i class="lni lni-circle-plus"></i>
</div>
</a>
</div>

</div>
<div class="col-lg-6 col-md-6 col-12">

<div class="single-city wow fadeInUp" data-wow-delay=".4s">
<a href="category.html" class="info-box">
<div class="image">
<img src="assets/images/cities/img5.jpg" alt="#">
</div>
<div class="content">
<h4 class="name">
Newe Orleans
<span>76 Ads</span>
</h4>
</div>
<div class="more-btn">
<i class="lni lni-circle-plus"></i>
</div>
</a>
</div>

</div>
</div>
</div>
</section>


<section class="call-action overlay section">
<div class="container">
<div class="row ">
<div class="col-lg-8 offset-lg-2 col-12">
<div class="inner">
<div class="content">
<h2 class="wow fadeInUp" data-wow-delay=".4s">Do you have something to sell?</h2>
<p class="wow fadeInUp" data-wow-delay=".6s">Post your ad for free on ClassiGrids</p>
<div class="button wow fadeInUp" data-wow-delay=".8s">
<a href="javascript:void(0)" class="btn">Post an ad now</a>
</div>
</div>
</div>
</div>
</div>
</div>
</section>


<section class="items-tab section">
<div class="container">
<div class="row">
<div class="col-12">
<div class="section-title">
<h2 class="wow fadeInUp" data-wow-delay=".4s">Trending Ads</h2>
<p class="wow fadeInUp" data-wow-delay=".6s">There are many variations of passages of Lorem
Ipsum available, but the majority have suffered alteration in some form.</p>
</div>
</div>
</div>
<div class="row">
<div class="col-12">
<nav>
<div class="nav nav-tabs" id="nav-tab" role="tablist">
<button class="nav-link active" id="nav-latest-tab" data-bs-toggle="tab" data-bs-target="#nav-latest" type="button" role="tab" aria-controls="nav-latest" aria-selected="true">Latest Ads</button>
<button class="nav-link" id="nav-popular-tab" data-bs-toggle="tab" data-bs-target="#nav-popular" type="button" role="tab" aria-controls="nav-popular" aria-selected="false">Popular Ads</button>
<button class="nav-link" id="nav-random-tab" data-bs-toggle="tab" data-bs-target="#nav-random" type="button" role="tab" aria-controls="nav-random" aria-selected="false">Random Ads</button>
</div>
</nav>
<div class="tab-content" id="nav-tabContent">
<div class="tab-pane fade show active" id="nav-latest" role="tabpanel" aria-labelledby="nav-latest-tab">
<div class="row">
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-1.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Mobile</a>
<h3 class="title">
<a href="item-details.html">Apple Iphone X</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Boston</a></p>
<ul class="info">
<li class="price">$890.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-2.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
 <a href="javascript:void(0)" class="tag">Others</a>
<h3 class="title">
<a href="item-details.html">Travel Kit</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>San Francisco</a></p>
<ul class="info">
<li class="price">$580.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-3.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Electronic</a>
<h3 class="title">
<a href="item-details.html">Nikon DSLR Camera</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Alaska, USA</a></p>
<ul class="info">
<li class="price">$560.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-4.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Furniture</a>
<h3 class="title">
<a href="item-details.html">Poster Paint</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Las Vegas</a></p>
<ul class="info">
 <li class="price">$85.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-5.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Furniture</a>
<h3 class="title">
<a href="item-details.html">Official Metting Chair</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Alaska, USA</a></p>
<ul class="info">
<li class="price">$750.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-6.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge rent">Rent</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Books & Magazine</a>
<h3 class="title">
<a href="item-details.html">Story Book</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>New York, USA</a></p>
<ul class="info">
<li class="price">$120.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-7.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Electronic</a>
<h3 class="title">
<a href="item-details.html">Cctv camera</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Delhi, India</a></p>
<ul class="info">
<li class="price">$350.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-8.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Mobile</a>
<h3 class="title">
<a href="item-details.html">Samsung Glalaxy S8</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Delaware, USA</a></p>
<ul class="info">
<li class="price">$299.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
</div>
</div>
<div class="tab-pane fade" id="nav-popular" role="tabpanel" aria-labelledby="nav-popular-tab">
<div class="row">
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-2.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Others</a>
<h3 class="title">
<a href="item-details.html">Travel Kit</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>San Francisco</a></p>
<ul class="info">
<li class="price">$580.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-3.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Electronic</a>
<h3 class="title">
<a href="item-details.html">Nikon DSLR Camera</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Alaska, USA</a></p>
<ul class="info">
<li class="price">$560.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-1.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Mobile</a>
<h3 class="title">
<a href="item-details.html">Apple Iphone X</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Boston</a></p>
<ul class="info">
<li class="price">$890.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-4.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Furniture</a>
<h3 class="title">
<a href="item-details.html">Poster Paint</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Las Vegas</a></p>
<ul class="info">
<li class="price">$85.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-7.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Electronic</a>
<h3 class="title">
<a href="item-details.html">Cctv camera</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Delhi, India</a></p>
<ul class="info">
<li class="price">$350.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
 </li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-8.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Mobile</a>
<h3 class="title">
<a href="item-details.html">Samsung Glalaxy S8</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Delaware, USA</a></p>
<ul class="info">
<li class="price">$299.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-5.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Furniture</a>
<h3 class="title">
<a href="item-details.html">Official Metting Chair</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Alaska, USA</a></p>
<ul class="info">
<li class="price">$750.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
 <a href="item-details.html"><img src="assets/images/items-tab/item-6.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge rent">Rent</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Books & Magazine</a>
<h3 class="title">
<a href="item-details.html">Story Book</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>New York, USA</a></p>
<ul class="info">
<li class="price">$120.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
</div>
</div>
<div class="tab-pane fade" id="nav-random" role="tabpanel" aria-labelledby="nav-random-tab">
<div class="row">
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-3.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Electronic</a>
<h3 class="title">
<a href="item-details.html">Nikon DSLR Camera</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Alaska, USA</a></p>
<ul class="info">
<li class="price">$560.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-4.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Furniture</a>
<h3 class="title">
<a href="item-details.html">Poster Paint</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Las Vegas</a></p>
<ul class="info">
<li class="price">$85.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-5.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Furniture</a>
<h3 class="title">
<a href="item-details.html">Official Metting Chair</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Alaska, USA</a></p>
<ul class="info">
<li class="price">$750.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-1.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Mobile</a>
<h3 class="title">
<a href="item-details.html">Apple Iphone X</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Boston</a></p>
<ul class="info">
<li class="price">$890.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-2.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Others</a>
<h3 class="title">
<a href="item-details.html">Travel Kit</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>San Francisco</a></p>
<ul class="info">
<li class="price">$580.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-6.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge rent">Rent</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Books & Magazine</a>
<h3 class="title">
<a href="item-details.html">Story Book</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>New York, USA</a></p>
<ul class="info">
<li class="price">$120.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

 </div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-7.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Electronic</a>
<h3 class="title">
<a href="item-details.html">Cctv camera</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Delhi, India</a></p>
<ul class="info">
<li class="price">$350.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-8.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Mobile</a>
<h3 class="title">
<a href="item-details.html">Samsung Glalaxy S8</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Delaware, USA</a></p>
<ul class="info">
<li class="price">$299.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
</div>
</div>
</div>
</div>
</div>
</div>
</section>


<section class="pricing-table section">
<div class="container">
<div class="row">
<div class="col-12">
<div class="section-title">
<h2 class="wow fadeInUp" data-wow-delay=".4s">Pricing Plan</h2>
 <p class="wow fadeInUp" data-wow-delay=".6s">There are many variations of passages of Lorem
Ipsum available, but the majority have suffered alteration in some form.</p>
</div>
</div>
</div>
<div class="row">
<div class="col-lg-4 col-md-6 col-12">

<div class="single-table wow fadeInUp" data-wow-delay=".2s">

<div class="table-head">
<div class="price">
<h2 class="amount">$00<span class="duration">/ Month</span></h2>
</div>
<h4 class="title">Free</h4>
</div>


<ul class="table-list">
<li>One Listing</li>
<li>Contact Display</li>
<li>Image Gallery</li>
<li>30 Days Availablity</li>
<li>Non-Featured</li>
<li>Business Tagline</li>
</ul>


<div class="button">
<a class="btn" href="javascript:void(0)">Select Plan</a>
</div>

</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-table wow fadeInUp" data-wow-delay=".4s">

<div class="table-head">
<div class="price">
<h2 class="amount">$59<span class="duration">/ Month</span></h2>
</div>
<h4 class="title">Standard</h4>
</div>


<ul class="table-list">
<li>One Listing</li>
<li>Contact Display</li>
<li>Image Gallery</li>
<li>60 Days Availablity</li>
<li>Non-Featured</li>
<li>Business Tagline</li>
</ul>


<div class="button">
<a class="btn" href="javascript:void(0)">Select Plan</a>
</div>

</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-table wow fadeInUp" data-wow-delay=".6s">

<div class="table-head">
<div class="price">
<h2 class="amount">$99<span class="duration">/ Month</span></h2>
</div>
<h4 class="title">Premium</h4>
</div>


<ul class="table-list">
<li>One Listing</li>
<li>Contact Display</li>
<li>Image Gallery</li>
 <li>90 Days Availablity</li>
<li>Non-Featured</li>
<li>Business Tagline</li>
</ul>


<div class="button">
<a class="btn" href="javascript:void(0)">Select Plan</a>
</div>

</div>

</div>
</div>
</div>
</section>


<section class="testimonials section">
<div class="container">
<div class="row">
<div class="col-12">
<div class="section-title align-center gray-bg">
<h2 class="wow fadeInUp" data-wow-delay=".4s">What People Say</h2>
<p class="wow fadeInUp" data-wow-delay=".6s">There are many variations of passages of Lorem
Ipsum available, but the majority have suffered alteration in some form.</p>
</div>
</div>
</div>
<div class="row testimonial-slider">
<div class="col-lg-4 col-md-6 col-12">

<div class="single-testimonial">
<div class="quote-icon">
<i class="lni lni-quotation"></i>
</div>
<div class="author">
<img src="assets/images/testimonial/testi1.jpg" alt="#">
<h4 class="name">
Jane Anderson
<span class="deg">Founder & CEO</span>
</h4>
</div>
<div class="text">
<p>"It’s amazing how much easier it has been to meet new people and create instant
connections. I have the exact same personality, the only thing that has changed is my
mindset and a few behaviors."</p>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-testimonial">
<div class="quote-icon">
<i class="lni lni-quotation"></i>
</div>
<div class="author">
<img src="assets/images/testimonial/testi2.jpg" alt="#">
<h4 class="name">
Devid Samuyel
<span class="deg">Web Developer</span>
</h4>
</div>
<div class="text">
<p>"It’s amazing how much easier it has been to meet new people and create instant
connections. I have the exact same personality, the only thing that has changed is my
mindset and a few behaviors."</p>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-testimonial">
<div class="quote-icon">
<i class="lni lni-quotation"></i>
</div>
<div class="author">
<img src="assets/images/testimonial/testi3.jpg" alt="#">
<h4 class="name">
Jully Sulli
<span class="deg">Ui/Ux Designer</span>
</h4>
</div>
<div class="text">
<p>"It’s amazing how much easier it has been to meet new people and create instant
connections. I have the exact same personality, the only thing that has changed is my
mindset and a few behaviors."</p>
</div>
</div>

</div>
</div>
</div>
</section>


<section class="how-works section">
<div class="container">
<div class="row">
<div class="col-12">
<div class="section-title">
<h2 class="wow fadeInUp" data-wow-delay=".4s">How it Works</h2>
<p class="wow fadeInUp" data-wow-delay=".6s">There are many variations of passages of Lorem
Ipsum available, but the majority have suffered alteration in some form.</p>
</div>
</div>
</div>
<div class="row">
<div class="col-lg-4 col-md-4 col-12">

<div class="single-work wow fadeInUp" data-wow-delay=".2s">
<span class="serial">01</span>
<h3>Create Account</h3>
<p>Lorem ipsum dolor sit amet constur adipisicing sed do eiusmod tempor incididunt labore.</p>
</div>

</div>
<div class="col-lg-4 col-md-4 col-12">

<div class="single-work wow fadeInUp" data-wow-delay=".4s">
<span class="serial">02</span>
<h3>Post Your Ads</h3>
<p>Lorem ipsum dolor sit amet constur adipisicing sed do eiusmod tempor incididunt labore.</p>
</div>

</div>
<div class="col-lg-4 col-md-4 col-12">

<div class="single-work wow fadeInUp" data-wow-delay=".6s">
<span class="serial">03</span>
<h3>Sell Your Item</h3>
<p>Lorem ipsum dolor sit amet constur adipisicing sed do eiusmod tempor incididunt labore.</p>
</div>

</div>
</div>
</div>
</section>


<div class="latest-news-area section">
<div class="container">
<div class="row">
<div class="col-12">
<div class="section-title">
<h2 class="wow fadeInUp" data-wow-delay=".4s">latest news</h2>
<p class="wow fadeInUp" data-wow-delay=".6s">There are many variations of passages of Lorem
Ipsum available, but the majority have suffered alteration in some form.</p>
</div>
</div>
</div>
<div class="row">
<div class="col-lg-4 col-md-6 col-12">

<div class="single-news wow fadeInUp" data-wow-delay=".3s">
<div class="image">
<a href="blog-single-sidebar.html"><img class="thumb" src="assets/images/blog/blog1.jpg" alt="#"></a>
 </div>
<div class="content-body">
<h4 class="title"><a href="blog-single-sidebar.html">10 Things Successful Mompreneurs Do
Different</a></h4>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis soluta libero molestiae,
id reiciendis ipsum. </p>
<div class="meta-details">
<ul>
<li><a href="javascript:void(0)">Jan 24,2023</a></li>
<li><a href="javascript:void(0)">Technology</a></li>
</ul>
</div>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-news wow fadeInUp" data-wow-delay=".5s">
<div class="image">
<a href="blog-single-sidebar.html"><img class="thumb" src="assets/images/blog/blog2.jpg" alt="#"></a>
</div>
<div class="content-body">
<h4 class="title"><a href="blog-single-sidebar.html">A digital prescription for the industry.</a>
</h4>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis soluta libero molestiae,
id reiciendis ipsum. </p>
<div class="meta-details">
<ul>
<li><a href="javascript:void(0)">Feb 20,2023</a></li>
<li><a href="javascript:void(0)">Magazine</a></li>
</ul>
</div>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-news wow fadeInUp" data-wow-delay=".7s">
<div class="image">
<a href="blog-single-sidebar.html"><img class="thumb" src="assets/images/blog/blog3.jpg" alt="#"></a>
</div>
<div class="content-body">
<h4 class="title"><a href="blog-single-sidebar.html">Strategic & commercial approach with
issues.</a></h4>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis soluta libero molestiae,
id reiciendis ipsum. </p>
<div class="meta-details">
<ul>
<li><a href="javascript:void(0)">Mar 15,2023</a></li>
<li><a href="javascript:void(0)">Technology</a></li>
</ul>
</div>
</div>
</div>

</div>
</div>
</div>
</div>


<div class="newsletter section">
<div class="container">
<div class="inner-content">
<div class="row align-items-center">
<div class="col-lg-6 col-md-6 col-12">
<div class="title">
<i class="lni lni-alarm"></i>
<h2>Newsletter</h2>
<p>We don't send spam so don't worry.</p>
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<div class="form">
<form action="#" method="get" target="_blank" class="newsletter-form">
<input name="EMAIL" placeholder="Your email address" type="email">
<div class="button">
<button class="btn">Subscribe<span class="dir-part"></span></button>
</div>
</form>
</div>
</div>
</div>
</div>
</div>
</div>


<footer class="footer">

<div class="footer-top">
<div class="container">
<div class="row">
<div class="col-lg-3 col-md-6 col-12">

<div class="single-footer mobile-app">
<h3>Mobile Apps</h3>
<div class="app-button">
<a href="javascript:void(0)" class="btn">
<i class="lni lni-play-store"></i>
<span class="text">
<span class="small-text">Get It On</span>
Google Play
</span>
</a>
<a href="javascript:void(0)" class="btn">
<i class="lni lni-apple"></i>
<span class="text">
<span class="small-text">Get It On</span>
App Store
</span>
</a>
</div>
</div>

</div>
<div class="col-lg-3 col-md-6 col-12">

<div class="single-footer f-link">
<h3>Locations</h3>
<div class="row">
<div class="col-lg-6 col-md-6 col-12">
<ul>
<li><a href="javascript:void(0)">Chicago</a></li>
<li><a href="javascript:void(0)">New York City</a></li>
<li><a href="javascript:void(0)">San Francisco</a></li>
<li><a href="javascript:void(0)">Washington</a></li>
<li><a href="javascript:void(0)">Boston</a></li>
</ul>
</div>
<div class="col-lg-6 col-md-6 col-12">
<ul>
<li><a href="javascript:void(0)">Los Angeles</a></li>
<li><a href="javascript:void(0)">Seattle</a></li>
<li><a href="javascript:void(0)">Las Vegas</a></li>
<li><a href="javascript:void(0)">San Diego</a></li>
</ul>
</div>
</div>
</div>

</div>
<div class="col-lg-3 col-md-6 col-12">

<div class="single-footer f-link">
<h3>Quick Links</h3>
<ul>
<li><a href="javascript:void(0)">About Us</a></li>
<li><a href="javascript:void(0)">How It's Works</a></li>
<li><a href="javascript:void(0)">Login</a></li>
<li><a href="javascript:void(0)">Signup</a></li>
<li><a href="javascript:void(0)">Help & Support</a></li>
</ul>
</div>

</div>
<div class="col-lg-3 col-md-6 col-12">

<div class="single-footer f-contact">
<h3>Contact</h3>
<ul>
<li>23 New Design Str, Lorem Upsum 10<br> Hudson Yards, USA</li>
<li>Tel. +(123) 1800-567-8990 <br> Mail. <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="196a6c6969766b6d597a75786a6a707e6b707d6a377a7674">[email&#160;protected]</a></li>
</ul>
</div>

</div>
</div>
</div>
</div>


<div class="footer-bottom">
<div class="container">
<div class="inner">
<div class="row">
<div class="col-12">
<div class="content">
<ul class="footer-bottom-links">
<li><a href="javascript:void(0)">Terms of use</a></li>
<li><a href="javascript:void(0)"> Privacy Policy</a></li>
<li><a href="javascript:void(0)">Advanced Search</a></li>
<li><a href="javascript:void(0)">Site Map</a></li>
<li><a href="javascript:void(0)">Information</a></li>
</ul>
<p class="copyright-text">Designed and Developed by <a href="https://graygrids.com/" rel="nofollow" target="_blank">GrayGrids</a>
</p>
<ul class="footer-social">
<li><a href="javascript:void(0)"><i class="lni lni-facebook-filled"></i></a></li>
<li><a href="javascript:void(0)"><i class="lni lni-twitter-original"></i></a></li>
<li><a href="javascript:void(0)"><i class="lni lni-youtube"></i></a></li>
<li><a href="javascript:void(0)"><i class="lni lni-linkedin-original"></i></a></li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>

</footer>


<a href="#" class="scroll-top btn-hover">
<i class="lni lni-chevron-up"></i>
</a>

<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/wow.min.js"></script>
<script src="resources/js/tiny-slider.js"></script>
<script src="resources/js/glightbox.min.js"></script>
<script src="resources/js/main.js"></script>
<script type="text/javascript">
        //========= Category Slider 
        tns({
            container: '.category-slider',
            items: 3,
            slideBy: 'page',
            autoplay: false,
            mouseDrag: true,
            gutter: 0,
            nav: false,
            controls: true,
            controlsText: ['<i class="lni lni-chevron-left"></i>', '<i class="lni lni-chevron-right"></i>'],
            responsive: {
                0: {
                    items: 1,
                },
                540: {
                    items: 2,
                },
                768: {
                    items: 4,
                },
                992: {
                    items: 5,
                },
                1170: {
                    items: 6,
                }
            }
        });
        
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
    </script>
</body>
</html>