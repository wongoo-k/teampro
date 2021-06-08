<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>Food Category</title>
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
<h1 class="page-title">Food Category</h1>
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
<a href="item-details.html"><img src="data:image/svg+xml;base64,PHN2ZyBoZWlnaHQ9IjQ2NHB0IiB2aWV3Qm94PSIxMiAxIDQ2NCA0NjMiIHdpZHRoPSI0NjRwdCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48cGF0aCBkPSJtMzE1IDI0MC4yNzczNDQtNTkgNi4zMjAzMTJjLTE3Ljc2OTUzMSAxLjIzODI4Mi01NiAxLjkwMjM0NC01NiAxLjkwMjM0NHYtMTUybDQwLTQ4aDE2MHY1NmMtOC44MzU5MzggMC0xNiA3LjE2NDA2Mi0xNiAxNnM3LjE2NDA2MiAxNiAxNiAxNnY2NHptMCAwIiBmaWxsPSIjZmZmMzdhIi8+PHBhdGggZD0ibTAgNDguNWg4OHYxOTEuNzc3MzQ0Yy01My4xMDU0NjktOC42MzI4MTMtODgtMjMuMjI2NTYzLTg4LTM5Ljc3NzM0NHptMCAwIiBmaWxsPSIjZmZmMzdhIi8+PHBhdGggZD0ibTQ2NCAyOTYuNWMwLTU3LjQzNzUtNDYuNTYyNS0xMDQtMTA0LTEwNGwtMTkyIDEwNHptMCAwIiBmaWxsPSIjZjllZDliIi8+PHBhdGggZD0ibTE2OCAyOTYuNXY0MS42MDE1NjJoMS42MDE1NjJjOC4yNzczNDQuMzQzNzUgMTQuNzE0ODQ0IDcuMzIwMzEzIDE0LjM5ODQzOCAxNS41OTc2NTcuMzE2NDA2IDguMjc3MzQzLTYuMTIxMDk0IDE1LjI1MzkwNi0xNC4zOTg0MzggMTUuNjAxNTYyaC0xLjYwMTU2MnYzMS4xOTkyMTloMjk2di0xMDR6bTAgMCIgZmlsbD0iI2Y4Y2YyNiIvPjxnIGZpbGw9IiNmZmYzN2EiPjxwYXRoIGQ9Im0yNDggMzQ0LjVjMCA4LjgzNTkzOC03LjE2NDA2MiAxNi0xNiAxNnMtMTYtNy4xNjQwNjItMTYtMTYgNy4xNjQwNjItMTYgMTYtMTYgMTYgNy4xNjQwNjIgMTYgMTZ6bTAgMCIvPjxwYXRoIGQ9Im0zNzYgMzUyLjVjMCA4LjgzNTkzOC03LjE2NDA2MiAxNi0xNiAxNnMtMTYtNy4xNjQwNjItMTYtMTYgNy4xNjQwNjItMTYgMTYtMTYgMTYgNy4xNjQwNjIgMTYgMTZ6bTAgMCIvPjxwYXRoIGQ9Im00MDggMzYwLjVoMTZ2MTZoLTE2em0wIDAiLz48cGF0aCBkPSJtNDI0IDMyMC41aDE2djE2aC0xNnptMCAwIi8+PHBhdGggZD0ibTI3MiAzNjAuNWgxNnYxNmgtMTZ6bTAgMCIvPjxwYXRoIGQ9Im0yOTYgMzIwLjVoMTZ2MTZoLTE2em0wIDAiLz48L2c+PHBhdGggZD0ibTIwMCAyMDAuNS0xMTIgMzkuNzc3MzQ0di0xNTJsMTEyLTM5Ljc3NzM0NHY0OCIgZmlsbD0iI2Y4Y2YyNiIvPjxwYXRoIGQ9Im0yMDAgMTI4LjVjMCA4LjgzNTkzOC03LjE2NDA2MiAxNi0xNiAxNnMtMTYtNy4xNjQwNjItMTYtMTYgNy4xNjQwNjItMTYgMTYtMTYgMTYgNy4xNjQwNjIgMTYgMTZ6bTAgMCIgZmlsbD0iI2ZmZjM3YSIvPjxwYXRoIGQ9Im0xNTIgMTc2LjVjMCA4LjgzNTkzOC03LjE2NDA2MiAxNi0xNiAxNnMtMTYtNy4xNjQwNjItMTYtMTYgNy4xNjQwNjItMTYgMTYtMTYgMTYgNy4xNjQwNjIgMTYgMTZ6bTAgMCIgZmlsbD0iI2ZmZjM3YSIvPjxwYXRoIGQ9Im0xMTIgMTEyLjVoMTZ2MTZoLTE2em0wIDAiIGZpbGw9IiNmZmYzN2EiLz48cGF0aCBkPSJtODggODguMjc3MzQ0IDExMi0zOS43NzczNDR2NDhjMTEwLjQ1NzAzMSAwIDIwMC0yMS40ODgyODEgMjAwLTQ4cy04OS41NDI5NjktNDgtMjAwLTQ4LTIwMCAyMS40ODgyODEtMjAwIDQ4YzAgMTYuNTUwNzgxIDM0Ljg5NDUzMSAzMS4xNDQ1MzEgODggMzkuNzc3MzQ0em0wIDAiIGZpbGw9IiNmOWVkOWIiLz48L3N2Zz4=" alt="cheese"/></a>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Food</a>
<h3 class="title">
<a href="item-details.html">A등급치즈</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Seoul</a></p>
<ul class="info">
<li class="price">2000&#8361;</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pg0KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDE5LjAuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPg0KPHN2ZyB2ZXJzaW9uPSIxLjEiIGlkPSJDYXBhXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4Ig0KCSB2aWV3Qm94PSIwIDAgNTEyIDUxMiIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNTEyIDUxMjsiIHhtbDpzcGFjZT0icHJlc2VydmUiPg0KPHBvbHlnb24gc3R5bGU9ImZpbGw6IzREQkFGNjsiIHBvaW50cz0iNDM2LjQyNCw2My45OTcgNTAyLDE2Ny45OTcgNTAyLDUwMiAzNzAuODQ5LDUwMiAzNzAuODQ5LDE2Ny45OTcgIi8+DQo8cG9seWdvbiBzdHlsZT0iZmlsbDojQzlGM0ZGOyIgcG9pbnRzPSI0MzYuNDI0LDYzLjk5NyAxODguNDI0LDYzLjk5NyAxMjIuODQ5LDE2Ny45OTcgMzcwLjg0OSwxNjcuOTk3ICIvPg0KPGc+DQoJPHBhdGggc3R5bGU9ImZpbGw6IzcyRDhGRjsiIGQ9Ik00MzYuNDI0LDYzLjk5N2gtMjQ4VjM2LjcyOGMwLTE0Ljc2MiwxMS45NjctMjYuNzI4LDI2LjcyOC0yNi43MjhoMTk0LjU0NA0KCQljMTQuNzYyLDAsMjYuNzI4LDExLjk2NywyNi43MjgsMjYuNzI4VjYzLjk5N3oiLz4NCgk8cG9seWdvbiBzdHlsZT0iZmlsbDojNzJEOEZGOyIgcG9pbnRzPSIxMjIuODQ5LDI1NiAxMjIuODQ5LDE2Ny45OTcgMzcwLjg0OSwxNjcuOTk3IDM3MC44NDksNTAyIDEyMi44NDksNTAyIDEyMi44NDksNTAyIAkiLz4NCjwvZz4NCjxyZWN0IHg9IjE3NCIgeT0iMjc1IiBzdHlsZT0iZmlsbDojRkZGRkZGOyIgd2lkdGg9IjE5Ni44NSIgaGVpZ2h0PSIxMjAiLz4NCjxwYXRoIHN0eWxlPSJmaWxsOiNDOUYzRkY7IiBkPSJNMTc0LDI1NkgxMHYxOTMuNTU2QzEwLDQ3OC41MiwzMy40OCw1MDIsNjIuNDQ0LDUwMmg1OS4xMTFDMTUwLjUyLDUwMiwxNzQsNDc4LjUyLDE3NCw0NDkuNTU2VjI1NnoiDQoJLz4NCjxwYXRoIHN0eWxlPSJmaWxsOiNGRkZGRkY7IiBkPSJNMTAsMzQzLjk1djEwNS42MDZDMTAsNDc4LjUyLDMzLjQ4LDUwMiw2Mi40NDQsNTAyaDU5LjExMUMxNTAuNTIsNTAyLDE3NCw0NzguNTIsMTc0LDQ0OS41NTZWMzQzLjk1DQoJSDEweiIvPg0KPHBhdGggZD0iTTEzMy4zOTksMzUxLjAyYzEuODctMS44NTksMi45MzEtNC40MzksMi45MzEtNy4wNjljMC0yLjYzMS0xLjA2MS01LjIxLTIuOTMxLTcuMDdjLTEuODU5LTEuODYtNC40My0yLjkzLTcuMDY5LTIuOTMNCgljLTIuNjMsMC01LjIxLDEuMDY5LTcuMDcsMi45M3MtMi45Myw0LjQzLTIuOTMsNy4wN2MwLDIuNjMsMS4wNjksNS4yMSwyLjkzLDcuMDY5YzEuODYsMS44Niw0LjQ0LDIuOTMxLDcuMDcsMi45MzENCglDMTI4Ljk3LDM1My45NSwxMzEuNTQsMzUyLjg4LDEzMy4zOTksMzUxLjAyeiIvPg0KPHBhdGggZD0iTTUxMC40NTksMTYyLjY2M0w0NDYuNDI0LDYxLjEwN1YzNi43MjlDNDQ2LjQyNCwxNi40NzcsNDI5Ljk0OCwwLDQwOS42OTYsMEgyMTUuMTUyYy0yMC4yNTIsMC0zNi43MjksMTYuNDc3LTM2LjcyOSwzNi43MjkNCgl2MjQuMzc5TDExNC4zOSwxNjIuNjYzYy0xLjAyNSwxLjYyNi0xLjUyNiwzLjQ3OS0xLjUyNiw1LjMzNWMtMC4wMDUtMC4wMDEtMC4wMSwwLTAuMDE1LTAuMDAxVjI0NkgxMGMtNS41MjIsMC0xMCw0LjQ3OC0xMCwxMA0KCXYxOTMuNTU2QzAsNDgzLjk4NywyOC4wMTMsNTEyLDYyLjQ0NCw1MTJINTAyYzUuNTIyLDAsMTAtNC40NzgsMTAtMTBWMTY3Ljk5N0M1MTIsMTY2LjEwOSw1MTEuNDY2LDE2NC4yNiw1MTAuNDU5LDE2Mi42NjN6DQoJIE0xOTguNDI0LDM2LjcyOWMwLTkuMjI1LDcuNTA0LTE2LjcyOSwxNi43MjktMTYuNzI5aDE5NC41NDRjOS4yMjQsMCwxNi43MjgsNy41MDQsMTYuNzI4LDE2LjcyOXYxNy4yNjloLTIyOFYzNi43MjlIMTk4LjQyNHoNCgkgTTE5My45NCw3My45OTdoMjI0LjM1Nkw0MDUuNjg0LDk0SDI5OS44MTNjLTUuNTIyLDAtMTAsNC40NzgtMTAsMTBzNC40NzgsMTAsMTAsMTBoOTMuMjYxbC0yNy43NDIsNDMuOTk3SDE0MC45NzZMMTkzLjk0LDczLjk5N3oNCgkgTTM2MC44NDksMzg0Ljk5OUgxODRWMzM2LjMxYzEuMzU5LDAuNjcsMi44NjksMS4wMzMsNC40MjQsMS4wMzNjMi4wODEsMCw0LjA4My0wLjY0Nyw1Ljc0Ny0xLjgxNlYzNjNjMCw1LjUyMiw0LjQ3OCwxMCwxMCwxMA0KCXMxMC00LjQ3OCwxMC0xMHYtNTZjMC00LjI3Ni0yLjcxOS04LjA3OS02Ljc2Ni05LjQ2M2MtNC4wNDktMS4zODMtOC41MjUtMC4wMzktMTEuMTQzLDMuMzQybC03Ljg1NCwxMC4xNDgNCgljLTEuMjI0LTEuMzY5LTIuNzU3LTIuMzE5LTQuNDA4LTIuODQ1VjI4NWgxNzYuODQ5TDM2MC44NDksMzg0Ljk5OUwzNjAuODQ5LDM4NC45OTl6IE0xODQsNDQ5LjU1NnYtNDQuNTU3aDE3Ni44NDlWNDkySDE2Ny4zMDENCglDMTc3LjY1Myw0ODAuODUxLDE4NCw0NjUuOTM0LDE4NCw0NDkuNTU2eiBNMTMyLjg0OSwxNzcuOTk3aDIyOHY4Ny4wMDJIMTg0VjI1NmMwLTUuNTIyLTQuNDc4LTEwLTEwLTEwaC00MS4xNTFWMTc3Ljk5N3oNCgkgTTIwLDQ0OS41NTZWMzUzLjk1aDYxYzUuNTIyLDAsMTAtNC40NzgsMTAtMTBzLTQuNDc4LTEwLTEwLTEwSDIwVjI2NmgxNDR2MTgzLjU1NkMxNjQsNDcyLjk2LDE0NC45Niw0OTIsMTIxLjU1Niw0OTJINjIuNDQ0DQoJQzM5LjA0LDQ5MiwyMCw0NzIuOTYsMjAsNDQ5LjU1NnogTTQ5Miw0OTJoLTIydi04Mi40NzVjMC01LjUyMi00LjQ3OC0xMC0xMC0xMHMtMTAsNC40NzgtMTAsMTBWNDkyaC02OS4xNTF2LTk3LjAwMXYtMTIwVjE3MC44ODcNCglsNTUuNTc1LTg4LjE0MUw0OTIsMTcwLjg4N1Y0OTJ6Ii8+DQo8cGF0aCBkPSJNMzE4Ljc1OCwzNzIuOTk5YzUuNTIyLDAsMTAtNC40NzgsMTAtMTB2LTAuNzk0bDUuODcyLDcuMTQ0YzEuOTc4LDIuNDA1LDQuODQzLDMuNjUsNy43MzEsMy42NQ0KCWMyLjIzNCwwLDQuNDgzLTAuNzQ1LDYuMzQ0LTIuMjc0YzQuMjY3LTMuNTA4LDQuODgzLTkuODEsMS4zNzYtMTQuMDc1TDMzMi4yODQsMzM1bDE3Ljc5Ny0yMS42NQ0KCWMzLjUwNy00LjI2NiwyLjg5MS0xMC41NjctMS4zNzYtMTQuMDc1Yy00LjI2Ny0zLjUwNS0xMC41NjctMi44OTItMTQuMDc1LDEuMzc2bC01Ljg3Miw3LjE0NHYtMC43OTRjMC01LjUyMi00LjQ3OC0xMC0xMC0xMA0KCXMtMTAsNC40NzgtMTAsMTB2NTZDMzA4Ljc1OCwzNjguNTIxLDMxMy4yMzUsMzcyLjk5OSwzMTguNzU4LDM3Mi45OTl6Ii8+DQo8cGF0aCBkPSJNMjM5LDM3Mi45OTljNS41MjIsMCwxMC00LjQ3OCwxMC0xMHYtNTZjMC01LjUyMi00LjQ3OC0xMC0xMC0xMHMtMTAsNC40NzgtMTAsMTB2NTYNCglDMjI5LDM2OC41MjEsMjMzLjQ3OCwzNzIuOTk5LDIzOSwzNzIuOTk5eiIvPg0KPHBhdGggZD0iTTI3MS40NTUsMzcyLjk5OWgxNi4zNjNjNS41MjIsMCwxMC00LjQ3OCwxMC0xMHMtNC40NzgtMTAtMTAtMTBoLTYuMzYzdi00NmMwLTUuNTIyLTQuNDc4LTEwLTEwLTEwcy0xMCw0LjQ3OC0xMCwxMHY1Ng0KCUMyNjEuNDU1LDM2OC41MjEsMjY1LjkzMywzNzIuOTk5LDI3MS40NTUsMzcyLjk5OXoiLz4NCjxwYXRoIGQ9Ik00NjAsMzgzLjE4YzIuNjMsMCw1LjIxLTEuMDcsNy4wNjktMi45MzljMS44Ni0xLjg2LDIuOTMxLTQuNDMxLDIuOTMxLTcuMDdjMC0yLjYzLTEuMDctNS4yMS0yLjkzMS03LjA3DQoJYy0xLjg1OS0xLjg1OS00LjQzOS0yLjkyLTcuMDY5LTIuOTJzLTUuMjEsMS4wNjEtNy4wNywyLjkyYy0xLjg2LDEuODctMi45Myw0LjQ0LTIuOTMsNy4wN2MwLDIuNjQsMS4wNjksNS4yMSwyLjkzLDcuMDcNCglDNDU0Ljc5LDM4Mi4xMDksNDU3LjM3LDM4My4xOCw0NjAsMzgzLjE4eiIvPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPC9zdmc+DQo=" alt="milk"/></a>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Food</a>
<h3 class="title">
<a href="item-details.html">1등급우유</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Seoul</a></p>
<ul class="info">
<li class="price">3000&#8361;</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pg0KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDE5LjAuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPg0KPHN2ZyB2ZXJzaW9uPSIxLjEiIGlkPSJDYXBhXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4Ig0KCSB2aWV3Qm94PSIwIDAgNDc5LjM1MiA0NzkuMzUyIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA0NzkuMzUyIDQ3OS4zNTI7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4NCjxwYXRoIHN0eWxlPSJmaWxsOiNCRkUxRUQ7IiBkPSJNMjk1LjY2MiwyNzkuMzUyaDE2MEw0NDAuODg2LDQ1Ni42OGMtMC42OTEsOC4yOTMtNy42MjMsMTQuNjcyLTE1Ljk0NCwxNC42NzJoLTk4LjU2DQoJYy04LjMyMSwwLTE1LjI1My02LjM3OS0xNS45NDQtMTQuNjcyTDI5NS42NjIsMjc5LjM1MnoiLz4NCjxwYXRoIHN0eWxlPSJmaWxsOiNEMUVFRjY7IiBkPSJNOTUuNjYyLDg3LjM1MnYtNDBoOTZ2NDBjNDUuNzk5LDQwLjcwOSw3Mi4wMDIsOTkuMDYsNzIsMTYwLjMzNnYxNzUuNjY0YzAsMjYuNTEtMjEuNDksNDgtNDgsNDhsMCwwDQoJaC0xNDRjLTI2LjUxLDAtNDgtMjEuNDktNDgtNDhsMCwwVjI0Ny42ODhDMjMuNjYsMTg2LjQxMiw0OS44NjMsMTI4LjA2MSw5NS42NjIsODcuMzUyeiIvPg0KPHBhdGggc3R5bGU9ImZpbGw6I0YyRjJGMjsiIGQ9Ik0xNDMuMzQyLDE3NS4xNjhjLTMxLjg2Ni0xOC4xMzYtNzAuMjU5LTIwLjc2LTEwNC4yOTYtNy4xMjgNCgljLTEwLjE1LDI1LjMyOC0xNS4zNzEsNTIuMzYyLTE1LjM4NCw3OS42NDh2MTc1LjY2NGMwLDI2LjUxLDIxLjQ5LDQ4LDQ4LDQ4bDAsMGgxNDRjMjYuNTEsMCw0OC0yMS40OSw0OC00OGwwLDBWMjQ3LjY4OA0KCWMtMC4wMDctMjIuOTUyLTMuNjk2LTQ1Ljc1My0xMC45MjgtNjcuNTM2QzIxNy41ODIsMTk2LjEzNiwxNzYuODk1LDE5NC4yODMsMTQzLjM0MiwxNzUuMTY4eiIvPg0KPHBhdGggc3R5bGU9ImZpbGw6I0JGRTFFRDsiIGQ9Ik05NS42NjIsOGg5NmMxMy4yNTUsMCwyNCwxMC43NDUsMjQsMjRsMCwwYzAsMTMuMjU1LTEwLjc0NSwyNC0yNCwyNGgtOTZjLTEzLjI1NSwwLTI0LTEwLjc0NS0yNC0yNA0KCWwwLDBDNzEuNjYyLDE4Ljc0NSw4Mi40MDcsOCw5NS42NjIsOHoiLz4NCjxwYXRoIHN0eWxlPSJmaWxsOiNGMkYyRjI7IiBkPSJNMzEwLjQzOCw0NTYuNjhjMC42OTEsOC4yOTMsNy42MjMsMTQuNjcyLDE1Ljk0NCwxNC42NzJoOTguNTZjOC4zMjEsMCwxNS4yNTMtNi4zNzksMTUuOTQ0LTE0LjY3Mg0KCWwxMC43NzYtMTI5LjMyOGgtMTUyTDMxMC40MzgsNDU2LjY4eiIvPg0KPHBhdGggZD0iTTMyNi4zODIsNDc5LjM1Mmg5OC41NmMxMi40NTctMC4wNjMsMjIuODE4LTkuNTk5LDIzLjkxMi0yMi4wMDhsMTQuODA4LTE3Ny4zMjhjMC4zNjctNC40MDMtMi45MDUtOC4yNy03LjMwOC04LjYzNg0KCWMtMC4yMy0wLjAxOS0wLjQ2MS0wLjAyOC0wLjY5Mi0wLjAyOGgtMTYwYy00LjQxOC0wLjAxNS04LjAxMiwzLjU1NC04LjAyOCw3Ljk3MmMtMC4wMDEsMC4yMzEsMC4wMDgsMC40NjIsMC4wMjgsMC42OTINCglsMTQuNzg0LDE3Ny4zMjhDMzAzLjU0MSw0NjkuNzYyLDMxMy45MTYsNDc5LjMwMSwzMjYuMzgyLDQ3OS4zNTJ6IE00MzIuOTEsNDU2LjAxNmMtMC4zNjgsNC4xNDYtMy44MzcsNy4zMjctOCw3LjMzNmgtOTguNTI4DQoJYy00LjE2My0wLjAwOS03LjYzMi0zLjE5LTgtNy4zMzZsLTEwLjAyNC0xMjAuNjY0aDEzNC42MDhMNDMyLjkxLDQ1Ni4wMTZ6IE00NDYuOTY2LDI4Ny4zNTJsLTIuNjY0LDMyaC0xMzcuMjhsLTIuNjY0LTMySDQ0Ni45NjZ6Ig0KCS8+DQo8cGF0aCBkPSJNNzEuNjYyLDQ3OS4zNTJoMTQ0YzMwLjkxMy0wLjAzNSw1NS45NjUtMjUuMDg3LDU2LTU2VjI0Ny42ODhjLTAuMDIxLTYyLjI5NS0yNi4xMzQtMTIxLjczNC03Mi0xNjMuODg4VjYyLjg2NA0KCWMxNy4wODEtNC4zOTYsMjcuMzY0LTIxLjgwNywyMi45NjgtMzguODg4QzIxOC45OTQsOS44NDksMjA2LjI0OS0wLjAxOCwxOTEuNjYyLDBoLTk2Qzc4LjAyNC0wLjAyMiw2My43MDgsMTQuMjU4LDYzLjY4NiwzMS44OTYNCgljLTAuMDE4LDE0LjU4Nyw5Ljg0OSwyNy4zMzIsMjMuOTc2LDMwLjk2OFY4My44Yy00NS44NjYsNDIuMTU0LTcxLjk3OSwxMDEuNTkzLTcyLDE2My44ODh2MTc1LjY2NA0KCUMxNS42OTcsNDU0LjI2NSw0MC43NDksNDc5LjMxNyw3MS42NjIsNDc5LjM1MnogTTc5LjY2MiwzMmMwLTguODM3LDcuMTYzLTE2LDE2LTE2aDk2YzguODMzLDAuMjUsMTUuNzkxLDcuNjE0LDE1LjU0LDE2LjQ0Nw0KCWMtMC4yMTcsNy42NjYtNS44NDQsMTQuMS0xMy40MTIsMTUuMzM3Yy0wLjY4NS0wLjI0NS0xLjQwMi0wLjM5LTIuMTI4LTAuNDMyaC05NmMtMC43MjYsMC4wNDItMS40NDMsMC4xODctMi4xMjgsMC40MzINCglDODUuNjE5LDQ2LjcyMiw3OS42OTksMzkuOTg2LDc5LjY2MiwzMnogTTEwMC45ODIsOTMuMzM2YzEuNzA3LTEuNTIsMi42ODMtMy42OTgsMi42OC01Ljk4NFY2NGg4MHYyMy4zNTINCgljLTAuMDAzLDIuMjg2LDAuOTczLDQuNDY0LDIuNjgsNS45ODRjMjUuMjIzLDIyLjQ1LDQ0LjU1Niw1MC43NDMsNTYuMzA0LDgyLjRjLTMxLjMwNiwxMS44MjYtNjYuMjU1LDkuMDc4LTk1LjMyOC03LjQ5Ng0KCWMtMjguMzUxLTE2LjI0Mi02MS44NDctMjEuMDAzLTkzLjYtMTMuMzA0QzY1LjQzMSwxMzEuNTk2LDgxLjQ3LDExMC42OTIsMTAwLjk4Miw5My4zMzZ6IE0zMS42NjIsMjQ3LjY4OA0KCWMwLjAxNy0yNS4xMzgsNC42MjYtNTAuMDYyLDEzLjYtNzMuNTQ0YzMxLjAxOS0xMS4zNTgsNjUuNDcxLTguNDMsOTQuMTI4LDhjMzIuOTgsMTguOTAxLDcyLjY2MywyMi4xNDEsMTA4LjI3Miw4Ljg0DQoJYzUuMjk0LDE4LjQzNyw3Ljk4NywzNy41MjIsOCw1Ni43MDR2MTc1LjY2NGMtMC4wMjYsMjIuMDgtMTcuOTIsMzkuOTc0LTQwLDQwaC0xNDRjLTIyLjA4LTAuMDI2LTM5Ljk3NC0xNy45Mi00MC00MFYyNDcuNjg4eiIvPg0KPHBhdGggZD0iTTIzMS42NjIsMjk1LjM1MmMtNC40MTgsMC04LTMuNTgyLTgtOHYtOGMwLTQuNDE4LDMuNTgyLTgsOC04czgsMy41ODIsOCw4djgNCglDMjM5LjY2MiwyOTEuNzcsMjM2LjA4LDI5NS4zNTIsMjMxLjY2MiwyOTUuMzUyeiIvPg0KPHBhdGggZD0iTTIzMS42NjIsMzgzLjM1MmMtNC40MTgsMC04LTMuNTgyLTgtOHYtNTZjMC00LjQxOCwzLjU4Mi04LDgtOHM4LDMuNTgyLDgsOHY1Ng0KCUMyMzkuNjYyLDM3OS43NywyMzYuMDgsMzgzLjM1MiwyMzEuNjYyLDM4My4zNTJ6Ii8+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8L3N2Zz4NCg==" /></a>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Food</a>
<h3 class="title">
<a href="item-details.html">병우유</a>
 </h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Seoul</a></p>
<ul class="info">
<li class="price">3300&#8361;</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="resources/images/food.png" alt="#"></a>
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
</ul>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="resources/images/beauty.png" alt="#"></a>
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
</ul>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="resources/images/items-tab/item-6.jpg" alt="#"></a>
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
</ul>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="resources/images/items-tab/item-7.jpg" alt="#"></a>
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
</ul>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="resources/images/items-tab/item-1.jpg" alt="#"></a>
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
</ul>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="resources/images/items-tab/item-8.jpg" alt="#"></a>
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