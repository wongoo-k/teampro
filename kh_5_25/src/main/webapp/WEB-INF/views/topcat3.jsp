<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>Fashion Category</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon" type="image/x-icon" href="resources/images/plane.png" />

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
<img src="resources/images/logo/logo.svg" alt="Logo">
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
<li class="nav-item"><a href=".">Home Default</a></li>
<li class="nav-item"><a href="index2.html">Home Version 2</a></li>
<li class="nav-item"><a href="index3.html">Home Version 3</a></li>
</ul>
</li>
<li class="nav-item">
 <a href="category.html" class="active" aria-label="Toggle navigation">Categories</a>
</li>
<li class="nav-item">
<a class=" dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-3" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">Listings</a>
<ul class="sub-menu collapse" id="submenu-1-3">
<li class="nav-item"><a href="item-listing-grid.html">Ad Grid</a></li>
<li class="nav-item"><a href="item-listing-list.html">Ad Listing</a></li>
<li class="nav-item"><a href="item-details.html">Ad Details</a></li>
</ul>
</li>
<li class="nav-item">
<a class=" dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-4" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">Pages</a>
<ul class="sub-menu mega-menu collapse" id="submenu-1-4">
<li class="single-block">
<ul>
<li class="mega-menu-title">Essential Pages</li>
<li class="nav-item"><a href="about-us.html">About Us</a></li>
<li class="nav-item"><a href="item-details.html">Ads Details</a></li>
<li class="nav-item"><a href="post-item.html">Ads Post</a></li>
<li class="nav-item"><a href="pricing.html">Pricing Table</a></li>
<li class="nav-item"><a href="registration.html">Sign Up</a></li>
<li class="nav-item"><a href="login.html">Sign In</a></li>
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
<a class=" dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-5" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">Blog</a>
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
<li>
<a href="login.html"><i class="lni lni-enter"></i> Login</a>
</li>
<li>
<a href="registration.html"><i class="lni lni-user"></i> Register</a>
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


<div class="breadcrumbs">
<div class="container">
<div class="row align-items-center">
<div class="col-lg-6 col-md-6 col-12">
<div class="breadcrumbs-content">
<h1 class="page-title">Fashion Category</h1>
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<ul class="breadcrumb-nav">
<li><a href="index.html">Home</a></li>
<li>category</li>
</ul>
</div>
</div>
</div>
</div>


<section class="category-page section">
<div class="container">
<div class="row">
<div class="col-lg-3 col-md-4 col-12">
<div class="category-sidebar">

<div class="single-widget search">
<h3>Search Ads</h3>
<form action="#">
<input type="text" placeholder="Search Here...">
<button type="submit"><i class="lni lni-search-alt"></i></button>
</form>
</div>


<div class="single-widget">
<h3>All Categories</h3>
<ul class="list">
<li>
<a href="javascript:void(0)"><i class="lni lni-control-panel"></i> Food <span>20</span></a>
</li>
<li>
<a href="javascript:void(0)"><i class="lni lni-bullhorn"></i> Beauty <span>55</span></a>
</li>
</ul>
</div>


<div class="single-widget range">
<h3>Price Range</h3>
<input type="range" class="form-range" name="range" step="1" min="100" max="10000" value="10" onchange="rangePrimary.value=value">
<div class="range-inner">
<label>$</label>
<input type="text" id="rangePrimary" placeholder="100" />
</div>
</div>


<div class="single-widget condition">
<h3>Condition</h3>
<div class="form-check">
<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault1">
<label class="form-check-label" for="flexCheckDefault1">
All
</label>
</div>
<div class="form-check">
<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault2">
<label class="form-check-label" for="flexCheckDefault2">
New
</label>
</div>
<div class="form-check">
<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault3">
<label class="form-check-label" for="flexCheckDefault3">
 Used
</label>
</div>
</div>


<div class="single-widget banner">
<h3>Advertisement</h3>
<a href="javascript:void(0)">
<img src="resources/images/banner/banner.jpg" alt="#">
</a>
</div>

</div>
</div>
<div class="col-lg-9 col-md-8 col-12">
<div class="category-grid-list">
<div class="row">
<div class="col-12">
<div class="category-grid-topbar">
<div class="row align-items-center">
<div class="col-lg-6 col-md-6 col-12">
<h3 class="title">Showing 1-12 of 21 ads found</h3>
</div>
<div class="col-lg-6 col-md-6 col-12">
<nav>
<div class="nav nav-tabs" id="nav-tab" role="tablist">
<button class="nav-link active" id="nav-grid-tab" data-bs-toggle="tab" data-bs-target="#nav-grid" type="button" role="tab" aria-controls="nav-grid" aria-selected="true"><i class="lni lni-grid-alt"></i></button>
<button class="nav-link" id="nav-list-tab" data-bs-toggle="tab" data-bs-target="#nav-list" type="button" role="tab" aria-controls="nav-list" aria-selected="false"><i class="lni lni-list"></i></button>
</div>
</nav>
</div>
</div>
</div>
<div class="tab-content" id="nav-tabContent">
<div class="tab-pane fade show active" id="nav-grid" role="tabpanel" aria-labelledby="nav-grid-tab">
<div class="row">

<div class="col-lg-4 col-md-6 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pg0KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDE5LjAuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPg0KPHN2ZyB2ZXJzaW9uPSIxLjEiIGlkPSJDYXBhXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4Ig0KCSB2aWV3Qm94PSIwIDAgNDA3LjcgNDA3LjciIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDQwNy43IDQwNy43OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+DQo8Zz4NCgk8Zz4NCgkJPHBhdGggZD0iTTQwNS41LDExOC4wMjFjLTAuMDk0LTAuMDk5LTAuMTkxLTAuMTk2LTAuMjktMC4yOWwtODQuMTYtNzQuOGMtMC43NjgtMC43LTEuNjY0LTEuMjQzLTIuNjQtMS42bC02MC44OC0yMS43Ng0KCQkJYy00LjE1My0xLjUwOC04Ljc0MiwwLjYzNy0xMC4yNSw0Ljc5Yy0wLjI3MiwwLjc0OS0wLjQzLDEuNTM0LTAuNDcsMi4zM2MwLDEuNzYtMi42NCw0Mi4zMi00My4yLDQyLjk2DQoJCQljLTQwLjgtMC42NC00My4zNi00MS4yLTQzLjQ0LTQyLjk2Yy0wLjIzNi00LjQxMi00LjAwNC03Ljc5Ny04LjQxNi03LjU2MWMtMC43NTgsMC4wNDEtMS41MDcsMC4xODktMi4yMjQsMC40NDFsLTYwLjgsMjINCgkJCWMtMC45NzYsMC4zNTctMS44NzIsMC45LTIuNjQsMS42bC04My42LDc0LjU2Yy0zLjIwMywzLjA0My0zLjMzMyw4LjEwNy0wLjI5LDExLjMxYzAuMDk0LDAuMDk5LDAuMTkxLDAuMTk2LDAuMjksMC4yOQ0KCQkJbDY2LjU2LDY3LjI4djE4NGMwLDQuNDE4LDMuNTgyLDgsOCw4aDI1My42YzQuNDE4LDAsOC0zLjU4Miw4LTh2LTE4NGw2Ni41Ni02Ny4yOEM0MDguNDEzLDEyNi4yODgsNDA4LjU0MywxMjEuMjI1LDQwNS41LDExOC4wMjENCgkJCXogTTMzOC40MSwxNzMuODExdi0zNy4xMmMwLTQuNDE4LTMuNTgyLTgtOC04cy04LDMuNTgyLTgsOHYyMzUuNTJIODQuNzN2LTIzNS41MmMwLTQuNDE4LTMuNTgyLTgtOC04cy04LDMuNTgyLTgsOHYzNy4yDQoJCQlsLTQ5LjItNDkuODRsNzYuMTYtNjguMTZsNTAuMDgtMTguMDhjNi4yMDQsMzEuOTY2LDM3LjE0Nyw1Mi44NTEsNjkuMTEzLDQ2LjY0N2MyMy42MDctNC41ODIsNDIuMDY1LTIzLjA0LDQ2LjY0Ny00Ni42NDcNCgkJCWw1MC4wOCwxOC4wOGw3NS45Miw2OC4xNkwzMzguNDEsMTczLjgxMXoiLz4NCgk8L2c+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8L3N2Zz4NCg==" alt="fashion" /></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Fashion</a>
<h3 class="title">
<a href="item-details.html">흰티셔츠</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Las Vegas</a></p>
<ul class="info">
<li class="price">11000&#8361;</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pg0KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDE4LjAuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPg0KPCFET0NUWVBFIHN2ZyBQVUJMSUMgIi0vL1czQy8vRFREIFNWRyAxLjEvL0VOIiAiaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkIj4NCjxzdmcgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiIHk9IjBweCINCgkgdmlld0JveD0iMCAwIDI5NS41MjYgMjk1LjUyNiIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgMjk1LjUyNiAyOTUuNTI2OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+DQo8Zz4NCgk8cGF0aCBkPSJNMTQ3Ljc2Myw0NC4wNzRjMTIuODAxLDAsMjMuODU4LTguMTYyLDI3LjgzLTIwLjE2OWMtNy41NzgsMi4wODYtMTcuMjM3LDMuMzQ1LTI3LjgzLDMuMzQ1DQoJCWMtMTAuNTkyLDAtMjAuMjUxLTEuMjU5LTI3LjgyOC0zLjM0NUMxMjMuOTA1LDM1LjkxMSwxMzQuOTYxLDQ0LjA3NCwxNDcuNzYzLDQ0LjA3NHoiLz4NCgk8cGF0aCBkPSJNMjk1LjE1OCw1OC44MzljLTAuNjA4LTEuNzA2LTEuODczLTMuMTA5LTMuNTIxLTMuODczbC01Ni4zNDMtMjYuMDFjLTExLjk4NS00LjA2LTI0LjE5NS03LjI2Ny0zNi41MjQtOS42MTENCgkJYy0wLjQzNC0wLjA4NS0wLjg2Ni0wLjEyNi0xLjI5Mi0wLjEyNmMtMy4wNTIsMC01Ljc4NSwyLjEwNy02LjQ2NSw1LjE5N2MtNC41MDIsMTkuODItMjIuMDQ3LDM0LjY1OS00My4yNTEsMzQuNjU5DQoJCWMtMjEuMjAzLDAtMzguNzQ5LTE0LjgzOC00My4yNS0zNC42NTljLTAuNjg4LTMuMDktMy40MTYtNS4xOTctNi40NjYtNS4xOTdjLTAuNDI2LDAtMC44NTgsMC4wNDEtMS4yOTIsMC4xMjYNCgkJYy0xMi4zMjgsMi4zNDQtMjQuNTM4LDUuNTUxLTM2LjU0Miw5LjYxMUwzLjg4OSw1NC45NjVjLTEuNjU4LDAuNzY0LTIuOTMyLDIuMTY3LTMuNTExLDMuODczDQoJCWMtMC41OTksMS43MjYtMC40OTEsMy41ODksMC4zNTMsNS4yMTdsMjQuNDYsNDguMjcyYzEuMTQ1LDIuMjkxLDMuNDc0LDMuNjY2LDUuOTM4LDMuNjY2YzAuNjM2LDAsMS4yODEtMC4wOTIsMS45MTctMC4yODMNCgkJbDI3LjE2Ny04LjA1MnYxNjEuOTdjMCwzLjY3OCwzLjAwMSw2LjY3OCw2LjY4OSw2LjY3OGgxNjEuNzIzYzMuNjc4LDAsNi42Ny0zLjAwMSw2LjY3LTYuNjc4VjEwNy42NmwyNy4xODYsOC4wNTINCgkJYzAuNjM2LDAuMTkxLDEuMjgsMC4yODMsMS45MTUsMC4yODNjMi40NTksMCw0Ljc3OS0xLjM3NSw1Ljk0LTMuNjY2bDI0LjQ2OS00OC4yNzJDMjk1LjYyOSw2Mi40MjgsMjk1Ljc0Nyw2MC41NjUsMjk1LjE1OCw1OC44Mzl6DQoJCSIvPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPC9zdmc+DQo=" /></a>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Fashion</a>
<h3 class="title"> 
 <a href="item-details.html">검정티셔츠</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Alaska, USA</a></p>
<ul class="info">
<li class="price">15000&#8361;</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="data:image/svg+xml;base64,PHN2ZyBpZD0iQ2FwYV8xIiBlbmFibGUtYmFja2dyb3VuZD0ibmV3IDAgMCA1MTIgNTEyIiBoZWlnaHQ9IjUxMiIgdmlld0JveD0iMCAwIDUxMiA1MTIiIHdpZHRoPSI1MTIiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGc+PGc+PGc+PHBhdGggZD0ibTM5MS4xMTUgMTUyLjMwOSA5Ny4zOTEgOTQuNTc1YzEwLjM2NSAxMC4wNjUgNy42NDUgMjcuMzU3LTUuMzA4IDMzLjc1NGwtMTI3LjA4MiA2Mi43NjUgMjIuNDgtMTg2LjY2M2MuNzMzLTYuMDg4IDguMTItOC43MDMgMTIuNTE5LTQuNDMxeiIgZmlsbD0iIzk3OGVjYiIvPjwvZz48Zz48cGF0aCBkPSJtMTIwLjg4NSAxNTIuMzA5LTk3LjM5MSA5NC41NzVjLTEwLjM2NCAxMC4wNjUtNy42NDUgMjcuMzU3IDUuMzA4IDMzLjc1NGwxMjcuMDgyIDYyLjc2NS0yMi40NzktMTg2LjY2M2MtLjczNC02LjA4OC04LjEyMS04LjcwMy0xMi41Mi00LjQzMXoiIGZpbGw9IiM5NzhlY2IiLz48L2c+PC9nPjxwYXRoIGQ9Im0yNTcuMDQ2IDIxMC45NDZjMzQuODE3IDAgNjMuMDQxLTI4LjIyNCA2My4wNDEtNjMuMDQxdi0yNi4wMjNsLTUuMjUxIDIuNjEzLTIxLjAwMiAxMC40NTFjLTIzLjE3IDExLjUzLTUwLjQwNiAxMS41My03My41NzYgMGwtMjYuMjIyLTEzLjA0OC0uMDMxLS4wMTZ2MjYuMDIzYzAgMzQuODE3IDI4LjIyNCA2My4wNDEgNjMuMDQxIDYzLjA0MXoiIGZpbGw9IiM5NzhlY2IiLz48cGF0aCBkPSJtMzU2LjQyMiAxNDguMzQ5LTkyLjEzOS02Ny4wODN2LTI0LjUwNWMxNC4yMjctLjgxMyAyNS41NTItMTIuNjI4IDI1LjU1Mi0yNy4wMzN2LTEuOTA0YzAtMTUuMzQyLTEyLjUtMjcuODIzLTI3Ljg2NS0yNy44MjNoLTEuNTk5Yy0xNS4zNjUgMC0yNy44NjUgMTIuNDgxLTI3Ljg2NSAyNy44MjMgMCA0LjI4MiAzLjQ3MSA3Ljc1NCA3Ljc1NCA3Ljc1NHM3Ljc1NC0zLjQ3MiA3Ljc1NC03Ljc1NGMwLTYuNzkxIDUuNTQzLTEyLjMxNSAxMi4zNTYtMTIuMzE1aDEuNTk5YzYuODEzIDAgMTIuMzU2IDUuNTI0IDEyLjM1NiAxMi4zMTV2MS45MDRjMCA2LjM3OS01LjIwOCAxMS41NjktMTEuNjA5IDExLjU2OS03LjY4OCAwLTEzLjk0MyA2LjI0OS0xMy45NDMgMTMuOTI5djI1LjMzNGwtODMuODQ3IDYzLjEwNmMtMy40MjIgMi41NzYtNC4xMDggNy40MzctMS41MzMgMTAuODU5IDIuNTc0IDMuNDIxIDcuNDM2IDQuMTA5IDEwLjg1OCAxLjUzMmw4MS44MjUtNjEuNTgzIDkxLjIxOCA2Ni40MTJjMS4zNzcgMS4wMDMgMi45NzQgMS40ODYgNC41NTggMS40ODYgMi4zOTUgMCA0Ljc1OC0xLjEwNiA2LjI3NS0zLjE5MSAyLjUyLTMuNDYyIDEuNzU3LTguMzEyLTEuNzA1LTEwLjgzMnoiIGZpbGw9IiNlMTk5NzQiLz48cGF0aCBkPSJtMzgxLjU4OCAxNjcuMTUyIDE1LjUwOCAxNTUuMzd2MTY4Ljc5OWMwIDExLjQyNC05LjI2NCAyMC42NzgtMjAuNjc4IDIwLjY3OGgtMjQwLjgzN2MtMTEuNDE0IDAtMjAuNjc4LTkuMjU0LTIwLjY3OC0yMC42Nzh2LTMyNC4wMjRjMC04LjQ3OCA1LjE4LTE2LjA5OCAxMy4wNTgtMTkuMjIxbDY2LjA0Ni0yNi4xOTl2MjYuMDIzYzAgMzQuODIyIDI4LjIyNiA2My4wNDcgNjMuMDM3IDYzLjA0NyAzNC44MjIgMCA2My4wNDctMjguMjI1IDYzLjA0Ny02My4wNDd2LTI2LjAyM2w2NC4xMjIgMjYuMTI3YzcuNzg2IDMuMTc0LTIuNjI1IDEwLjc0My0yLjYyNSAxOS4xNDh6IiBmaWxsPSIjYWNhNmQ2Ii8+PGc+PHBhdGggZD0ibTM4NC4yMTQgMTQ4LjAwNS0yMi42MzItOS4yMjJjMi44NDkgMy41ODMgNC40OTggOC4wODUgNC40OTggMTIuODYxdjEzMi40NTFjMCAxMTcuMzA0LTk1LjA5MyAyMTIuMzk3LTIxMi4zOTcgMjEyLjM5N2gtMzguMTAxYzIuMyA4LjkxNiAxMC4zNzMgMTUuNTA5IDIwIDE1LjUwOWgyNDAuODM3YzExLjQyIDAgMjAuNjc4LTkuMjU4IDIwLjY3OC0yMC42Nzh2LTMyNC4xNzFjLS4wMDEtOC40MDUtNS4wOTgtMTUuOTc0LTEyLjg4My0xOS4xNDd6IiBmaWxsPSIjOTc4ZWNiIi8+PC9nPjxnIGZpbGw9IiNmZmYiPjxwYXRoIGQ9Im0yNTguOTQ5IDMxMy44NzQtMjEuNjcxIDkuMzE1Yy0xLjU5My42ODUtMi44MDYgMi4wMzQtMy4zMTkgMy42OTFsLTYuOTcxIDIyLjUzNWMtMS42MjcgNS4yNi04LjkyNCA1LjY0Ny0xMS4wOTguNTg5bC05LjMxNi0yMS42NzFjLS42ODUtMS41OTMtMi4wMzQtMi44MDYtMy42OTEtMy4zMTlsLTIyLjUzNS02Ljk3MWMtNS4yNi0xLjYyNy01LjY0Ny04LjkyNC0uNTg5LTExLjA5OWwyMS42NzEtOS4zMTVjMS41OTMtLjY4NSAyLjgwNi0yLjAzNCAzLjMxOS0zLjY5MWw2Ljk3MS0yMi41MzVjMS42MjctNS4yNiA4LjkyNC01LjY0NyAxMS4wOTgtLjU4OWw5LjMxNiAyMS42NzFjLjY4NSAxLjU5MyAyLjAzNCAyLjgwNyAzLjY5MSAzLjMxOWwyMi41MzUgNi45NzFjNS4yNjEgMS42MjcgNS42NDggOC45MjQuNTg5IDExLjA5OXoiLz48cGF0aCBkPSJtMzEzLjEzIDQyMS43NDYtMTcuMzcyIDcuNDY4Yy0xLjI3Ny41NDktMi4yNSAxLjYzLTIuNjYxIDIuOTU4bC01LjU4OCAxOC4wNjVjLTEuMzA0IDQuMjE3LTcuMTU0IDQuNTI3LTguODk3LjQ3MmwtNy40NjgtMTcuMzcyYy0uNTQ5LTEuMjc3LTEuNjMtMi4yNS0yLjk1OC0yLjY2MWwtMTguMDY1LTUuNTg4Yy00LjIxNy0xLjMwNC00LjUyNy03LjE1NC0uNDcyLTguODk3bDE3LjM3Mi03LjQ2OGMxLjI3Ny0uNTQ5IDIuMjUtMS42MyAyLjY2LTIuOTU5bDUuNTg4LTE4LjA2NWMxLjMwNC00LjIxNyA3LjE1NC00LjUyNyA4Ljg5Ny0uNDcybDcuNDY4IDE3LjM3MmMuNTQ5IDEuMjc3IDEuNjMgMi4yNSAyLjk1OSAyLjY2bDE4LjA2NSA1LjU4OGM0LjIxNiAxLjMwNiA0LjUyNyA3LjE1Ni40NzIgOC44OTl6Ii8+PC9nPjwvZz48L3N2Zz4=" alt="fashion"></a>
<i class=" cross-badge lni lni-bolt"></i>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Fashion</a>
<h3 class="title">
<a href="item-details.html">샤이닝티셔츠</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>New York, USA</a></p>
<ul class="info">
<li class="price">20000&#8361;</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pg0KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDE5LjAuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPg0KPHN2ZyB2ZXJzaW9uPSIxLjEiIGlkPSJDYXBhXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4Ig0KCSB2aWV3Qm94PSIwIDAgNTEyLjA4MSA1MTIuMDgxIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MTIuMDgxIDUxMi4wODE7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4NCjxwYXRoIHN0eWxlPSJmaWxsOiMwM0E5RjQ7IiBkPSJNNDQzLjk2Niw0NS4wM0M0MDkuNjQxLDE4LjA0NCwzMzYuMTksMS4wNjIsMzMzLjA3NSwwLjM1OGMtNS43NDQtMS4zMDgtMTEuNDYxLDIuMjg4LTEyLjc2OCw4LjAzMg0KCWMtMC4xNzYsMC43NzMtMC4yNjUsMS41NjQtMC4yNjYsMi4zNTdjMCwxNC40LTI5LjU0NywzMi02NCwzMnMtNjQtMTcuNi02NC0zMmMwLjAwMi0zLjI0Ni0xLjQ3NC02LjMxNi00LjAxMS04LjM0MQ0KCWMtMi41MDgtMi4wODUtNS44NDgtMi44NzUtOS4wMjQtMi4xMzNjLTMuMTE1LDAuNzA0LTc2LjU0NCwxNy43MDctMTEwLjkzMyw0NC42NzJDMzIuNTUzLDcyLjk3NywyMi40NDEsMjA4LjA2LDIxLjM3NCwyMjMuMzU2DQoJYy0wLjI5Miw0LjM0NywyLjA5LDguNDM1LDYuMDE2LDEwLjMyNWMyNS4wNjIsMTEuNjA2LDUxLjg1NiwxOS4wMjgsNzkuMzE3LDIxLjk3M3YyMjQuNDI3YzAuMDA3LDMuOTQ0LDIuMTg5LDcuNTYyLDUuNjc1LDkuNDA4DQoJYzEuNzI4LDAuOTM5LDQzLjYwNSwyMi41OTIsMTQzLjY1OSwyMi41OTJzMTQxLjkzMS0yMS42NTMsMTQzLjY1OS0yMi41OTJjMy40ODUtMS44NDYsNS42NjgtNS40NjQsNS42NzUtOS40MDhWMjU1LjY1NA0KCWMyNy40NTQtMi45NDcsNTQuMjQtMTAuMzcsNzkuMjk2LTIxLjk3M2MzLjkzNC0xLjg4NCw2LjMyNS01Ljk3Myw2LjAzNy0xMC4zMjVDNDg5LjY0MSwyMDguMDYsNDc5LjUyOSw3Mi45NzcsNDQzLjk2Niw0NS4wM3oiLz4NCjxnPg0KCTxwYXRoIHN0eWxlPSJmaWxsOiMwMjg4RDE7IiBkPSJNMTE3LjM3NCwyNTYuMDgxYy01Ljg5MSwwLTEwLjY2Ny00Ljc3Ni0xMC42NjctMTAuNjY3di02NGMwLjg3Mi0yMC4zODktNS41OTEtNDAuNDE2LTE4LjIxOS01Ni40NDgNCgkJYy00LjA5Mi00LjIzNy0zLjk3NS0xMC45OSwwLjI2Mi0xNS4wODNjNC4xMzQtMy45OTIsMTAuNjg3LTMuOTkyLDE0LjgyLDBjMTYuODE1LDE5Ljk0NCwyNS41NDUsNDUuNDY2LDI0LjQ2OSw3MS41MzF2NjQNCgkJQzEyOC4wNDEsMjUxLjMwNSwxMjMuMjY1LDI1Ni4wODEsMTE3LjM3NCwyNTYuMDgxeiIvPg0KCTxwYXRoIHN0eWxlPSJmaWxsOiMwMjg4RDE7IiBkPSJNMzk0LjcwNywyNTYuMDgxYy01Ljg5MSwwLTEwLjY2Ny00Ljc3Ni0xMC42NjctMTAuNjY3di02NA0KCQljLTEuMDg3LTI2LjA2OSw3LjYzNi01MS41OTksMjQuNDQ4LTcxLjU1MmM0LjA5My00LjIzNywxMC44NDUtNC4zNTUsMTUuMDgzLTAuMjYyYzQuMjM3LDQuMDkzLDQuMzU0LDEwLjg0NSwwLjI2MiwxNS4wODMNCgkJYy0wLjA4NiwwLjA4OS0wLjE3MywwLjE3Ni0wLjI2MiwwLjI2MmMtMTIuNjI1LDE2LjA0MS0xOS4wODEsMzYuMDc2LTE4LjE5Nyw1Ni40Njl2NjQNCgkJQzQwNS4zNzQsMjUxLjMwNSw0MDAuNTk4LDI1Ni4wODEsMzk0LjcwNywyNTYuMDgxeiIvPg0KPC9nPg0KPHBhdGggc3R5bGU9ImZpbGw6IzE5NzZEMjsiIGQ9Ik0zMzcuNDkxLDIuNTM0Yy0yLjQzNy0yLjA0NC01LjY2OC0yLjg3NS04Ljc4OS0yLjI2MUMzMDQuNyw1LjE0LDI4MC40NCw4LjYzNywyNTYuMDQxLDEwLjc0OA0KCWMtMjQuNC0yLjExLTQ4LjY1OS01LjYwNy03Mi42NjEtMTAuNDc1Yy0zLjEyMS0wLjYxMS02LjM1MSwwLjIyLTguNzg5LDIuMjYxYy0yLjQ1NCwyLjAyMi0zLjg3Nyw1LjAzNC0zLjg4Myw4LjIxMw0KCWMwLDMyLDQ0LjExNyw1My4zMzMsODUuMzMzLDUzLjMzM3M4NS4zMzMtMjEuMzMzLDg1LjMzMy01My4zMzNDMzQxLjM2OSw3LjU2OCwzMzkuOTQ1LDQuNTU2LDMzNy40OTEsMi41MzR6Ii8+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8L3N2Zz4NCg=="  alt="fashion"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Fashion</a>
 <h3 class="title">
<a href="item-details.html">파란티셔츠</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Delhi, India</a></p>
<ul class="info">
<li class="price">10000&#8361;</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="data:image/svg+xml;base64,PHN2ZyBpZD0iTGF5ZXJfMSIgZW5hYmxlLWJhY2tncm91bmQ9Im5ldyAwIDAgNTEyIDUxMiIgaGVpZ2h0PSI1MTIiIHZpZXdCb3g9IjAgMCA1MTIgNTEyIiB3aWR0aD0iNTEyIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxnPjxnIGNsaXAtcnVsZT0iZXZlbm9kZCIgZmlsbC1ydWxlPSJldmVub2RkIj48cGF0aCBkPSJtMTcxLjk0MiAzOS44MTEtMi4yOTkgOTMuNTExIDU5Ljk0Mi0xNy40ODItMjguNzIxLTEwNS44NC0yOC41MTggMTMuMzc3eiIgZmlsbD0iI2ZmYzE0NCIvPjxwYXRoIGQ9Im0yMjkuNTg1IDExNS44NC01OS45NDIgMTcuNDgyIDIuMjk5LTkzLjUxMS01MC41MzIgMTguMTUzYy0xMS41MzQgNS44MDEtMTcuMDI3IDExLjI5NC0yMi4zOCAyMy4wMTEtNS43MyAxMi41NDUtMTEuMjk2IDI0LjcyOS0xNi43ODUgMzYuNzQ0IDIyLjg2OS0xMC42NjIgMjIuMTc0IDE1LjQwNiA0OC41MTYgMTYuMjI1IDAgMC02LjUxOSAzNS4xMDktNjQuNSAxOC43NjktOS44OSAyMS42NTEtMTkuODAyIDQzLjM1MS0zMC4yNjIgNjYuMjQ5bDgwLjAwMyA1MC4wMDJ2LTIyLjJjMTYuMzcxLTE5LjIgMjYuNTcxIDQuOCA1MC44NzEtNS40IDAgMCA4LjY1OCAzNC42NDMtNTAuODcxIDQzLjg3MnYxMTguOTI5bC0xMCA2Ny44MzYgMTAyLjQ3OCAyOS45OTkgMjEuMTA1LTEwdi00MC4wMDEtNzUuMjY0Yy0xNi4zNzEgMTkuMi0yNi41NzEtNC44LTUwLjg3MSA1LjQgMCAwLTguNjU4LTM0LjY0MyA1MC44NzEtNDMuODcxeiIgZmlsbD0iI2ZmY2Q2OSIvPjxnIGZpbGw9IiM1Y2QwYjMiPjxwYXRoIGQ9Im02Ni4yNjIgMTUyLjcxM2M1Ny45ODIgMTYuMzQgNjQuNS0xOC43NjkgNjQuNS0xOC43NjktMjYuMzQxLS44MTgtMjUuNjQ3LTI2Ljg4Ny00OC41MTYtMTYuMjI1LTUuMzc2IDExLjc2OS0xMC42NzcgMjMuMzc1LTE1Ljk4NCAzNC45OTR6Ii8+PHBhdGggZD0ibTE2Ni44NzQgMjQxLjM2M2MtMjQuMyAxMC4yLTM0LjUtMTMuOC01MC44NzEgNS40djIyLjIgMTYuMjcxYzU5LjUyOS05LjIyOCA1MC44NzEtNDMuODcxIDUwLjg3MS00My44NzF6Ii8+PHBhdGggZD0ibTIyOS41ODUgMzM4LjI2M2MtNTkuNTI5IDkuMjI4LTUwLjg3MSA0My44NzEtNTAuODcxIDQzLjg3MSAyNC4zLTEwLjIgMzQuNSAxMy44IDUwLjg3MS01LjR6Ii8+PHBhdGggZD0ibTI4Mi40MTUgMzcwLjU5MnYzOC40NzJjNTkuNTI5LTkuMjI5IDUwLjg3MS00My44NzIgNTAuODcxLTQzLjg3Mi0yNC4zIDEwLjItMzQuNS0xMy44LTUwLjg3MSA1LjR6Ii8+PC9nPjxwYXRoIGQ9Im0yODIuNDE1IDM3MC41OTJjMTYuMzcxLTE5LjIgMjYuNTcxIDQuOCA1MC44NzEtNS40IDAgMCA4LjY1OCAzNC42NDMtNTAuODcxIDQzLjg3MnY0Mi45MzUgNDAuMDAxbDIxLjEwNSAxMCAxMDIuNDc3LTMwLjAwMS0xMC02Ny44MzZ2LTEwOC42NzZjLTE2LjM3MSAxOS4yLTI2LjU3MS00LjgtNTAuODcxIDUuNCAwIDAtOC42NTgtMzQuNjQzIDUwLjg3MS00My44NzJ2MTEuOTQ4bDgwLjAwMy01MC4wMDFjLTIxLjgwMy00Ny43MzEtNDEuMjI4LTkwLjI1NS02My4wMzEtMTM3Ljk4Ni01LjM1My0xMS43MTctMTAuODQ1LTE3LjIxLTIyLjM4LTIzLjAxMWwtNTAuNTMxLTE4LjE1NCAyLjI5OSA5My41MTEtNTkuOTQyLTE3LjQ4MnY0OC44MzdjNTkuNTI5IDkuMjI5IDUwLjg3MSA0My44NzEgNTAuODcxIDQzLjg3MS0yNC4zLTEwLjItMzQuNSAxMy44LTUwLjg3MS01LjR6IiBmaWxsPSIjZmZjZDY5Ii8+PHBhdGggZD0ibTM0NS4xMjYgMzAwLjg4N2MyNC4zLTEwLjIgMzQuNSAxMy44IDUwLjg3MS01LjR2LTI2LjUyMy0xMS45NDhjLTU5LjUyOSA5LjIyOC01MC44NzEgNDMuODcxLTUwLjg3MSA0My44NzF6IiBmaWxsPSIjNWNkMGIzIi8+PHBhdGggZD0ibTI4Mi40MTUgMjAzLjE0OWMxNi4zNzEgMTkuMiAyNi41NzEtNC44IDUwLjg3MSA1LjQgMCAwIDguNjU4LTM0LjY0My01MC44NzEtNDMuODcxeiIgZmlsbD0iIzVjZDBiMyIvPjxwYXRoIGQ9Im0yODIuNDE1IDExNS44NCA1OS45NDIgMTcuNDgyLTIuMjk5LTkzLjUxMS0uNDA0LTE2LjQzNC0yOC41MTktMTMuMzc3eiIgZmlsbD0iI2ZmYzE0NCIvPjxwYXRoIGQ9Im0yODIuNDE1IDExNS44NCAyOC43Mi0xMDUuODRjLTE2Ljc2MyA4Ljc0NS0zNS43NzkgMTMuMzQ5LTU1LjEzNSAxMy4zNDktMTkuMzU3IDAtMzguMzcyLTQuNjA0LTU1LjEzNS0xMy4zNDlsMjguNzIxIDEwNS44NHYyMjIuNDIzIDM4LjQ3MSA3NS4yNjRoNTIuODN2LTQyLjkzNS0zOC40NzItMTY3LjQ0Mi0zOC40NzEtNDguODM4eiIgZmlsbD0iI2ZmZGE4ZiIvPjwvZz48Zz48cGF0aCBkPSJtNDg1LjA5NiAyMTQuODA3LTYzLjAzMS0xMzcuOTg3Yy02LjIyNy0xMy42MzEtMTMuMjg3LTIwLjkwMi0yNi45ODItMjcuNzktLjM2MS0uMTgyLS43MzItLjM0MS0xLjExMi0uNDc4bC00NC4wODQtMTUuODM3LS4yMzUtOS41ODVjLS4wOTMtMy43ODgtMi4zMTktNy4xOTgtNS43NS04LjgwOGwtMjguNTItMTMuMzc2Yy0yLjY3Ni0xLjI1NC01Ljc2OS0xLjI2MS04LjQ0OC0uMDIxLS40MDIuMTg2LS43ODMuNDA1LTEuMTUyLjYzOS0uMjY5LjEwNy0uNTM2LjIxOS0uNzk5LjM1MS0xNC45MzcgNy40ODEtMzEuODc1IDExLjQzNS00OC45ODMgMTEuNDM1cy0zNC4wNDYtMy45NTQtNDguOTgzLTExLjQzNGMtLjI2Mi0uMTMxLS41MjktLjI0NC0uNzk3LS4zNS0uMzctLjIzNS0uNzUxLS40NTQtMS4xNTMtLjY0LTIuNjgxLTEuMjQxLTUuNzc0LTEuMjM0LTguNDQ4LjAyMWwtMjguNTE5IDEzLjM3N2MtMy40MzEgMS42MDktNS42NTcgNS4wMi01Ljc1IDguODA4bC0uMjM2IDkuNTg1LTQ0LjA4NCAxNS44MzZjLS4zOC4xMzctLjc1MS4yOTYtMS4xMTIuNDc4LTEzLjY5NCA2Ljg4Ny0yMC43NTUgMTQuMTU5LTI2Ljk4MiAyNy43OWwtNjMuMDMyIDEzNy45ODZjLTIuMDg2IDQuNTY3LS40NjIgOS45NzQgMy43OTYgMTIuNjM2bDc1LjMwMyA0Ny4wNjN2MTI4LjkyNGwtOS44OTQgNjcuMTExYy0uNzI4IDQuOTM2IDIuMjk1IDkuNjUzIDcuMDgzIDExLjA1NmwxMDIuNDc4IDMwLjAwMWMuOTIuMjY5IDEuODY2LjQwMiAyLjgxLjQwMiAxLjQ2OSAwIDIuOTMzLS4zMjQgNC4yODItLjk2M2wyMS4xMDUtMTBjMy40OTItMS42NTQgNS43MTgtNS4xNzMgNS43MTgtOS4wMzd2LTMwLjAwMmgzMi44MjkuMDAxdjMwLjAwMmMwIDMuODY0IDIuMjI3IDcuMzgzIDUuNzE4IDkuMDM3bDIxLjEwNCAxMGMxLjM1LjYzOSAyLjgxMy45NjMgNC4yODIuOTYzLjk0MyAwIDEuODktLjEzNCAyLjgxLS40MDJsMTAyLjQ3OC0zMC4wMDFjNC43ODktMS40MDIgNy44MTItNi4xMiA3LjA4NC0xMS4wNTZsLTkuODk0LTY3LjExMXYtMTI4LjkyNGw3NS4zMDMtNDcuMDYzYzQuMjU4LTIuNjYzIDUuODgzLTguMDY5IDMuNzk2LTEyLjYzNnptLTE1NS4wNDEtMTc0Ljk3NGMuMDAxLjE0Ny4wMDQuMjk1LjAxMS40NDFsMS45NTggNzkuNjE3LTM3LjM4OC0xMC45MDMgMjMuMDMyLTg0Ljg3OCAxMi4xNDEgNS42OTR6bS0xNDcuODY0LTEwLjAyOCAxMi4xNDEtNS42OTUgMjMuMDMyIDg0Ljg3OS0zNy4zODcgMTAuOTAzem0tODEuMzY0IDEwMC43MTljMy44MjIgMy40MzIgOC41MTQgNy42NDUgMTUuMjM0IDEwLjQ5My0uNzY5LjY2MS0xLjYzNCAxLjMwNi0yLjYwNyAxLjkxLTcuNDc1IDQuNjQ3LTE4Ljc5IDUuNjMxLTMzLjA3NCAyLjk0Nmw4Ljk3Ny0xOS42NTNjNC42MzEtMS44MjUgNi4wMS0uNiAxMS40NyA0LjMwNHptMjUuMTc2IDEyMS41NTVjMy43MzEtNC4wNTUgNS4zNTUtMy41NjIgMTIuNjI4LTEuMjg3IDQuOTAzIDEuNTM1IDEwLjkyOCAzLjQwOSAxOC4yMTkgMy4yMTYtLjQ4MSAxLjA0LTEuMDg0IDIuMTEyLTEuODM2IDMuMTk4LTUuMDAxIDcuMjE1LTE0LjkzOSAxMi43MTgtMjkuMDExIDE2LjE0M3ptOTMuNTgyIDEyMC4zMzhjLTMuMDk5IDIuOTUtNS4wNDMgMi4zNTctMTEuNjUzLjI5LTQuOTAzLTEuNTM0LTEwLjkxNi0zLjM5OC0xOC4yMTktMy4yMTYuNDgxLTEuMDQgMS4wODQtMi4xMTIgMS44MzYtMy4xOTggNC44ODQtNy4wNDUgMTQuNDg1LTEyLjQ1MyAyOC4wMzYtMTUuODkzem01Mi44MjkgNjkuNTgxaC0zMi44Mjl2LTE2MS40NzhjMC01LjUyMi00LjQ3Ny0xMC0xMC0xMHMtMTAgNC40NzgtMTAgMTB2NDkuMzU1Yy0yMS41MTggNC41NjctMzYuNjMyIDEzLjE5OC00NC45NTUgMjUuNzM0LTkuMzQxIDE0LjA3LTYuMzYzIDI3LjQ3LTUuOTkzIDI4Ljk1MS43MDggMi44MyAyLjYxNiA1LjIxMSA1LjIyNCA2LjUxNyAyLjYwOSAxLjMwNiA1LjY1OSAxLjQwOSA4LjM0OC4yNzkgNy44MzQtMy4yODkgMTMuMDkzLTEuNjQ0IDE5Ljc1LjQzOSAzLjc1IDEuMTczIDguMzI4IDIuNjA1IDEzLjM4IDIuNjA1IDEuMzgxIDAgMi44LS4xMTYgNC4yNDUtLjM2NXY5MS42MzdsLTExLjk0OCA1LjY2MS05MC40NzItMjYuNDg3IDguNzMxLTU5LjIyNmMuMDcxLS40ODIuMTA3LS45Ny4xMDctMS40NTh2LTExMC4zNGMyMi4wMzQtNC41MTIgMzcuNDgyLTEzLjIwOCA0NS45MjktMjUuOTMyIDkuMzQxLTE0LjA3IDYuMzY0LTI3LjQ3IDUuOTk0LTI4Ljk1MS0uNzA4LTIuODMtMi42MTUtNS4yMTEtNS4yMjQtNi41MTctMi42MDgtMS4zMDYtNS42NTktMS40MDgtOC4zNDgtLjI3OS03LjgzNSAzLjI4Ny0xMy4wOTQgMS42NDQtMTkuNzUtLjQzOS01LjAwNS0xLjU2NS0xMS40ODktMy41ODYtMTguNi0yLjA1M3YtNDAuNjg5YzAtNS41MjItNC40NzctMTAtMTAtMTBzLTEwIDQuNDc4LTEwIDEwdjYxLjk2bC01Ny4yNi0zNS43ODcgMjMuMTItNTAuNjE0YzguMjgzIDEuODg0IDE1Ljk2MSAyLjgzNyAyMi45OTcgMi44MzcgMTEuNDI0IDAgMjEuMTc3LTIuNDgzIDI5LjE1NS03LjQ0MyAxNC4zNDItOC45MTggMTcuMjAxLTIyLjM0MiAxNy40OC0yMy44NDQuNTMzLTIuODY4LS4yMTQtNS44MjYtMi4wNDQtOC4wOTktMS44MzEtMi4yNzEtNC41NjItMy42MzEtNy40NzgtMy43MjItOC40OTQtLjI2NC0xMi41OTMtMy45NDUtMTcuNzgzLTguNjA1LTMuODI3LTMuNDM3LTguNzY2LTcuODY2LTE1LjY1OS05LjUwN2w5LjU5NS0yMS4wMDZjNC4yNDctOS4yOTcgOC4wMDYtMTMuMjQ0IDE3LjI1LTE3Ljk2NmwzNi4yMS0xMy4wMDgtMS45NCA3OC45MTljLS4wNzkgMy4xOSAxLjM3IDYuMjI2IDMuODk5IDguMTcyczUuODM0IDIuNTY3IDguODk4IDEuNjc0bDQ3LjE0Mi0xMy43NDh2NjEuMzQ2YzAgNS41MjIgNC40NzcgMTAgMTAgMTBzMTAtNC40NzggMTAtMTB2LTc0LjY3OWMwLS44ODUtLjExNy0xLjc2Ni0uMzQ5LTIuNjE5bC0yMy4zODMtODYuMTczYzEyLjg1OCA0LjE0MyAyNi40NjMgNi4zIDQwLjE0NyA2LjNzMjcuMjg5LTIuMTU3IDQwLjE0Ny02LjNsLTIzLjM4MyA4Ni4xNzJjLS4yMzEuODU0LS4zNDkgMS43MzQtLjM0OSAyLjYxOWwtLjAwMSAzMjYuMTU3Yy4wMDEgMCAuMDAxIDAgMCAwem0yMC4wMDEtNjcuMDE2YzMuMTQ0LTMuMDMxIDUuMDY3LTIuNDQ1IDExLjcyOC0uMzYzIDQuOTAzIDEuNTM0IDEwLjkwNiAzLjQwMyAxOC4yMTcgMy4yMTYtLjQyNS45MjEtLjk0NCAxLjg2Ni0xLjU3OCAyLjgyMS00LjgxIDcuMjQ2LTE0LjUyNiAxMi43OTEtMjguMzY2IDE2LjI5MnYtMjEuOTY2em0wLTE5OC4xODdjMTMuNTkxIDMuNDQgMjMuMjE4IDguODU0IDI4LjExIDE1LjkxMy43NTIgMS4wODUgMS4zNTQgMi4xNTggMS44MzYgMy4xOTctNy4yODgtLjIwNy0xMy4zMTUgMS42ODItMTguMjE5IDMuMjE2LTYuNjYxIDIuMDgzLTguNTg0IDIuNjY5LTExLjcyOC0uMzYydi0yMS45NjR6bTkzLjU4MiAxMTMuNjk3Yy0zLjUyNCAzLjcwNy01LjI1NCAzLjE4LTEyLjMyOS45NjctNC45MDItMS41MzMtMTAuOTI3LTMuNDA4LTE4LjIxOS0zLjIxNi40ODEtMS4wNCAxLjA4NC0yLjExMiAxLjgzNi0zLjE5OCA0Ljk2Ni03LjE2NCAxNC43OTgtMTIuNjM5IDI4LjcxMi0xNi4wN3ptMjAtMzkuNTcxdi02MS45NmMwLTUuNTIyLTQuNDc4LTEwLTEwLTEwcy0xMCA0LjQ3OC0xMCAxMHY1OS41MjhjLTIxLjg3NSA0LjUyOS0zNy4yMjEgMTMuMjA1LTQ1LjYzIDI1Ljg3MS05LjM0MSAxNC4wNy02LjM2NCAyNy40Ny01Ljk5NCAyOC45NTEuNzA4IDIuODMgMi42MTYgNS4yMTEgNS4yMjUgNi41MTcgMi42MDggMS4zMDcgNS42NTkgMS40MDggOC4zNDguMjc5IDcuODM2LTMuMjg5IDEzLjA5NC0xLjY0NCAxOS43NTEuNDM5IDMuNzUgMS4xNzMgOC4zMjggMi42MDUgMTMuMzggMi42MDUgMS41OTcgMCAzLjI0MS0uMTQ4IDQuOTIxLS40ODh2OTEuNDk4YzAgLjQ4OC4wMzYuOTc2LjEwNiAxLjQ1OGw4LjczMSA1OS4yMjYtOTAuNDczIDI2LjQ4Ny0xMS45NDctNS42NjF2LTY4LjIwNmMyMS41NTctNC41NjMgMzYuNjk3LTEzLjE5OSA0NS4wMjktMjUuNzQ5IDkuMzQxLTE0LjA3MSA2LjM2My0yNy40NyA1Ljk5Mi0yOC45NTEtLjcwNy0yLjgzLTIuNjE1LTUuMjExLTUuMjI0LTYuNTE3cy01LjY1OS0xLjQwOC04LjM0OC0uMjc5Yy03LjgzNyAzLjI4OC0xMy4wOTQgMS42NDQtMTkuNzUxLS40MzktNC43OTItMS40OTktMTAuOTQyLTMuNDE2LTE3LjY5OS0yLjIzdi0xMzIuODY0YzEuNDcxLjI1OCAyLjkxNC4zNzggNC4zMTkuMzc4IDUuMDUyIDAgOS42MzEtMS40MzMgMTMuMzgtMi42MDUgNi42NTgtMi4wODMgMTEuOTE3LTMuNzI4IDE5Ljc1MS0uNDM5IDIuNjg4IDEuMTI5IDUuNzM4IDEuMDI3IDguMzQ4LS4yNzkgMi42MDgtMS4zMDYgNC41MTctMy42ODcgNS4yMjQtNi41MTcuMzcxLTEuNDgxIDMuMzQ4LTE0Ljg4LTUuOTkyLTI4Ljk1LTguMzMyLTEyLjU1MS0yMy40NzItMjEuMTg2LTQ1LjAyOS0yNS43NDl2LTI3LjFsNDcuMTQyIDEzLjc0OWMzLjA2NS44OSA2LjM3LjI3MSA4Ljg5Ny0xLjY3NSAyLjUyOS0xLjk0NiAzLjk3OC00Ljk4MSAzLjg5OS04LjE3MmwtMS45NC03OC45MiAzNi4yMSAxMy4wMDljOS4yNDQgNC43MjIgMTMuMDAzIDguNjY5IDE3LjI1IDE3Ljk2Nmw1OS4zODQgMTMwLjAwM3oiLz48cGF0aCBkPSJtMjI5LjU5MyAyMjUuNTJoLS4wMDhjLTUuNTIzIDAtOS45OTYgNC40NzgtOS45OTYgMTBzNC40ODEgMTAgMTAuMDA0IDEwIDEwLTQuNDc4IDEwLTEwLTQuNDc3LTEwLTEwLTEweiIvPjwvZz48L2c+PC9zdmc+" alt="fashion"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Fashion</a>
<h3 class="title">
<a href="item-details.html">야생의 셔츠</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Boston</a></p>
<ul class="info">
<li class="price">30000&#8361;</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</ul>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="data:image/svg+xml;base64,PHN2ZyBoZWlnaHQ9IjUxMXB0IiB2aWV3Qm94PSIwIC0zNiA1MTEuOTk5MDEgNTExIiB3aWR0aD0iNTExcHQiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0ibTk1LjA3ODEyNSA0My41NzQyMTkgMjEuNTcwMzEzIDgzLjU3NDIxOXYxMTQuODU5Mzc0bC0zMi4xOTE0MDcgMTQxLjM2MzI4MmMtLjUxNTYyNSAyLjI2OTUzMS0yLjUzNTE1NiAzLjg3ODkwNi00Ljg1OTM3NSAzLjg3ODkwNmgtNjYuNTE1NjI1Yy0yLjY3OTY4NyAwLTQuODc4OTA2LTIuMTEzMjgxLTQuOTg0Mzc1LTQuNzg5MDYyLTEuNDY0ODQ0LTM3LjMwNDY4OC03LjM0NzY1Ni0yODEuNDEwMTU3IDg2Ljk4MDQ2OS0zMzguODg2NzE5em0wIDAiIGZpbGw9IiMwNTczY2YiLz48cGF0aCBkPSJtNDE2LjkyMTg3NSA0My41NzQyMTktMjEuNTc0MjE5IDgzLjU3NDIxOXYxMTQuODU5Mzc0bDMyLjE5NTMxMyAxNDEuMzYzMjgyYy41MTU2MjUgMi4yNjk1MzEgMi41MzEyNSAzLjg3ODkwNiA0Ljg1OTM3NSAzLjg3ODkwNmg2Ni41MTU2MjVjMi42NzU3ODEgMCA0Ljg3NS0yLjExMzI4MSA0Ljk4MDQ2OS00Ljc4OTA2MiAxLjQ2ODc1LTM3LjMwNDY4OCA3LjM0NzY1Ni0yODEuNDEwMTU3LTg2Ljk3NjU2My0zMzguODg2NzE5em0wIDAiIGZpbGw9IiMwNTczY2YiLz48cGF0aCBkPSJtNDk4LjkyMTg3NSAzODcuMjUzOTA2aC0xNi41NjI1YzEuNDA2MjUtNTguMTY0MDYyIDIuOTkyMTg3LTI0OS4wODU5MzctNzEuMTI4OTA2LTMyMS42MzY3MThsNS42OTUzMTItMjIuMDM5MDYzYzk0LjMyMDMxMyA1Ny40NzI2NTYgODguNDQ1MzEzIDMwMS41ODIwMzEgODYuOTc2NTYzIDMzOC44ODY3MTktLjEwNTQ2OSAyLjY3NTc4MS0yLjMwNDY4OCA0Ljc4OTA2Mi00Ljk4MDQ2OSA0Ljc4OTA2MnptMCAwIiBmaWxsPSIjMDA1YWFmIi8+PHBhdGggZD0ibTMxNy40MzM1OTQgNy45NzY1NjJoLTEyMi43OTI5NjlsLTk5LjU2MjUgMzUuNTk3NjU3IDIxLjU3MDMxMyA4My41NzQyMTl2Mjk5Ljc2NTYyNGMwIDIuNzUzOTA3IDIuMjM0Mzc0IDQuOTg0Mzc2IDQuOTg4MjgxIDQuOTg0Mzc2aDI2OC43OTY4NzVjMi43NTc4MTIgMCA0Ljk4ODI4MS0yLjIzMDQ2OSA0Ljk4ODI4MS00Ljk4NDM3NnYtMjk5Ljc2NTYyNGwyMS41NzAzMTMtODMuNTc0MjE5em0wIDAiIGZpbGw9IiMwNTczY2YiLz48cGF0aCBkPSJtNDE2Ljk5MjE4OCA0My41NzgxMjUtMjEuNTY2NDA3IDgzLjU3NDIxOXYyOTkuNzU3ODEyYzAgMi43NTM5MDYtMi4yMzA0NjkgNC45ODQzNzUtNC45ODQzNzUgNC45ODQzNzVoLTIyLjMyMDMxMnYtMzE5LjQwMjM0M2wxOS41NTQ2ODctNzkuMzk0NTMyem0wIDAiIGZpbGw9IiMwMDVhYWYiLz48cGF0aCBkPSJtMzEyLjM1MTU2MiA4LjIxNDg0NC0uMjM4MjgxLS4wMzUxNTZjMCAuNzI2NTYyLS4wNDI5NjkgMS40NTcwMzEtLjA4MjAzMSAyLjE4MzU5My0uMjE4NzUgMy41MDM5MDctLjcwNzAzMSA3LTEuNDA2MjUgMTAuNDQxNDA3LTEuMDQyOTY5IDUuMTY0MDYyLTIuNTk3NjU2IDEwLjI1LTQuNzU3ODEyIDE1LjA2NjQwNi0yLjUwNzgxMyA1LjU5Mzc1LTUuODY3MTg4IDEwLjgzOTg0NC0xMC4xNzE4NzYgMTUuMjE0ODQ0LTQuOTI1NzgxIDUtMTEgOC43MDcwMzEtMTcuNjU2MjUgMTAuODg2NzE4LTkuMjE4NzUgMy4wMTU2MjUtMTkuMDIzNDM3IDIuOTI1NzgyLTI4LjU1ODU5MyAyLjYwMTU2My0yLjM3ODkwNy0uMDgyMDMxLTQuNzU3ODEzLS4yOTI5NjktNy4xMTMyODEtLjY0ODQzOC03LjQ0MTQwNy0xLjExNzE4Ny0xNC42MjEwOTQtMy44MDQ2ODctMjAuNzAzMTI2LTguMjY1NjI1LTUuMTQwNjI0LTMuNzY5NTMxLTkuMzQzNzUtOC42NzU3ODEtMTIuNTU4NTkzLTE0LjE2MDE1Ni0yLjg1NTQ2OS00Ljg1OTM3NS00Ljk1MzEyNS0xMC4xNTIzNDQtNi40NDE0MDctMTUuNTg1OTM4LTEuMTI1LTQuMTI1LTEuOTE3OTY4LTguMzQzNzUtMi4zNjMyODEtMTIuNTkzNzUtLjAyNzM0My0uMjczNDM3LS41MTk1MzEtNS4xMTcxODctLjMzNTkzNy01LjE0MDYyNGwtLjI0NjA5NC4wMzUxNTYuMDMxMjUtLjIzODI4MmgxMTIuNTc4MTI1em0wIDAiIGZpbGw9IiNlOGRhY2QiLz48cGF0aCBkPSJtMzEyLjM1MTU2MiA4LjIxODc1LS4yNDIxODctLjAzOTA2MmMwIC43MjY1NjItLjAzOTA2MyAxLjQ1MzEyNC0uMDc4MTI1IDIuMTgzNTkzLS4yMTg3NSAzLjUtLjcwNzAzMSA3LTEuNDA2MjUgMTAuNDQxNDA3LTEuMDQ2ODc1IDUuMTY0MDYyLTIuNTkzNzUgMTAuMjUtNC43NTc4MTIgMTUuMDY2NDA2LTIuNTExNzE5IDUuNTkzNzUtNS44NjMyODIgMTAuODM5ODQ0LTEwLjE2Nzk2OSAxNS4yMTQ4NDQtNC45Mjk2ODggNC45OTYwOTMtMTEgOC43MDcwMzEtMTcuNjYwMTU3IDEwLjg5MDYyNC05LjIxNDg0MyAzLjAxMTcxOS0xOS4wMTk1MzEgMi45MjE4NzYtMjguNTU4NTkzIDIuNjAxNTYzLTIuMzc1LS4wODk4NDQtNC43NTc4MTMtLjI5Njg3NS03LjExMzI4MS0uNjQ4NDM3LTQuNzE0ODQ0LS43MTg3NS05LjMzMjAzMi0yLjA1NDY4OC0xMy42Mjg5MDctNC4wNzgxMjYgOC4wMzUxNTcuMTUyMzQ0IDE2LjE2NDA2My0uMTk5MjE4IDIzLjg3MTA5NC0yLjcyMjY1NiA2LjY2MDE1Ni0yLjE4MzU5NCAxMi43MzQzNzUtNS44OTA2MjUgMTcuNjYwMTU2LTEwLjg4NjcxOCA0LjMwODU5NC00LjM3ODkwNyA3LjY1NjI1LTkuNjI1IDEwLjE3MTg3NS0xNS4yMTg3NSAyLjE2NDA2My00LjgxNjQwNyAzLjcxODc1LTkuOTAyMzQ0IDQuNzU3ODEzLTE1LjA2NjQwNy41MzUxNTYtMi42MzI4MTIuOTQ1MzEyLTUuMzA0Njg3IDEuMjAzMTI1LTcuOTc2NTYyaDI1LjkyNTc4MXptMCAwIiBmaWxsPSIjZTVjY2I3Ii8+PHBhdGggZD0ibTQzMi40MDIzNDQgMzg3LjI1aDY2LjUxMTcxOGMyLjY3NTc4MiAwIDQuODc1LTIuMTA1NDY5IDQuOTgwNDY5LTQuNzgxMjUuMjU3ODEzLTYuMzU1NDY5LjY1NjI1LTE4LjAyMzQzOC42MjUtMjguNjA5Mzc1aC04My42OTkyMTlsNi43MjI2NTcgMjkuNTExNzE5Yy41MTU2MjUgMi4yNjk1MzEgMi41MzEyNSAzLjg3ODkwNiA0Ljg1OTM3NSAzLjg3ODkwNnptMCAwIiBmaWxsPSIjZjNjYzUwIi8+PHBhdGggZD0ibTQ5OC45MTQwNjIgMzg3LjI1MzkwNmgtMTYuNTU0Njg3cy40NDE0MDYtMTcuODU1NDY4LjM5MDYyNS0zMy4zOTQ1MzFoMjEuNzY1NjI1Yy4wMzUxNTYgMTAuNTg1OTM3LS4zNjMyODEgMjIuMjU3ODEzLS42MjEwOTQgMjguNjEzMjgxLS4xMDU0NjkgMi42NzU3ODItMi4zMDQ2ODcgNC43ODEyNS00Ljk4MDQ2OSA0Ljc4MTI1em0wIDAiIGZpbGw9IiNlZWI5MDAiLz48cGF0aCBkPSJtNzkuNTk3NjU2IDM4Ny4yNWgtNjYuNTA3ODEyYy0yLjY3OTY4OCAwLTQuODc1LTIuMTA1NDY5LTQuOTg0Mzc1LTQuNzgxMjUtLjI1NzgxMy02LjM1NTQ2OS0uNjUyMzQ0LTE4LjAyMzQzOC0uNjIxMDk0LTI4LjYwOTM3NWg4My42OTUzMTNsLTYuNzE4NzUgMjkuNTExNzE5Yy0uNTE5NTMyIDIuMjY5NTMxLTIuNTM1MTU3IDMuODc4OTA2LTQuODYzMjgyIDMuODc4OTA2em0wIDAiIGZpbGw9IiNmM2NjNTAiLz48cGF0aCBkPSJtMzkwLjQzNzUgNDMxLjg5ODQzOGgtMjY4LjgwMDc4MWMtMi43NTM5MDcgMC00Ljk4NDM3NS0yLjIzMDQ2OS00Ljk4NDM3NS00Ljk4NDM3NnYtMjYuNzkyOTY4aDI3OC43Njk1MzF2MjYuNzkyOTY4YzAgMi43NTM5MDctMi4yMzA0NjkgNC45ODQzNzYtNC45ODQzNzUgNC45ODQzNzZ6bTAgMCIgZmlsbD0iI2YzY2M1MCIvPjxwYXRoIGQ9Im0zOTAuNDM3NSA0MzEuODk4NDM4aC0yMi4zMTY0MDZ2LTMxLjc3NzM0NGgyNy4zMDA3ODF2MjYuNzkyOTY4YzAgMi43NTM5MDctMi4yMzA0NjkgNC45ODQzNzYtNC45ODQzNzUgNC45ODQzNzZ6bTAgMCIgZmlsbD0iI2VlYjkwMCIvPjxwYXRoIGQ9Im0xMDkuMTcxODc1IDMzMS4yODkwNjJjMCA0LjEyODkwNyAzLjM0NzY1NiA3LjQ3NjU2MyA3LjQ3NjU2MyA3LjQ3NjU2MyA0LjEzMjgxMiAwIDcuNDgwNDY4LTMuMzQ3NjU2IDcuNDgwNDY4LTcuNDc2NTYzdi0yMDQuMTQwNjI0YzAtLjYyODkwNy0uMDgyMDMxLTEuMjU3ODEzLS4yMzgyODEtMS44NzEwOTRsLTE5Ljg2MzI4MS03Ni45NjA5MzggODkuMTMyODEyLTMxLjg2NzE4N2MuNTExNzE5IDMuODU5Mzc1IDEuMjY5NTMyIDcuNjk1MzEyIDIuMjkyOTY5IDExLjQ0MTQwNiAxLjc0NjA5NCA2LjM4MjgxMyA0LjE3MTg3NSAxMi4yMzQzNzUgNy4xOTkyMTkgMTcuMzk0NTMxIDMuOTAyMzQ0IDYuNjQ4NDM4IDguODA4NTk0IDEyLjE2Nzk2OSAxNC41ODU5MzcgMTYuNDA2MjUgMTUuODc4OTA3IDExLjY0ODQzOCA0NC43ODkwNjMgMTMuMzg2NzE5IDYzLjEyODkwNyA3LjM5MDYyNSA3LjgyODEyNC0yLjU2NjQwNiAxNC45NzI2NTYtNi45NzI2NTYgMjAuNjU2MjUtMTIuNzUgNC43MDcwMzEtNC43ODEyNSA4LjYzMjgxMi0xMC42MzY3MTkgMTEuNjY3OTY4LTE3LjM5ODQzNyAyLjI5Njg3NS01LjEyNSA0LjA2NjQwNi0xMC43MjY1NjMgNS4yNjE3MTktMTYuNjQwNjI1LjM5NDUzMS0xLjk1NzAzMS43MjY1NjMtMy45MDYyNS45ODQzNzUtNS44MzU5MzhsMTYuOTY0ODQ0IDYuMDY2NDA3YzMuODg2NzE4IDEuMzkwNjI0IDguMTY3OTY4LS42MzI4MTMgOS41NTg1OTQtNC41MjM0MzggMS4zOTA2MjQtMy44OTA2MjUtLjYzNjcxOS04LjE2Nzk2OS00LjUyMzQzOC05LjU1ODU5NGwtMjAuOTg4MjgxLTcuNTAzOTA2Yy0uODA4NTk0LS4yOTI5NjktMS42NjAxNTctLjQzNzUtMi41MTk1MzEtLjQzNzVoLTEyMi43ODkwNjNjLS44NTkzNzUgMC0xLjcxMDkzNy4xNDg0MzgtMi41MTk1MzEuNDM3NWwtOTkuNTU4NTk0IDM1LjU5Mzc1Yy0uMTU2MjUuMDU4NTk0LS4zMDQ2ODguMTI1LS40NTcwMzEuMTg3NS0uMDU0Njg4LjAyMzQzOC0uMTEzMjgxLjA0Mjk2OS0uMTY3OTY5LjA3MDMxMi0uMjUuMTEzMjgyLS40ODgyODEuMjQyMTg4LS43MTg3NS4zODI4MTMtLjAxMTcxOS4wMDM5MDYtLjAyMzQzOC4wMDc4MTMtLjAzMTI1LjAxNTYyNS00MS43MzA0NjkgMjUuNDI5Njg4LTY5LjYzMjgxMiA4Ni43ODUxNTYtODIuOTI5Njg4IDE4Mi4zNjcxODgtNy4xOTUzMTIgNTEuNzIyNjU2LTguNDE3OTY4IDEwMi4wNjI1LTguMjQyMTg3IDEzNC4wODU5MzctLjAwMzkwNjIuMDY2NDA2LS4wMTE3MTg3NS4xMzI4MTMtLjAxMTcxODc1LjE5OTIxOS0uMDIzNDM3NDUgOC45MDIzNDQuMjQ5OTk5NzUgMTguNTU0Njg3LjQ4NDM3NDc1IDI1LjEyODkwNi4wNDY4NzUgMS40MTAxNTYuMDkzNzUgMi42Nzk2ODguMTQwNjI1IDMuNzg1MTU2LjI2MTcxOSA2LjcxNDg0NCA1LjczMDQ2OSAxMS45NzY1NjMgMTIuNDYwOTM4IDExLjk3NjU2M2g2Ni41MDc4MTJjNS44NTU0NjkgMCAxMC44NTU0NjktMy45ODgyODEgMTIuMTUyMzQ0LTkuNjk5MjE5bDYuNzIyNjU2LTI5LjUxMTcxOWMuMDAzOTA2LS4wMTE3MTkuMDAzOTA2LS4wMjM0MzcuMDAzOTA2LS4wMzUxNTZsMTAuNjk1MzEzLTQ2Ljk1MzEyNXptMTk0LjgwNDY4Ny0zMTUuODMyMDMxYy0uMTkxNDA2IDEuMjczNDM4LS40MTc5NjggMi41NjY0MDctLjY4MzU5MyAzLjg2NzE4OC0uOTc2NTYzIDQuODM5ODQzLTIuNDA2MjUgOS4zNzg5MDYtNC4yNDYwOTQgMTMuNDg0Mzc1LTIuMzA0Njg3IDUuMTM2NzE4LTUuMjI2NTYzIDkuNTE5NTMxLTguNjc5Njg3IDEzLjAzMTI1LTQuMDE5NTMyIDQuMDgyMDMxLTkuMDg1OTM4IDcuMjAzMTI1LTE0LjY1MjM0NCA5LjAyNzM0NC0xNC40NzY1NjMgNC43NDYwOTMtMzYuOTQ5MjE5IDQuMDU4NTkzLTQ5LjYyNS01LjIzODI4Mi00LjEyNS0zLjAyMzQzNy03LjY2Nzk2OS03LjAzMTI1LTEwLjUzMTI1LTExLjkxNDA2Mi0yLjM2NzE4OC00LjAyNzM0NC00LjI3NzM0NC04LjY2NDA2My01LjY3NTc4Mi0xMy43Njk1MzItLjc2MTcxOC0yLjc4MTI1LTEuMzU1NDY4LTUuNjI4OTA2LTEuNzczNDM3LTguNDg4Mjgxem0tMTAyLjI3NzM0MyAwaC4wMDM5MDZjLS4xMDkzNzUuMDIzNDM4LS4yMjI2NTYuMDQyOTY5LS4zMzU5MzcuMDYyNS4xMDkzNzQtLjAxOTUzMS4yMjI2NTYtLjAzOTA2Mi4zMzIwMzEtLjA2MjV6bS0xMjQuMDkzNzUgMzY0LjMxNjQwN2gtNjIuMTIxMDk0Yy0uMDE1NjI1LS40ODQzNzYtLjAzNTE1Ni0uOTk2MDk0LS4wNTQ2ODctMS41MTk1MzItLjE0NDUzMi00LjMyODEyNS0uMjkyOTY5LTEwLjA0Mjk2OC0uMzg2NzE5LTE2LjkxNDA2Mmg2Ni43NjE3MTl6bTcuNjA1NDY5LTMzLjM5MDYyNmgtNzAuMjUzOTA3Yy4wNDY4NzUtMzEuNTc0MjE4IDEuNTU0Njg4LTc3LjU5NzY1NiA4LjExNzE4OC0xMjQuNzY5NTMxIDExLjUwMzkwNi04Mi42OTUzMTIgMzQuNzM0Mzc1LTEzOS42MjEwOTMgNjcuNDU3MDMxLTE2NS43MzA0NjlsMTguNjQwNjI1IDcyLjIxNDg0NHYxMTMuMDcwMzEzem0wIDAiLz48cGF0aCBkPSJtNTExLjk4NDM3NSAzNTMuNjEzMjgxYy4xNzU3ODEtMzIuMDI3MzQzLTEuMDUwNzgxLTgyLjM1MTU2Mi04LjI0MjE4Ny0xMzQuMDU4NTkzLTEzLjIxMDkzOC05NC45NTMxMjYtNDAuODM5ODQ0LTE1Ni4xMTMyODItODIuMTE3MTg4LTE4MS44NDM3NS0uNjIxMDk0LS40OTIxODgtMS4zMjgxMjUtLjg5ODQzOC0yLjExMzI4MS0xLjE3OTY4OGwtMzQuMjg5MDYzLTEyLjI1NzgxMmMtMy44OTQ1MzEtMS4zOTQ1MzItOC4xNzE4NzUuNjMyODEyLTkuNTYyNSA0LjUyMzQzN3MuNjM2NzE5IDguMTY3OTY5IDQuNTI3MzQ0IDkuNTU4NTk0bDI3Ljc5Mjk2OSA5LjkzNzUtMTkuODcxMDk0IDc2Ljk4ODI4MWMtLjE2MDE1Ni42MDkzNzUtLjIzODI4MSAxLjIzODI4MS0uMjM4MjgxIDEuODY3MTg4djExNC44NjMyODFjMCAuMzMyMDMxLjAzMTI1LjY2NDA2Mi4wNzQyMTguOTkyMTg3djE0OS42MzY3MTloLTI2My44MTY0MDZ2LTE2LjE0NDUzMWMwLTQuMTMyODEzLTMuMzQ3NjU2LTcuNDgwNDY5LTcuNDc2NTYyLTcuNDgwNDY5LTQuMTMyODEzIDAtNy40ODA0NjkgMy4zNDc2NTYtNy40ODA0NjkgNy40ODA0Njl2NTAuNDE3OTY4YzAgNi44NzEwOTQgNS41ODk4NDQgMTIuNDY0ODQ0IDEyLjQ2NDg0NCAxMi40NjQ4NDRoMjY4LjgwMDc4MWM2Ljg3NSAwIDEyLjQ2NDg0NC01LjU5Mzc1IDEyLjQ2NDg0NC0xMi40NjQ4NDR2LTExOC4wNTg1OTNsMTAuNjI1IDQ2LjY2MDE1NnYuMDA3ODEzbDYuNzIyNjU2IDI5LjUwNzgxMmMxLjMwMDc4MSA1LjcxMDkzOCA2LjI5Njg3NSA5LjY5OTIxOSAxMi4xNTIzNDQgOS42OTkyMTloNjYuNTE1NjI1YzYuNzE4NzUgMCAxMi4xOTE0MDYtNS4yNjE3MTkgMTIuNDU3MDMxLTExLjk3MjY1Ny4wMzUxNTYtLjk3MjY1Ni4wNzgxMjUtMi4wNjY0MDYuMTE3MTg4LTMuMjczNDM3LjI0MjE4Ny02LjU3ODEyNS41MzEyNS0xNi41MDM5MDYuNTAzOTA2LTI1LjY0NDUzMSAwLS4wNzgxMjUtLjAwNzgxMy0uMTQ4NDM4LS4wMTE3MTktLjIyNjU2M3ptLTEyNC4wMzkwNjMgNzAuODA4NTk0aC0yNjMuODE2NDA2di0xNi44MjQyMTloMjYzLjgxNjQwNnptMTA4LjYwOTM3Ni00NS43MzQzNzVjLS4wMTE3MTkuMzYzMjgxLS4wMjczNDQuNzQyMTg4LS4wMzkwNjMgMS4wODU5MzhoLTYyLjEyNWwtNC4xOTkyMTktMTguNDMzNTk0aDY2Ljc2MTcxOWMtLjA5Mzc1IDcuMDk3NjU2LS4yNSAxMi45NzI2NTYtLjM5ODQzNyAxNy4zNDc2NTZ6bS02OS43NjU2MjYtMzIuMzA0Njg4LTIzLjg4NjcxOC0xMDQuODkwNjI0di0xMTMuMzk0NTMybDE4LjYyNS03Mi4xNjQwNjJjMzIuNjkxNDA2IDI2LjEzMjgxMiA1NS45MDIzNDQgODMuMDM1MTU2IDY3LjM5ODQzNyAxNjUuNjc5Njg3IDYuNTYyNSA0Ny4xNjc5NjkgOC4wNzAzMTMgOTMuMTk1MzEzIDguMTE3MTg4IDEyNC43Njk1MzF6bTAgMCIvPjwvc3ZnPg=="  alt="fashion"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Fashion</a>
<h3 class="title">
<a href="item-details.html">파란맨투맨</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Delaware, USA</a></p>
<ul class="info">
<li class="price">23000&#8361;</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</ul>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pg0KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDE5LjAuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPg0KPHN2ZyB2ZXJzaW9uPSIxLjEiIGlkPSJDYXBhXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4Ig0KCSB2aWV3Qm94PSIwIDAgNTEyIDUxMiIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNTEyIDUxMjsiIHhtbDpzcGFjZT0icHJlc2VydmUiPg0KPHBhdGggc3R5bGU9ImZpbGw6I0Y0NDMzNjsiIGQ9Ik00NDEuNDA4LDE5NS4wNGMtNzEuMzI4LTUxLjcxMi01Ny42NjQtMTc1LjkwNC01Ny41MzYtMTc3LjE1MmMwLjU0NC00LjU0NC0wLjg2NC05LjA4OC0zLjkwNC0xMi41MTINCglDMzc2Ljg5NiwxLjk4NCwzNzIuNTc2LDAsMzY4LDBoLTMyYy03LjQ1NiwwLTEzLjk4NCw1LjE4NC0xNS41ODQsMTIuNDhDMzEzLjU2OCw0Mi44MTYsMjg3LjA3Miw2NCwyNTYsNjQNCglzLTU3LjU2OC0yMS4xODQtNjQuMzg0LTUxLjQ4OEMxODkuOTg0LDUuMjE2LDE4My40ODgsMCwxNzYsMGgtMzJjLTQuNTc2LDAtOC45MjgsMS45ODQtMTEuOTY4LDUuMzc2DQoJYy0zLjA0LDMuNDI0LTQuNDQ4LDgtMy45MzYsMTIuNTQ0YzAuMTYsMS4yNDgsMTQuMDQ4LDEyNS4yNDgtNTcuNTA0LDE3Ny4xNTJDNjYuNDY0LDE5OC4wNDgsNjQsMjAyLjg4LDY0LDIwOHYyODgNCgljMCw4LjgzMiw3LjE2OCwxNiwxNiwxNmgzNTJjOC44MzIsMCwxNi03LjE2OCwxNi0xNlYyMDhDNDQ4LDIwMi44OCw0NDUuNTM2LDE5OC4wNDgsNDQxLjQwOCwxOTUuMDR6Ii8+DQo8Zz4NCgk8cGF0aCBzdHlsZT0iZmlsbDojRkFGQUZBOyIgZD0iTTI1NiwzMjBjLTI2LjQ2NCwwLTQ4LTIxLjUzNi00OC00OHMyMS41MzYtNDgsNDgtNDhzNDgsMjEuNTM2LDQ4LDQ4UzI4Mi40NjQsMzIwLDI1NiwzMjB6IE0yNTYsMjU2DQoJCWMtOC44MzIsMC0xNiw3LjE2OC0xNiwxNnM3LjE2OCwxNiwxNiwxNnMxNi03LjE2OCwxNi0xNlMyNjQuODMyLDI1NiwyNTYsMjU2eiIvPg0KCTxwYXRoIHN0eWxlPSJmaWxsOiNGQUZBRkE7IiBkPSJNMjU2LDM4NGMtMjYuNDY0LDAtNDgtMjEuNTM2LTQ4LTQ4czIxLjUzNi00OCw0OC00OHM0OCwyMS41MzYsNDgsNDhTMjgyLjQ2NCwzODQsMjU2LDM4NHogTTI1NiwzMjANCgkJYy04LjgzMiwwLTE2LDcuMi0xNiwxNnM3LjE2OCwxNiwxNiwxNnMxNi03LjIsMTYtMTZTMjY0LjgzMiwzMjAsMjU2LDMyMHoiLz4NCjwvZz4NCjxyZWN0IHg9IjY0IiB5PSI0MTYiIHN0eWxlPSJmaWxsOiM0NTVBNjQ7IiB3aWR0aD0iMzg0IiBoZWlnaHQ9IjMyIi8+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8L3N2Zz4NCg=="  alt="fashion"></a>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Fashion</a>
 <h3 class="title">
<a href="item-details.html">8번 나시</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Delhi, India</a></p>
<ul class="info">
<li class="price">15000&#8361;</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="data:image/svg+xml;base64,PHN2ZyBpZD0iTGF5ZXJfMSIgZW5hYmxlLWJhY2tncm91bmQ9Im5ldyAwIDAgNTEyLjAxMiA1MTIuMDEyIiBoZWlnaHQ9IjUxMiIgdmlld0JveD0iMCAwIDUxMi4wMTIgNTEyLjAxMiIgd2lkdGg9IjUxMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48Zz48cGF0aCBkPSJtNTAzLjI1MSAyMTYuMjIyYy0xLjAyOS0zLjk0OCAzLjgwMyA1LjE4LTYzLjc1LTExNC4wNC00Ljg4LTkuMjEtMTIuNTEtMTYuNjctMjEuODMtMjEuMzNsLTk3LjY3LTQ4LjgzaC0xMjhsLTk3LjY3IDQ4LjgzYy05LjMyIDQuNjYtMTYuOTUgMTIuMTItMjEuODMgMjEuMzMtMjEuMzg4IDM3Ljc0Ny01MC45OTQgOTAtNjEuNTYgMTA4LjY0LTcuNDA2IDEzLjExNi0uMjAzIDI5LjgzMyAxNC42MiAzMy4yNWw4Ni40NCAxOS45NXYyMDBjMCA4LjgzNyA3LjE2MyAxNiAxNiAxNmgyNTZjOC44MzcgMCAxNi03LjE2MyAxNi0xNnYtMjAwbDg2LjQ0LTE5Ljk1YzEyLjUzOC0yLjg5MSAyMC4wNjctMTUuNjA0IDE2LjgxLTI3Ljg1eiIgZmlsbD0iI2YxY2M3NiIvPjxwYXRoIGQ9Im00ODYuNDQxIDI0NC4wNzEtODYuNDQgMTkuOTV2MjAwYzAgOC44NC03LjE2IDE2LTE2IDE2aC00MGM4Ljg0IDAgMTYtNy4xNiAxNi0xNnYtMjAwbDg2LjQ0LTE5Ljk1YzEyLjUzOC0yLjg5IDIwLjA2Ny0xNS42MDQgMTYuODEtMjcuODUtMS4wMjktMy45NDggMy44MDMgNS4xOC02My43NS0xMTQuMDQtNC44OC05LjIxLTEyLjUxLTE2LjY3LTIxLjgzLTIxLjMzbC05Ny42Ny00OC44M2g0MGw5Ny42NyA0OC44M2M5LjMyIDQuNjYgMTYuOTUgMTIuMTIgMjEuODMgMjEuMzMgMjEuMzg4IDM3Ljc0NyA1MC45OTQgOTAgNjEuNTYgMTA4LjY0IDcuNDA2IDEzLjExNi4yMDMgMjkuODMzLTE0LjYyIDMzLjI1eiIgZmlsbD0iI2ViYjE1ZCIvPjxwYXRoIGQ9Im0yOTIuMDAxIDMyOC4wMjFoLTM2di0yMGMwLTMzLjEzNyAyNi44NjMtNjAgNjAtNjBoMzZ2MjBjMCAzMy4xMzgtMjYuODYzIDYwLTYwIDYweiIgZmlsbD0iIzc5Y2I5YyIvPjxwYXRoIGQ9Im0zNTIuMDAxIDI0OC4wMjF2MjBjMCAzMy4xNC0yNi44NiA2MC02MCA2MGgtMjRjMzMuMTQgMCA2MC0yNi44NiA2MC02MHYtMjB6IiBmaWxsPSIjNjNhYzdkIi8+PHBhdGggZD0ibTIyMC4wMDEgMzI4LjAyMWgzNnYtMjBjMC0zMy4xMzctMjYuODYzLTYwLTYwLTYwaC0zNnYyMGMwIDMzLjEzOCAyNi44NjMgNjAgNjAgNjB6IiBmaWxsPSIjNzljYjljIi8+PHBhdGggZD0ibTI1Ni4wMDEgMzA4LjAyMXYyMGgtMjR2LTIwYzAtMzMuMTQtMjYuODYtNjAtNjAtNjBoMjRjMzMuMTQgMCA2MCAyNi44NiA2MCA2MHoiIGZpbGw9IiM2M2FjN2QiLz48cGF0aCBkPSJtMzIwLjAwMSAzMi4wMjFjMCAzNS4zNTgtMjguNjM5IDY0LTY0IDY0LTM1LjM1IDAtNjQtMjguNjUtNjQtNjR6IiBmaWxsPSIjZjFjYzc2Ii8+PHBhdGggZD0ibTMyMC4wMDEgMzIuMDIxYzAgNDMuNzE0LTQyLjgxOSA3NC4zNjEtODQgNjAuODEgMjUuNjcyLTguNDI0IDQ0LTMyLjU1NCA0NC02MC44MXoiIGZpbGw9IiNlYmIxNWQiLz48cGF0aCBkPSJtMzUwLjc2MSA0Ny40MDFjLTcuMzggNDUuNjUtNDcuMDYgODAuNjItOTQuNzYgODAuNjJzLTg3LjM4LTM0Ljk3LTk0Ljc2LTgwLjYybDMwLjc2LTE1LjM4YzAgMzUuMzUgMjguNjUgNjQgNjQgNjQgMzUuMzU4IDAgNjQtMjguNjM5IDY0LTY0eiIgZmlsbD0iI2VkZWJmZCIvPjxwYXRoIGQ9Im01MTAuOTgzIDIxNC4xNjZjLTEuNDItNS40MTQgMi40ODEgMi4zMTMtNjQuNDY5LTExNS44MzYtNS42OTctMTAuNzAxLTE0LjQzMi0xOS4yMTctMjUuMjY2LTI0LjYzNC0xMDUuMzQ1LTUyLjY2Ny05OC41MTQtNDkuNjc1LTEwMS4yNDctNDkuNjc1LTEzNi42NSAwLTEyOC4zOS0uMTA4LTEyOS43NTcuMi0xLjQ1NC4zMjQgNC42MDgtMi41NjktOTkuNDkgNDkuNDc1LTEwLjgzNSA1LjQxNy0xOS41NjkgMTMuOTM0LTI1LjI2NiAyNC42MzVsLTYxLjUxMyAxMDguNTU3Yy05Ljg3OCAxNy40OTItLjYyNCA0MC4yNzIgMTkuNzg4IDQ0Ljk3OWw4MC4yMzkgMTguNTJ2MTkzLjYzNmMwIDEzLjIzMyAxMC43NjYgMjQgMjQgMjRoMjU2YzEzLjIzMyAwIDI0LTEwLjc2NyAyNC0yNHYtMTkzLjYzN2w4MC4yMzYtMTguNTE5YzE3LjMyNS0zLjk5NSAyNy4wOTEtMjEuMzUzIDIyLjc0NS0zNy43MDF6bS0yNTQuOTgyLTExMC4xNDVjMzUuNDcyIDAgNjUuMDE0LTI1Ljc5MSA3MC45MS01OS42MDJsMTQuODE5IDcuNDA5Yy05LjExMyAzOS44NDItNDQuMjc0IDY4LjE5My04NS43MjggNjguMTkzcy03Ni42MTUtMjguMzUxLTg1LjcyOC02OC4xOTNsMTQuODE5LTcuNDA5YzUuODk1IDMzLjgxMSAzNS40MzYgNTkuNjAyIDcwLjkwOCA1OS42MDJ6bS01NS40MTktNjRoMTEwLjgzOWMtMy44OTUgMjcuMTAyLTI3LjI1NyA0OC01NS40MTkgNDgtMjguMTYzIDAtNTEuNTI1LTIwLjg5OC01NS40Mi00OHptMjg0LjA2IDE5Ni4yNTUtNzYuNjQxIDE3LjY4OHYtNTMuOTQzYzAtNC40MTgtMy41ODItOC04LThzLTggMy41ODItOCA4djI2NGMwIDQuNDExLTMuNTg5IDgtOCA4aC0yNTZjLTQuNDExIDAtOC0zLjU4OS04LTggMC0yOC42MTkgMC0yMTcuODc2IDAtMjY0IDAtNC40MTgtMy41ODItOC04LThzLTggMy41ODItOCA4djUzLjk0M2wtNzYuNjQzLTE3LjY4OWMtOS43MzktMi4yNDQtMTQuMTktMTMuMTMxLTkuNDU4LTIxLjUwOSA2My44MzctMTEyLjY1OCA2MS41OTctMTA4LjcgNjEuNjY5LTEwOC44NCA0LjEyNi03Ljc4NyAxMC40NjgtMTMuOTg0IDE4LjMzOS0xNy45Mmw1Ny43MTgtMjguODU2YzEyLjI0MyA0NS4xNzEgNTMuMzE5IDc2Ljg3MSAxMDAuMzc0IDc2Ljg3MSA0Ni45ODUgMCA4OC4xMTQtMzEuNjM2IDEwMC4zNzQtNzYuODcxbDU3LjcxOCAyOC44NTZjNy44NzEgMy45MzYgMTQuMjEzIDEwLjEzMiAxOC4zMzkgMTcuOTIuMDU0LjEwMy0yLjE3NS0zLjgzMiA2MS42NjIgMTA4LjgyNSA0Ljc3OCA4LjQ2NS4yMzIgMTkuMjkzLTkuNDUxIDIxLjUyNXoiLz48cGF0aCBkPSJtMzUyLjAwMSAyNDAuMDIxaC0zNmMtMjUuOTQ5IDAtNDguNTQxIDE0LjYxNS02MCAzNi4wNDItMTEuNDU5LTIxLjQyNi0zNC4wNTEtMzYuMDQyLTYwLTM2LjA0MmgtMzZjLTQuNDE4IDAtOCAzLjU4Mi04IDh2MjBjMCAzNy40OTUgMzAuNTA1IDY4IDY4IDY4aDI4djMyYzAgNC40MTggMy41ODIgOCA4IDhzOC0zLjU4MiA4LTh2LTMyaDI4YzM3LjQ5NSAwIDY4LTMwLjUwNSA2OC02OHYtMjBjMC00LjQxOC0zLjU4Mi04LTgtOHptLTE4NCAyOHYtMTJoMjhjMjguNjczIDAgNTIgMjMuMzI3IDUyIDUydjIuOTJsLTM0Ljg3OC0yOS4wNjVjLTMuMzk1LTIuODMtOC40MzgtMi4zNy0xMS4yNjggMS4wMjQtMi44MjggMy4zOTQtMi4zNyA4LjQzOCAxLjAyNCAxMS4yNjdsMzEuMDI1IDI1Ljg1NGgtMTMuOTA0Yy0yOC42NzIgMC01MS45OTktMjMuMzI3LTUxLjk5OS01MnptMTc2IDBjMCAyOC42NzMtMjMuMzI3IDUyLTUyIDUyaC0xMy45MDRsMzEuMDI1LTI1Ljg1NGMzLjM5NS0yLjgyOCAzLjg1NC03Ljg3MyAxLjAyNC0xMS4yNjctMi44MjctMy4zOTYtNy44NzMtMy44NTItMTEuMjY3LTEuMDI0bC0zNC44NzkgMjkuMDY1di0yLjkyYzAtMjguNjczIDIzLjMyNy01MiA1Mi01MmgyOHYxMnoiLz48L2c+PC9zdmc+"  alt="fashion"></a>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Fashion</a>
<h3 class="title">
<a href="item-details.html">자연을 담은 티셔츠</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Boston</a></p>
<ul class="info">
<li class="price">20000&#8361;</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="data:image/svg+xml;base64,PHN2ZyBoZWlnaHQ9IjUxMiIgdmlld0JveD0iMCAwIDUxMiA1MTIiIHdpZHRoPSI1MTIiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGcgaWQ9ImZpbGxlZF9vdXRsaW5lIiBkYXRhLW5hbWU9ImZpbGxlZCBvdXRsaW5lIj48cGF0aCBkPSJtNDE2IDQ0MGg1NnY0OGgtNTZ6IiBmaWxsPSIjYmJiYWI2IiB0cmFuc2Zvcm09Im1hdHJpeCgtMSAwIDAgLTEgODg4IDkyOCkiLz48cGF0aCBkPSJtNDQ0LjMzOSA5OS41MTYgMjUuMjMgMTYyLjc1OWExNjYuMDc4IDE2Ni4wNzggMCAwIDEgMy42NzQgMTkuNjcybDkuNDQ2IDc1LjU2N2ExNjUuOTg2IDE2NS45ODYgMCAwIDEgLTEwLjU5MSA4Mi4yNGwtLjA5OC4yNDZoLTU2YTk2Ljc1NyA5Ni43NTcgMCAwIDEgLTI3Ljc0OC01Ny43MzNsLTQuMjUyLTM4LjI2NyAxLjc3OC01NiA2LjIyMi04LTUuNzEzLTggMy4zODctMTA2LjY2NmExNTcuMzkzIDE1Ny4zOTMgMCAwIDEgMzQuMzI2LTkxLjE3MiAzOC45IDM4LjkgMCAwIDEgMjAuMzM5IDI1LjM1NHoiIGZpbGw9IiNiMjIxMjIiLz48cGF0aCBkPSJtNDUxLjY5IDE0Ni45M2ExNiAxNiAwIDEgMSAtMy44Ni0yNC44OXoiIGZpbGw9IiNiMjIxMjIiLz48cGF0aCBkPSJtNDgzLjk0IDM3NC44OS0uMDYtLjAzLTM1LjM4LTIxLjIzLTI3LjcgMjAuNzdhOC4wMSA4LjAxIDAgMCAxIC05LjYgMGwtMjUuOTktMTkuNDktMS4yMS0xMC45MS4yNS03Ljk5YTcuODUxIDcuODUxIDAgMCAxIDQuNTUgMS41OWwyNy4yIDIwLjQgMjcuMi0yMC40YTguMDE2IDguMDE2IDAgMCAxIDguOTItLjQ2bDMwLjMgMTguMTguMjcgMi4xOWExNjMuNCAxNjMuNCAwIDAgMSAxLjI1IDE3LjM4eiIgZmlsbD0iI2IyMjEyMiIvPjxwYXRoIGQ9Im00NTguNjEgMTkxLjU2YTcuOTYyIDcuOTYyIDAgMCAxIC0xLjYyLjM4bC02NCA4YTguMzg2IDguMzg2IDAgMCAxIC0xIC4wNiA3LjgxMSA3LjgxMSAwIDAgMSAtMy40LS43N2wuNDctMTQuNjdhOC4zMzMgOC4zMzMgMCAwIDEgMS45NS0uNWw2NC04YTYuODE1IDYuODE1IDAgMCAxIDEuMTktLjA1eiIgZmlsbD0iI2IyMjEyMiIvPjxwYXRoIGQ9Im00NzEuMzIgMjcwLjA4LS4xMy4wMy04NS40MSAxNy42OS41My0xNi40NCA4MS42NC0xNi45MmMuMTMtLjAzLjI2LS4wNS4zOS0uMDcgMCAwIDIuNDYgMTMuMDkgMi45OCAxNS43MXoiIGZpbGw9IiNkY2RiZDYiLz48cGF0aCBkPSJtNDM3LjMxOSAzODAuNDI0aDIxLjM2M3YyMS4zNjNoLTIxLjM2M3oiIGZpbGw9IiNiYmJhYjYiIHRyYW5zZm9ybT0ibWF0cml4KC43MDcgLS43MDcgLjcwNyAuNzA3IC0xNDUuMzM3IDQzMS4zMzYpIi8+PHBhdGggZD0ibTQ1MS42OSAxNDYuOTNhMTYgMTYgMCAxIDEgLTMuODYtMjQuODl6IiBmaWxsPSIjYmJiYWI2Ii8+PHBhdGggZD0ibTQ1OC42MSAxOTEuNTZhNy45NjIgNy45NjIgMCAwIDEgLTEuNjIuMzhsLTY0IDhhOC4zODYgOC4zODYgMCAwIDEgLTEgLjA2IDcuODExIDcuODExIDAgMCAxIC0zLjQtLjc3bC40Ny0xNC42N2E4LjMzMyA4LjMzMyAwIDAgMSAxLjk1LS41bDY0LThhNi44MTUgNi44MTUgMCAwIDEgMS4xOS0uMDV6IiBmaWxsPSIjYmJiYWI2Ii8+PHBhdGggZD0ibTQ4My45NCAzNzQuODktLjA2LS4wMy0zNS4zOC0yMS4yMy0yNy43IDIwLjc3YTguMDEgOC4wMSAwIDAgMSAtOS42IDBsLTI1Ljk5LTE5LjQ5LTEuMjEtMTAuOTEuMjUtNy45OWE3Ljg1MSA3Ljg1MSAwIDAgMSA0LjU1IDEuNTlsMjcuMiAyMC40IDI3LjItMjAuNGE4LjAxNiA4LjAxNiAwIDAgMSA4LjkyLS40NmwzMC4zIDE4LjE4LjI3IDIuMTlhMTYzLjQgMTYzLjQgMCAwIDEgMS4yNSAxNy4zOHoiIGZpbGw9IiNiYmJhYjYiLz48cGF0aCBkPSJtNDAgNDQwaDU2djQ4aC01NnoiIGZpbGw9IiNiYmJhYjYiLz48cGF0aCBkPSJtNjcuNjYxIDk5LjUxNi0yNS4yMyAxNjIuNzU5YTE2Ni4wNzggMTY2LjA3OCAwIDAgMCAtMy42NzQgMTkuNjcybC05LjQ0NiA3NS41NjdhMTY1Ljk4NiAxNjUuOTg2IDAgMCAwIDEwLjU4OSA4Mi4yNGwuMS4yNDZoNTZhOTYuNzU3IDk2Ljc1NyAwIDAgMCAyNy43NDgtNTcuNzMzbDQuMjUyLTM4LjI2Ny0xLjc3OC01Ni02LjIyMi04IDUuNzEzLTgtMy4zODctMTA2LjY2NmExNTcuMzkzIDE1Ny4zOTMgMCAwIDAgLTM0LjMyNi05MS4xNzIgMzguOSAzOC45IDAgMCAwIC0yMC4zMzkgMjUuMzU0eiIgZmlsbD0iI2IyMjEyMiIvPjxwYXRoIGQ9Im04OCAxMzZhMTYgMTYgMCAwIDEgLTI3LjY5IDEwLjkzbDMuODYtMjQuODlhMTYuMDEgMTYuMDEgMCAwIDEgMjMuODMgMTMuOTZ6IiBmaWxsPSIjYjIyMTIyIi8+PHBhdGggZD0ibTEyOCAzNDQtMS4yMSAxMC45MS0yNS45OSAxOS40OWE4LjAxIDguMDEgMCAwIDEgLTkuNiAwbC0yNy43LTIwLjc3LTM1LjM4IDIxLjIzLS4wNi4wM2ExNjMuNCAxNjMuNCAwIDAgMSAxLjI1LTE3LjM4bC4yNy0yLjE5IDMwLjMtMTguMThhOC4wMTYgOC4wMTYgMCAwIDEgOC45Mi40NmwyNy4yIDIwLjQgMjcuMi0yMC40YTcuODc1IDcuODc1IDAgMCAxIDQuNTUtMS41OXoiIGZpbGw9IiNiMjIxMjIiLz48cGF0aCBkPSJtMTIzLjQxIDE5OS4yM2E3LjgxMSA3LjgxMSAwIDAgMSAtMy40Ljc3IDguMzg2IDguMzg2IDAgMCAxIC0xLS4wNmwtNjQtOGE3Ljk2MiA3Ljk2MiAwIDAgMSAtMS42Mi0uMzhsMi40MS0xNS41NWE2LjgxNSA2LjgxNSAwIDAgMSAxLjE5LjA1bDY0IDhhOC4zMzMgOC4zMzMgMCAwIDEgMS45NS41eiIgZmlsbD0iI2IyMjEyMiIvPjxwYXRoIGQ9Im0xMjYuMjIgMjg3LjgtODUuNDEtMTcuNjktLjEzLS4wM2MuNTItMi42MiAyLjk4LTE1LjcxIDIuOTgtMTUuNzEuMTMuMDIuMjYuMDQuMzkuMDdsODEuNjQgMTYuOTJ6IiBmaWxsPSIjZGNkYmQ2Ii8+PHBhdGggZD0ibTUzLjMxOSAzNzkuNjI2aDIxLjM2M3YyMS4zNjNoLTIxLjM2M3oiIGZpbGw9IiNiYmJhYjYiIHRyYW5zZm9ybT0ibWF0cml4KC43MDcgLS43MDcgLjcwNyAuNzA3IC0yNTcuMjQ0IDE1OS41NzMpIi8+PHBhdGggZD0ibTg4IDEzNmExNiAxNiAwIDAgMSAtMjcuNjkgMTAuOTNsMy44Ni0yNC44OWExNi4wMSAxNi4wMSAwIDAgMSAyMy44MyAxMy45NnoiIGZpbGw9IiNiYmJhYjYiLz48cGF0aCBkPSJtMTIzLjQxIDE5OS4yM2E3LjgxMSA3LjgxMSAwIDAgMSAtMy40Ljc3IDguMzg2IDguMzg2IDAgMCAxIC0xLS4wNmwtNjQtOGE3Ljk2MiA3Ljk2MiAwIDAgMSAtMS42Mi0uMzhsMi40MS0xNS41NWE2LjgxNSA2LjgxNSAwIDAgMSAxLjE5LjA1bDY0IDhhOC4zMzMgOC4zMzMgMCAwIDEgMS45NS41eiIgZmlsbD0iI2JiYmFiNiIvPjxwYXRoIGQ9Im0xMjggMzQ0LTEuMjEgMTAuOTEtMjUuOTkgMTkuNDlhOC4wMSA4LjAxIDAgMCAxIC05LjYgMGwtMjcuNy0yMC43Ny0zNS4zOCAyMS4yMy0uMDYuMDNhMTYzLjQgMTYzLjQgMCAwIDEgMS4yNS0xNy4zOGwuMjctMi4xOSAzMC4zLTE4LjE4YTguMDE2IDguMDE2IDAgMCAxIDguOTIuNDZsMjcuMiAyMC40IDI3LjItMjAuNGE3Ljg3NSA3Ljg3NSAwIDAgMSA0LjU1LTEuNTl6IiBmaWxsPSIjYmJiYWI2Ii8+PHBhdGggZD0ibTM4OS42ODYgMTcwLjc0OWMxLjUtMzEuNTgyIDEyLjk0OS02OS44ODEgMzIuNy05NC41N2wxLjYxNC0yLjAxNy04OC0zMi01Ljg3NiA4LjgxNGE4OCA4OCAwIDAgMSAtNzMuMjI0IDM5LjE4NmgtMS44YTg4IDg4IDAgMCAxIC03My4yMi0zOS4xODZsLTUuODgtOC44MTQtODggMzIgMS42MTQgMi4wMTdjMTkuNzUxIDI0LjY4OSAzMS4yIDYyLjk4OCAzMi43IDk0LjU3bDQuODEgMTU0Ljg1OWExMTIuMDE3IDExMi4wMTcgMCAwIDEgLTQuMTgyIDM2LjF2LjAwOGExMTIgMTEyIDAgMCAwIDQuNzQ3IDc0Ljg4OGw4LjMxMSAxOS4zOTZoMjQwbDguMzE0LTE5LjRhMTEyIDExMiAwIDAgMCA0Ljc0Ny03NC44ODh2LS4wMDhhMTEyLjAxNyAxMTIuMDE3IDAgMCAxIC00LjE4Mi0zNi4xeiIgZmlsbD0iI2NiMjUyNyIvPjxwYXRoIGQ9Im0zODkuMjggMTg0LS41IDE2aC0yNjUuNTZsLS41LTE2eiIgZmlsbD0iI2NiMjUyNyIvPjxwYXRoIGQ9Im0xNTAuNCAyNTIuOGE4IDggMCAwIDEgLTExLjIgMS42bC0xMS4yLTguNC0zLjI4IDIuNDYtLjc5LTI1LjUxIDQuMDcgMy4wNSAxMS4yLTguNGE4IDggMCAxIDEgOS42IDEyLjhsLTcuNDcgNS42IDcuNDcgNS42YTguMDA1IDguMDA1IDAgMCAxIDEuNiAxMS4yeiIgZmlsbD0iI2NiMjUyNyIvPjxwYXRoIGQ9Im0zODguMDcgMjIyLjk1LS43OSAyNS41MS0zLjI4LTIuNDYtMTEuMiA4LjRhOCA4IDAgMCAxIC05LjYtMTIuOGw3LjQ3LTUuNi03LjQ3LTUuNmE4IDggMCAxIDEgOS42LTEyLjhsMTEuMiA4LjR6IiBmaWxsPSIjY2IyNTI3Ii8+PHBhdGggZD0ibTM5MC44NyA0MTZhMTEwLjUxMSAxMTAuNTExIDAgMCAxIC00LjcxIDE2aC0yNjAuMzJhMTEwLjUxMSAxMTAuNTExIDAgMCAxIC00LjcxLTE2eiIgZmlsbD0iI2NiMjUyNyIvPjxwYXRoIGQ9Im0xMzYgNDU2aDI0MHYzMmgtMjQweiIgZmlsbD0iI2RjZGJkNiIvPjxwYXRoIGQ9Im0yMjcuNzE2IDMyMy43MTZoNTYuNTY5djU2LjU2OWgtNTYuNTY5eiIgZmlsbD0iI2JiYmFiNiIgdHJhbnNmb3JtPSJtYXRyaXgoLjcwNyAtLjcwNyAuNzA3IC43MDcgLTE3My45MjEgMjg0LjExOCkiLz48cGF0aCBkPSJtMjQ1LjMxOSAzNDEuMzE5aDIxLjM2M3YyMS4zNjNoLTIxLjM2M3oiIGZpbGw9IiNjYjI1MjciIHRyYW5zZm9ybT0ibWF0cml4KC43MDcgLS43MDcgLjcwNyAuNzA3IC0xNzMuOTIxIDI4NC4xMTgpIi8+PHBhdGggZD0ibTMwNy43MTYgMzIzLjcxNmg1Ni41Njl2NTYuNTY5aC01Ni41Njl6IiBmaWxsPSIjYmJiYWI2IiB0cmFuc2Zvcm09Im1hdHJpeCguNzA3IC0uNzA3IC43MDcgLjcwNyAtMTUwLjQ4OSAzNDAuNjg2KSIvPjxwYXRoIGQ9Im0zMjUuMzE5IDM0MS4zMTloMjEuMzYzdjIxLjM2M2gtMjEuMzYzeiIgZmlsbD0iI2NiMjUyNyIgdHJhbnNmb3JtPSJtYXRyaXgoLjcwNyAtLjcwNyAuNzA3IC43MDcgLTE1MC40ODkgMzQwLjY4NikiLz48cGF0aCBkPSJtMTQ3LjcxNiAzMjMuNzE2aDU2LjU2OXY1Ni41NjloLTU2LjU2OXoiIGZpbGw9IiNiYmJhYjYiIHRyYW5zZm9ybT0ibWF0cml4KC43MDcgLS43MDcgLjcwNyAuNzA3IC0xOTcuMzUyIDIyNy41NDkpIi8+PHBhdGggZD0ibTE2NS4zMTkgMzQxLjMxOWgyMS4zNjN2MjEuMzYzaC0yMS4zNjN6IiBmaWxsPSIjY2IyNTI3IiB0cmFuc2Zvcm09Im1hdHJpeCguNzA3IC0uNzA3IC43MDcgLjcwNyAtMTk3LjM1MiAyMjcuNTQ5KSIvPjxnIGZpbGw9IiNkY2RiZDYiPjxwYXRoIGQ9Im0zOTAuODcgNDE2YTExMC41MTEgMTEwLjUxMSAwIDAgMSAtNC43MSAxNmgtMjYwLjMyYTExMC41MTEgMTEwLjUxMSAwIDAgMSAtNC43MS0xNnoiLz48cGF0aCBkPSJtMzkyIDI3MmgtMjcyYy00LjQxOCAwIDAgMy41ODIgMCA4YTggOCAwIDAgMCA4IDhoMjU2YTggOCAwIDAgMCA4LThjMC00LjQxOCA0LjQxOC04IDAtOHoiLz48cGF0aCBkPSJtMjc4LjQgMjE5LjJhOCA4IDAgMCAwIC0xMS4yLTEuNmwtMTEuMiA4LjQtMTEuMi04LjRhOCA4IDAgMSAwIC05LjYgMTIuOGw3LjQ2NyA1LjYtNy40NjcgNS42YTggOCAwIDEgMCA5LjYgMTIuOGwxMS4yLTguNCAxMS4yIDguNGE4IDggMCAwIDAgOS42LTEyLjhsLTcuNDY3LTUuNiA3LjQ2Ny01LjZhOCA4IDAgMCAwIDEuNi0xMS4yeiIvPjxwYXRoIGQ9Im0zNDIuNCAyMTkuMmE4IDggMCAwIDAgLTExLjItMS42bC0xMS4yIDguNC0xMS4yLTguNGE4IDggMCAxIDAgLTkuNiAxMi44bDcuNDY3IDUuNi03LjQ2NyA1LjZhOCA4IDAgMSAwIDkuNiAxMi44bDExLjItOC40IDExLjIgOC40YTggOCAwIDAgMCA5LjYtMTIuOGwtNy40NjctNS42IDcuNDY3LTUuNmE4IDggMCAwIDAgMS42LTExLjJ6Ii8+PHBhdGggZD0ibTIxNC40IDIxOS4yYTggOCAwIDAgMCAtMTEuMi0xLjZsLTExLjIgOC40LTExLjItOC40YTggOCAwIDAgMCAtOS42IDEyLjhsNy40NjcgNS42LTcuNDY3IDUuNmE4IDggMCAxIDAgOS42IDEyLjhsMTEuMi04LjQgMTEuMiA4LjRhOCA4IDAgMCAwIDkuNi0xMi44bC03LjQ2Ny01LjYgNy40NjctNS42YTggOCAwIDAgMCAxLjYtMTEuMnoiLz48cGF0aCBkPSJtMTUwLjQgMjUyLjhhOCA4IDAgMCAxIC0xMS4yIDEuNmwtMTEuMi04LjQtMy4yOCAyLjQ2LS43OS0yNS41MSA0LjA3IDMuMDUgMTEuMi04LjRhOCA4IDAgMSAxIDkuNiAxMi44bC03LjQ3IDUuNiA3LjQ3IDUuNmE4LjAwNSA4LjAwNSAwIDAgMSAxLjYgMTEuMnoiLz48cGF0aCBkPSJtMzg4LjA3IDIyMi45NS0uNzkgMjUuNTEtMy4yOC0yLjQ2LTExLjIgOC40YTggOCAwIDAgMSAtOS42LTEyLjhsNy40Ny01LjYtNy40Ny01LjZhOCA4IDAgMSAxIDkuNi0xMi44bDExLjIgOC40eiIvPjxwYXRoIGQ9Im0zODkuMjggMTg0LS41IDE2aC0yNjUuNTZsLS41LTE2eiIvPjxjaXJjbGUgY3g9IjI1NiIgY3k9IjE0NCIgcj0iMTYiLz48Y2lyY2xlIGN4PSIxNjgiIGN5PSIxMzYiIHI9IjE2Ii8+PGNpcmNsZSBjeD0iMzM2IiBjeT0iMTM2IiByPSIxNiIvPjwvZz48cGF0aCBkPSJtMzMwLjc4OSAzMS43NGExNCAxNCAwIDAgMCAtMjQuMTcxLTEuNWwtLjg2OCAxLjNhNTkuNzg5IDU5Ljc4OSAwIDAgMSAtNDkuNzUgMjYuNjIyIDU5Ljc4OSA1OS43ODkgMCAwIDEgLTQ5Ljc1LTI2LjYyNmwtLjg2OC0xLjNhMTQgMTQgMCAwIDAgLTI0LjE3MSAxLjVsLTUuMjExIDEwLjQyNiA1Ljg3NiA4LjgxNGE4OCA4OCAwIDAgMCA3My4yMjQgMzkuMTg2aDEuOGE4OCA4OCAwIDAgMCA3My4yMi0zOS4xODZsNS44OC04LjgxNHoiIGZpbGw9IiNlYWU5ZTQiLz48cGF0aCBkPSJtMjE2LjI3IDQzLjA1LTIyLjM2IDIyLjM2YTg3Ljg5IDg3Ljg5IDAgMCAxIC0xMC40Ny0xMi4xNnYtLjAxbDIyLjM3LTIyLjM3LjQ0LjY3YTU5LjgzNiA1OS44MzYgMCAwIDAgMTAuMDIgMTEuNTF6IiBmaWxsPSIjZWFlOWU0Ii8+PHBhdGggZD0ibTIzNC43OCA1NC4yNi0xOC4wNiAyNy4wOWE4Ni42OTQgODYuNjk0IDAgMCAxIC0xMy43Mi04LjI4bDE3LjY2LTI2LjQ4YTU5LjM3MiA1OS4zNzIgMCAwIDAgNy4xMyA0LjUgNTcuNzkzIDU3Ljc5MyAwIDAgMCA2Ljk5IDMuMTd6IiBmaWxsPSIjZWFlOWU0Ii8+PHBhdGggZD0ibTI3OC44NSA4Ny4zOGE4Ny42NjUgODcuNjY1IDAgMCAxIC0xNS44IDIuNTZxLTMuMDYuMjI1LTYuMTUuMjJoLTEuOHEtMy4wOSAwLTYuMTUtLjIyYTg3LjY2NSA4Ny42NjUgMCAwIDEgLTE1LjgtMi41Nmw0LjU4LTMyLjA4YTU5LjUyMyA1OS41MjMgMCAwIDAgMTUuNzcgMi44Yy44My4wNCAxLjY2LjA2IDIuNS4wNnMxLjY3LS4wMiAyLjUtLjA2YTU5LjUyMyA1OS41MjMgMCAwIDAgMTUuNzctMi44eiIgZmlsbD0iI2VhZTllNCIvPjxwYXRoIGQ9Im0zMDkgNzMuMDdhODYuNjk0IDg2LjY5NCAwIDAgMSAtMTMuNzIgOC4yOGwtMTguMDYtMjcuMDlhNTkuMTA3IDU5LjEwNyAwIDAgMCAxNC4xMi03LjY3eiIgZmlsbD0iI2VhZTllNCIvPjxwYXRoIGQ9Im0zMjguNTYgNTMuMjR2LjAxYTg3Ljg5IDg3Ljg5IDAgMCAxIC0xMC40NyAxMi4xNmwtMjIuMzYtMjIuMzZhNTkuODM2IDU5LjgzNiAwIDAgMCAxMC4wMi0xMS41MWwuNDQtLjY3eiIgZmlsbD0iI2VhZTllNCIvPjxwYXRoIGQ9Im0yMTYuMjcgNDMuMDUtMjIuMzYgMjIuMzZhODcuODkgODcuODkgMCAwIDEgLTEwLjQ3LTEyLjE2di0uMDFsMjIuMzctMjIuMzcuNDQuNjdhNTkuODM2IDU5LjgzNiAwIDAgMCAxMC4wMiAxMS41MXoiIGZpbGw9IiNjZGNjYzgiLz48cGF0aCBkPSJtMjM0Ljc4IDU0LjI2LTE4LjA2IDI3LjA5YTg2LjY5NCA4Ni42OTQgMCAwIDEgLTEzLjcyLTguMjhsMTcuNjYtMjYuNDhhNTkuMzcyIDU5LjM3MiAwIDAgMCA3LjEzIDQuNSA1Ny43OTMgNTcuNzkzIDAgMCAwIDYuOTkgMy4xN3oiIGZpbGw9IiNjZGNjYzgiLz48cGF0aCBkPSJtMjUzLjUgNTguMS00LjU1IDMxLjg0YTg3LjY2NSA4Ny42NjUgMCAwIDEgLTE1LjgtMi41Nmw0LjU4LTMyLjA4YTU5LjUyMyA1OS41MjMgMCAwIDAgMTUuNzcgMi44eiIgZmlsbD0iI2NkY2NjOCIvPjxwYXRoIGQ9Im0zMjguNTYgNTMuMjR2LjAxYTg3Ljg5IDg3Ljg5IDAgMCAxIC0xMC40NyAxMi4xNmwtMjIuMzYtMjIuMzZhNTkuODM2IDU5LjgzNiAwIDAgMCAxMC4wMi0xMS41MWwuNDQtLjY3eiIgZmlsbD0iI2NkY2NjOCIvPjxwYXRoIGQ9Im0zMDkgNzMuMDdhODYuNjk0IDg2LjY5NCAwIDAgMSAtMTMuNzIgOC4yOGwtMTguMDYtMjcuMDlhNTkuMTA3IDU5LjEwNyAwIDAgMCAxNC4xMi03LjY3eiIgZmlsbD0iI2NkY2NjOCIvPjxwYXRoIGQ9Im0yNjMuMDUgODkuOTRhODcuNjY1IDg3LjY2NSAwIDAgMCAxNS44LTIuNTZsLTQuNTgtMzIuMDhhNTkuNTIzIDU5LjUyMyAwIDAgMSAtMTUuNzcgMi44eiIgZmlsbD0iI2NkY2NjOCIvPjxwYXRoIGQ9Im04Ni40IDI0MC40OWE4IDggMCAwIDEgLTExLjIgMS42bC0xMS4yLTguNC0xMS4yIDguNGE3Ljk1MSA3Ljk1MSAwIDAgMSAtNC43OSAxLjYgOC4xNTQgOC4xNTQgMCAwIDEgLTIuNjMtLjQ0bDIuNzQtMTcuNjR2LS4wMWwyLjU1LTEuOTEtMi4wMi0xLjUxdi0uMDFsMi43NC0xNy43MmE3LjI4OSA3LjI4OSAwIDAgMSAxLjQxLjg0bDExLjIgOC40IDExLjItOC40YTggOCAwIDEgMSA5LjYgMTIuOGwtNy40NyA1LjYgNy40NyA1LjZhOCA4IDAgMCAxIDEuNiAxMS4yeiIgZmlsbD0iI2JiYmFiNiIvPjxwYXRoIGQ9Im00NjcuMSAyNDYuMzItMTEuMS04LjMyLTExLjIgOC40YTggOCAwIDAgMSAtOS42LTEyLjhsNy40Ny01LjYtNy40Ny01LjZhOCA4IDAgMSAxIDkuNi0xMi44bDExLjIgOC40IDYuMDEtNC41MXoiIGZpbGw9IiNiYmJhYjYiLz48cGF0aCBkPSJtNDkwLjYyOCAzNTYuNTIxLTkuNDQ3LTc1LjU2N2MtLjg0OS02LjgtMjguOTM3LTE4Mi42NjMtMjguOTM3LTE4Mi42NjMtLjAzNy0uMjQtLjA4NS0uNDc5LS4xNDQtLjcxNGE0Ni44MzUgNDYuODM1IDAgMCAwIC0yNC40NTMtMzAuNTMzbC0uMDQ4LS4wMjYtLjAyMS0uMDExYTcuODI4IDcuODI4IDAgMCAwIC0uNzctLjMzMWMtLjAyNi0uMDEtLjA0OS0uMDIzLS4wNzQtLjAzMmwtODUtMzAuOTExLTMuNzg1LTcuNTcxYTIyIDIyIDAgMCAwIC0zNy45ODgtMi4zNjJsLS44NjcgMS4zYTUxLjY4OCA1MS42ODggMCAwIDEgLTQzLjA5NCAyMy4wNjIgNTEuNjkgNTEuNjkgMCAwIDEgLTQzLjA5NC0yMy4wNjJsLS44NjctMS4zYTIyIDIyIDAgMCAwIC0zNy45ODMgMi4zNjVsLTMuNzg1IDcuNTcxLTg1IDMwLjkxMWMtLjAyNi4wMDktLjA1LjAyMy0uMDc3LjAzM2E4LjAxNiA4LjAxNiAwIDAgMCAtLjc2Ny4zM2wtLjAyMS4wMTEtLjA0OC4wMjZhNDYuODM1IDQ2LjgzNSAwIDAgMCAtMjQuNDU4IDMwLjUzYy0uMDU5LjIzNS0uMTA3LjQ3NC0uMTQ0LjcxNCAwIDAtMjguMDg4IDE3NS44NjctMjguOTM3IDE4Mi42NjNsLTkuNDQ3IDc1LjU2N2ExNzQuNDMgMTc0LjQzIDAgMCAwIDEwLjYyOCA4NC45NjJ2NDYuNTE3YTggOCAwIDAgMCA4IDhoNTZhOCA4IDAgMCAwIDgtOHYtNDQuNzdhMTA0LjEyMiAxMDQuMTIyIDAgMCAwIDExLjk4Mi0xNS40MjIgMTE5LjI5NCAxMTkuMjk0IDAgMCAwIDQuMzUxIDExLjk0M2w3LjY2NyAxNy44OTF2MzAuMzU4YTggOCAwIDAgMCA4IDhoMjQwYTggOCAwIDAgMCA4LTh2LTMwLjM1OGw3LjY2Ny0xNy44OTFjMS4xNjctMi43MjEgMi4yMDgtNS40ODcgMy4xNjQtOC4yNzZhOC4wMTEgOC4wMTEgMCAwIDAgMi41NTgtMS41NzQgMTA0LjMyMSAxMDQuMzIxIDAgMCAwIDEwLjYxMSAxMy4zMjh2NDQuNzcxYTggOCAwIDAgMCA4IDhoNTZhOCA4IDAgMCAwIDgtOHYtNDYuNTE3YTE3NC40MzQgMTc0LjQzNCAwIDAgMCAxMC42MjgtODQuOTYyem0tMTEzLjY2NyA3Ni45MjgtNi4yMzYgMTQuNTUxaC0yMjkuNDVsLTYuMjM2LTE0LjU1MWMtLjItLjQ4LS4zODYtLjk2Ny0uNTg0LTEuNDQ5aDI0My4wOWMtLjE5Ny40ODItLjM3OC45NjktLjU4NCAxLjQ0OXptLTMwNC45NjEtMzA1LjQ0OWE4IDggMCAxIDEgLTMuMDQzIDE1LjM4MWwyLjM4LTE1LjM0OWMuMjE5LS4wMTcuNDQtLjAzMi42NjMtLjAzMnptMzY4LjY2My4wMzIgMi4zODMgMTUuMzY5YTggOCAwIDEgMSAtMy4wNDYtMTUuNDAxYy4yMjMgMCAuNDQ0LjAxNS42NjMuMDMyem0xMy43NjQgODguNzg5LTkuNjI3LTcuMjIxYTggOCAwIDEgMCAtOS42IDEyLjhsNy40NjcgNS42LTcuNDY3IDUuNmE4IDggMCAxIDAgOS42IDEyLjhsMTEuMi04LjQgMS45MzUgMS40NTEgMi41NjMgMTYuNTM0LTY1Ljg3OSAxMy42NDYgMi4xOC03MC4xNjkgNTMuODkzLTYuNzM2em0tMTEyLjc3IDg5LjUyMmE4IDggMCAwIDAgLTExLjMxNCAwbC0zNC4zNDMgMzQuMzQ0LTM0LjM0My0zNC4zNDRhOCA4IDAgMCAwIC0xMS4zMTQgMGwtMzQuMzQzIDM0LjM0NC0zNC4zNDMtMzQuMzQ0YTggOCAwIDAgMCAtMTEuMzE0IDBsLTM0LjQ0MyAzNC40NDEtMS42NzQtNTIuNzg0aDI0My41NDhsLTEuNjc0IDUyLjc4NHptMjMuMDMgNDUuNjU3LTI4LjY4NyAyOC42ODctMjguNjg3LTI4LjY4NyAyOC42ODctMjguNjg3em0tODAgMC0yOC42ODcgMjguNjg3LTI4LjY4Ny0yOC42ODcgMjguNjg3LTI4LjY4N3ptLTgwIDAtMjguNjg3IDI4LjY4Ny0yOC42ODctMjguNjg3IDI4LjY4Ny0yOC42ODd6bTE3NS4xNTUtMTI5LjExOC03LjA0Mi01LjI4MmE4IDggMCAxIDAgLTkuNiAxMi44bDcuNDY3IDUuNi03LjQ2NyA1LjZhOCA4IDAgMSAwIDkuNiAxMi44bDYuMTg5LTQuNjQyLS43MDcgMjIuMjQyaC0yNDQuNTY0bC0uNzA3LTIyLjI0MiA2LjE4OSA0LjY0MmE4IDggMCAwIDAgOS42LTEyLjhsLTcuNDY3LTUuNiA3LjQ2Ny01LjZhOCA4IDAgMSAwIC05LjYtMTIuOGwtNy4wNDIgNS4yODItLjcyNy0yMi44ODJoMjQ5LjEzOHptLTI2NC42NDItMjMuNDIgMi4xOCA3MC4xNjktNjUuODgtMTMuNjQ2IDIuMjY3LTE0LjYyNCAxMC4yMzMtNy42NzMgMTEuMiA4LjRhOCA4IDAgMSAwIDkuNi0xMi44bC03LjQ2Ny01LjYgNy40NjctNS42YTggOCAwIDEgMCAtOS42LTEyLjhsLTExLjIgOC40LTUuMzIzLTMuOTg4IDIuNjMxLTE2Ljk3MXptLTY4LjUgODMuNDc2Yy40NjktMy43NSAxLjA5NC03LjUgMS44MzUtMTEuMjNsNjkuMzYzIDE0LjM2OCAxLjIzNSAzOS43ODFjMCAuMDQ0IDAgLjA4OC4wMDYuMTMyYTEwMy45NTUgMTAzLjk1NSAwIDAgMSAtLjM4NCAxNC45NDlsLTIyLjc1NSAxNy4wNjItMjcuMi0yMC40YTggOCAwIDAgMCAtOC45MTYtLjQ2bC0yMS41ODQgMTIuOTV6bTgyLjY0NiAxMzMuMDYyYTEwNC4zMTIgMTA0LjMxMiAwIDAgMSAxLjI4OC01Mi4xcS42NzEtMi4zNDYgMS4yNDMtNC43MTFsMzguNDY2IDM4LjQ2NmE4IDggMCAwIDAgMTEuMzE0IDBsMzQuMzQzLTM0LjM0MiAzNC4zNDMgMzQuMzQ0YTggOCAwIDAgMCAxMS4zMTQgMGwzNC4zNDMtMzQuMzQ0IDM0LjM0MyAzNC4zNDRhOCA4IDAgMCAwIDExLjMxNCAwbDM4LjQ2Ny0zOC40NjdxLjU2NSAyLjMyOSAxLjIyMyA0LjY0M2wuMDIxLjA3N2ExMDQuMyAxMDQuMyAwIDAgMSAxLjI4NiA1Mi4wOXptMjYzLjktNzUuMDYyYTEwMy44MDcgMTAzLjgwNyAwIDAgMSAtLjM4My0xNC45NDljMC0uMDQ0IDAtLjA4OCAwLS4xMzJsMS4yMzYtMzkuNzgxIDY5LjM2Mi0xNC4zNjhjLjc0MSAzLjcyNyAxLjM2NiA3LjQ4IDEuODM1IDExLjIzbDguNDA0IDY3LjE1Mi0yMS41ODMtMTIuOTVhOCA4IDAgMCAwIC04LjkxNi40NmwtMjcuMjAxIDIwLjR6bTQ0Ljk0LTIyOC44NjNhMjQgMjQgMCAxIDAgNy4zMyA0Ny4yODVsMi43MiAxNy41NDgtNTAuOTM2IDYuMzY3LjM4LTEyLjIwOGMxLjM3Ny0yOC43IDEwLjctNTkuMDMxIDI0LjM3Ny04MC42MiAxLjI0OC0xLjg5MiAyLjUyNC0zLjc2OSAzLjg2Mi01LjYxMmEzMC44NTkgMzAuODU5IDAgMCAxIDEwLjU3MiAxNi4yODl6bS0xNjAuNDc2LTMyLjY2MS0yLjMtMTYuMDg1cTMuMjQtLjk2NiA2LjM2LTIuMjQ2bDkuMDM2IDEzLjU1NWE3OS43NjggNzkuNzY4IDAgMCAxIC0xMy4wOTYgNC43NzZ6bTI2Ljg1Ny0xMi45ODQtOC43NzYtMTMuMTY0YTY3LjY1NSA2Ny42NTUgMCAwIDAgNS42MTYtNC41NDRsMTEuMDM1IDExLjAzNGE3OS44MTIgNzkuODEyIDAgMCAxIC03Ljg3NSA2LjY3NHptOC43MDctMzEuNzU4YTYgNiAwIDAgMSAxMC4zNi42NDVsMy4xMzUgNi4yNy0zLjMgNC45NTFjLS4yMTUuMzIzLS40NC42MzgtLjY2Ljk1N2wtMTAuODU5LTEwLjg1OGMuMTUyLS4yMjIuMzA4LS40MzkuNDU3LS42NjN6bS01My42MzQgMzEuMzg3IDIuMjc4IDE1Ljk0N3EtMi40OTMuMTU2LTUuMDE0LjE1NmgtMS44MDRxLTIuNTIgMC01LjAxNi0uMTU2bDIuMjc5LTE1Ljk0N2MxLjIwOC4wNjQgMi40MjIuMSAzLjY0MS4xczIuNDI4LS4wMzYgMy42MzYtLjF6bS00OS4wNDgtMTcuMzM4YTY3LjQ1MSA2Ny40NTEgMCAwIDAgNS42MTYgNC41NDRsLTguNzc2IDEzLjE2NGE3OS44IDc5LjggMCAwIDEgLTcuODc0LTYuNjc0em0xOS42MzQgMTIuMzYxcTMuMTE3IDEuMjggNi4zNiAyLjI0N2wtMi4zIDE2LjA4NWE3OS43MjQgNzkuNzI0IDAgMCAxIC0xMy4xLTQuNzc3em0tNDEuODU5LTI1Ljc2NWE2IDYgMCAwIDEgMTAuMzU4LS42NDVsLjg2OCAxLjNjLjE0OS4yMjMuMzA1LjQ0LjQ1Ny42NjFsLTEwLjg1OCAxMC44NjFjLS4yMi0uMzE5LS40NDQtLjYzMy0uNjYtLjk1NmwtMy4zLTQuOTUxem0tMTUuNTM4IDE2LjUxMSAyLjM5MSAzLjU4NWE5NS44MDYgOTUuODA2IDAgMCAwIDc5Ljg4IDQyLjc0OWgxLjhhOTUuODA5IDk1LjgwOSAwIDAgMCA3OS44NzctNDIuNzQ5bDIuMzktMy41ODUgNzEuOTQzIDI2LjE2MXEtLjgxNyAxLjItMS42MTYgMi40MjlhMTY0LjE4NSAxNjQuMTg1IDAgMCAwIC0yNy44MTYgODQuNTUzdi4xMDlsLS42IDE4LjkyaC0yNTAuMTU1bC0uNi0xOC45MnYtLjEwOWExNjQuMiAxNjQuMiAwIDAgMCAtMjcuODIzLTg0LjU1M3EtLjgtMS4yMzItMS42MTctMi40Mjl6bS04Ni43NDkgMzMuMDA3YzEuMzM2IDEuODQxIDIuNjExIDMuNzE2IDMuODU3IDUuNjA1IDEzLjY4MiAyMS41OSAyMyA1MS45MjcgMjQuMzgzIDgwLjYyN2wuMzc5IDEyLjIwOC01MC45MzktNi4zNjcgMi43MjEtMTcuNTUzYTI0IDI0IDAgMSAwIDcuMzI5LTQ3LjI4bDEuNy0xMC45NTFhMzAuODU5IDMwLjg1OSAwIDAgMSAxMC41Ny0xNi4yODl6bTEuOTIgMzk1LjE2NWgtNDB2LTMyaDQwem0yMi42LTc3LjAyMmE4OC4xMTcgODguMTE3IDAgMCAxIC0xOCAyOS4wMjJoLTQ3LjFhMTU4LjUyOCAxNTguNTI4IDAgMCAxIC05LjI0OC02Mi4wMjZsMjcuMjQ4LTE2LjM0NyAyNy43IDIwLjc3M2E4IDggMCAwIDAgOS42IDBsMTMuMTI3LTkuODQ2YTEyMC4yNTEgMTIwLjI1MSAwIDAgMCAtMi44NzIgMzcuNDQ2IDguMSA4LjEgMCAwIDAgLS40NTUuOTc4em0yNTcuNCA3Ny4wMjJoLTIyNHYtMTZoMjI0em0zMi45MTgtNzcuNjgyYTEyMC4yNDQgMTIwLjI0NCAwIDAgMCAtMi44NDQtMzcuNzYzbDEzLjEyNiA5Ljg0NWE4IDggMCAwIDAgOS42IDBsMjcuNy0yMC43NzMgMjcuMjQ1IDE2LjM0N2ExNTguNTUxIDE1OC41NTEgMCAwIDEgLTkuMjUxIDYyLjAyNmgtNDcuMDk0YTg4LjE2MSA4OC4xNjEgMCAwIDEgLTE3LjY0Ni0yOC4xMDkgOC4wNDMgOC4wNDMgMCAwIDAgLS44MzYtMS41NzN6bTYzLjA4MiA3Ny42ODJoLTQwdi0zMmg0MHoiLz48cGF0aCBkPSJtMjQ1LjMxOCAzNDEuMzE4aDIxLjM2M3YyMS4zNjNoLTIxLjM2M3oiIHRyYW5zZm9ybT0ibWF0cml4KC43MDcgLS43MDcgLjcwNyAuNzA3IC0xNzMuOTIxIDI4NC4xMTgpIi8+PHBhdGggZD0ibTMyNS4zMTggMzQxLjMxOGgyMS4zNjN2MjEuMzYzaC0yMS4zNjN6IiB0cmFuc2Zvcm09Im1hdHJpeCguNzA3IC0uNzA3IC43MDcgLjcwNyAtMTUwLjQ4OSAzNDAuNjg2KSIvPjxwYXRoIGQ9Im0xNjUuMzE4IDM0MS4zMThoMjEuMzYzdjIxLjM2M2gtMjEuMzYzeiIgdHJhbnNmb3JtPSJtYXRyaXgoLjcwNyAtLjcwNyAuNzA3IC43MDcgLTE5Ny4zNTIgMjI3LjU0OSkiLz48cGF0aCBkPSJtNTMuMzE4IDM3OS42MjZoMjEuMzYzdjIxLjM2M2gtMjEuMzYzeiIgdHJhbnNmb3JtPSJtYXRyaXgoLjcwNyAtLjcwNyAuNzA3IC43MDcgLTI1Ny4yNDQgMTU5LjU3MykiLz48cGF0aCBkPSJtNDM3LjMxOCAzODAuNDI0aDIxLjM2M3YyMS4zNjNoLTIxLjM2M3oiIHRyYW5zZm9ybT0ibWF0cml4KC43MDcgLS43MDcgLjcwNyAuNzA3IC0xNDUuMzM3IDQzMS4zMzYpIi8+PHBhdGggZD0ibTIzMy42IDI1Mi44YTggOCAwIDAgMCAxMS4yIDEuNmwxMS4yLTguNCAxMS4yIDguNGE4IDggMCAwIDAgOS42LTEyLjhsLTcuNDY3LTUuNiA3LjQ2Ny01LjZhOCA4IDAgMSAwIC05LjYtMTIuOGwtMTEuMiA4LjQtMTEuMi04LjRhOCA4IDAgMSAwIC05LjYgMTIuOGw3LjQ2NyA1LjYtNy40NjcgNS42YTggOCAwIDAgMCAtMS42IDExLjJ6Ii8+PHBhdGggZD0ibTI5Ny42IDI1Mi44YTggOCAwIDAgMCAxMS4yIDEuNmwxMS4yLTguNCAxMS4yIDguNGE4IDggMCAwIDAgOS42LTEyLjhsLTcuNDY3LTUuNiA3LjQ2Ny01LjZhOCA4IDAgMSAwIC05LjYtMTIuOGwtMTEuMiA4LjQtMTEuMi04LjRhOCA4IDAgMSAwIC05LjYgMTIuOGw3LjQ2NyA1LjYtNy40NjcgNS42YTggOCAwIDAgMCAtMS42IDExLjJ6Ii8+PHBhdGggZD0ibTE2OS42IDI1Mi44YTggOCAwIDAgMCAxMS4yIDEuNmwxMS4yLTguNCAxMS4yIDguNGE4IDggMCAwIDAgOS42LTEyLjhsLTcuNDY3LTUuNiA3LjQ2Ny01LjZhOCA4IDAgMSAwIC05LjYtMTIuOGwtMTEuMiA4LjQtMTEuMi04LjRhOCA4IDAgMCAwIC05LjYgMTIuOGw3LjQ2NyA1LjYtNy40NjcgNS42YTggOCAwIDAgMCAtMS42IDExLjJ6Ii8+PHBhdGggZD0ibTI1NiAxNjhhMjQgMjQgMCAxIDAgLTI0LTI0IDI0LjAyNyAyNC4wMjcgMCAwIDAgMjQgMjR6bTAtMzJhOCA4IDAgMSAxIC04IDggOC4wMDkgOC4wMDkgMCAwIDEgOC04eiIvPjxwYXRoIGQ9Im0xNjggMTYwYTI0IDI0IDAgMSAwIC0yNC0yNCAyNC4wMjcgMjQuMDI3IDAgMCAwIDI0IDI0em0wLTMyYTggOCAwIDEgMSAtOCA4IDguMDA5IDguMDA5IDAgMCAxIDgtOHoiLz48cGF0aCBkPSJtMzM2IDE2MGEyNCAyNCAwIDEgMCAtMjQtMjQgMjQuMDI3IDI0LjAyNyAwIDAgMCAyNCAyNHptMC0zMmE4IDggMCAxIDEgLTggOCA4LjAwOSA4LjAwOSAwIDAgMSA4LTh6Ii8+PC9nPjwvc3ZnPg=="  alt="fashion"></a>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Fashion</a>
<h3 class="title">
<a href="item-details.html">빨간스웨터</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Delaware, USA</a></p>
<ul class="info">
<li class="price">33000&#8361;</li>
</ul>
</div>
</div>

</div>
</div>
<div class="row">
<div class="col-12">

<div class="pagination left">
<ul class="pagination-list">
<li><a href="javascript:void(0)">1</a></li>
<li class="active"><a href="javascript:void(0)">2</a></li>
<li><a href="javascript:void(0)">3</a></li>
<li><a href="javascript:void(0)">4</a></li>
<li><a href="javascript:void(0)"><i class="lni lni-chevron-right"></i></a></li>
</ul>
</div>

</div>
</div>
</div>
<div class="tab-pane fade" id="nav-list" role="tabpanel" aria-labelledby="nav-list-tab">
<div class="row">
<div class="col-lg-12 col-md-12 col-12">

<div class="single-item-grid">
<div class="row align-items-center">
<div class="col-lg-5 col-md-7 col-12">
<div class="image">
<a href="item-details.html"><img src="resources/images/items-tab/item-2.jpg" alt="#"></a>
</div>
</div>
<div class="col-lg-7 col-md-5 col-12">
<div class="content">
<a href="javascript:void(0)" class="tag">Others</a>
<h3 class="title">
 <a href="item-details.html">Travel Kit</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>San Francisco</a></p>
<ul class="info">
<li class="price">$580.00</li>
</ul>
</div>
</div>
</div>
</div>

</div>
<div class="col-lg-12 col-md-12 col-12">

<div class="single-item-grid">
<div class="row align-items-center">
<div class="col-lg-5 col-md-7 col-12">
<div class="image">
<a href="item-details.html"><img src="resources/images/items-tab/item-3.jpg" alt="#"></a>
</div>
</div>
<div class="col-lg-7 col-md-5 col-12">
<div class="content">
<a href="javascript:void(0)" class="tag">Electronic</a>
<h3 class="title">
<a href="item-details.html">Nikon DSLR Camera</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Alaska, USA</a></p>
<ul class="info">
<li class="price">$560.00</li>
</ul>
</div>
</div>
</div>
</div>

</div>
<div class="col-lg-12 col-md-12 col-12">

<div class="single-item-grid">
<div class="row align-items-center">
<div class="col-lg-5 col-md-7 col-12">
<div class="image">
<a href="item-details.html"><img src="resources/images/items-tab/item-1.jpg" alt="#"></a>
</div>
</div>
<div class="col-lg-7 col-md-5 col-12">
<div class="content">
<a href="javascript:void(0)" class="tag">Mobile</a>
<h3 class="title">
<a href="item-details.html">Apple Iphone X</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Boston</a></p>
<ul class="info">
<li class="price">$890.00</li>
</ul>
</div>
</div>
</div>
</div>

</div>
<div class="col-lg-12 col-md-12 col-12">

<div class="single-item-grid">
<div class="row align-items-center">
<div class="col-lg-5 col-md-7 col-12">
<div class="image">
<a href="item-details.html"><img src="resources/images/items-tab/item-4.jpg" alt="#"></a>
</div>
</div>
<div class="col-lg-7 col-md-5 col-12">
<div class="content">
<a href="javascript:void(0)" class="tag">Furniture</a>
<h3 class="title">
<a href="item-details.html">Poster Paint</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Las Vegas</a></p>
<ul class="info">
<li class="price">$85.00</li>
</ul>
</div>
</div>
</div>
</div>

</div>
<div class="col-lg-12 col-md-12 col-12">

<div class="single-item-grid">
<div class="row align-items-center">
<div class="col-lg-5 col-md-7 col-12">
<div class="image">
<a href="item-details.html"><img src="resources/images/items-tab/item-6.jpg" alt="#"></a>
<span class="flat-badge rent">Rent</span>
</div>
</div>
<div class="col-lg-7 col-md-5 col-12">
<div class="content">
<a href="javascript:void(0)" class="tag">Books & Magazine</a>
<h3 class="title">
<a href="item-details.html">Story Book</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>New York, USA</a></p>
<ul class="info">
<li class="price">$120.00</li>
</ul>
</div>
</div>
</div>
</div>

</div>
</div>
<div class="row">
<div class="col-12">

<div class="pagination left">
<ul class="pagination-list">
<li><a href="javascript:void(0)">1</a></li>
<li class="active"><a href="javascript:void(0)">2</a></li>
<li><a href="javascript:void(0)">3</a></li>
<li><a href="javascript:void(0)">4</a></li>
<li><a href="javascript:void(0)"><i class="lni lni-chevron-right"></i></a></li>
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
</div>
</div>
</section>


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
<li>Tel. +(123) 1800-567-8990 <br> Mail. <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="98ebede8e8f7eaecd8fbf4f9ebebf1ffeaf1fcebb6fbf7f5">[email&#160;protected]</a></li>
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

<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/wow.min.js"></script>
<script src="resources/js/tiny-slider.js"></script>
<script src="resources/js/glightbox.min.js"></script>
<script src="resources/js/main.js"></script>
</body>
</html>