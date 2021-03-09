<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<title>ALZ</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&family=Open+Sans:wght@300;400;700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
<style>
body * {
	font-family: 'Ubuntu', sans-serif;
}

.inner {
	max-width: 1200px;
	width: 100%;
	margin: 0 auto;
}

body .letmeknow {
	font-family: 'Ubuntu', sans-serif;
    font-size: 20px;
    font-weight: 600;
    padding: 20px;
    color: cadetblue;
}

header {
	width: 100%; box-shadow: 0 0 5px rgba(0,0,0,0.3);
	background: #fff; 
	position: fixed; 
	z-index: 99; 
	left: 0; 
	top: 0;
}

header .logo {
	padding: 15px 0;
}

header .logo img {
	width: 120px;
}

header .bottom_line {
	display: flex;
	justify-content: space-between;
	align-items: center;
	border-top: 1px solid #ccc;
    height: 45px;
}

header .bottom_line nav {
	width: 50%;
}

header .bottom_line nav>ul {
	display: flex;
	align-items: center;
	justify-content: space-between;
}

header .bottom_line nav>ul>li {
	flex: 1; 
	position: relative;
}

header .bottom_line .m_menu {
	display: block; 
	text-align: center; 
	padding: 20px 0; 
	font-size: 15px; 
	color: #212121;
}

header .bottom_line nav .s_nav {
	/*display: none;*/ 
	position: absolute; 
	left: 0; 
	top: 50px; 
	width: 100%; 
	background: #fff; 
	border: 1px solid #ddd; 
	display:none;
}

header .bottom_line nav .s_nav a {
	display: block; 
	font-size: 14px; 
	padding: 10px 10px; 
	/* text-align: center;  */
	color: #585858;
}

header .bottom_line .right {
	display: flex;
	justify-content: flex-end;
	align-items: center;
}

header .bottom_line .mypage {
	width: 50%;
}

header .bottom_line .mypage>ul {
	display: flex;
	align-items: center;
	justify-content: space-between;
}

header .bottom_line .mypage>ul>li {
	flex: 1; 
	position: relative;
}

header .bottom_line .mypage .s_nav {
	/*display: none;*/ 
	position: absolute; 
	left: -60px; 
	top: 54.5px; 
	width: 150px; 
	background: #fff; 
	border: 1px solid #ddd; 
	display:none;
}

header .bottom_line .mypage .s_nav a {
	display: block; 
	font-size: 14px; 
	padding: 10px 0; 
	text-align: center; 
	color: #585858;
}
	
header .bottom_line .right > div {margin-left: 20px;}
header .bottom_line .right > div i {font-size: 24px; color: #212121;}
header .bottom_line .right .search_wrap {display: flex; align-items: center;}
header .bottom_line .right .search_wrap .search_bar input{
	width: 0; 
	margin-right: 10px; 
	padding: 0; 
	visibility: hidden; 
	opacity: 0; 
	transition: all 0.3s;
	border: 0; 
	border-bottom: 2px solid #212121; 
	height: 36px;
}
header .bottom_line .right .search_wrap .search_bar.on input {
	width: 200px; 
	visibility: visible; 
	opacity: 1;
	transition: all 0.3s; 
}

</style>

        
</head>
<body>
<sec:authentication var="principal" property="principal" />
<header>
	<div class="inner">
		<div class="logo"><a href="/" class="letmeknow">LetMeKnow</a></div>
		<div class="bottom_line">
			<nav>
				<ul>
					<li><a href="" class="m_menu">About us</a>
						<!-- <ul class="s_nav">
							<li><a href="/board/list?typeId=1">Notice</a></li>
							<li><a href="">About</a></li>
							<li><a href="/board/list?typeId=2">Event</a></li>
						</ul> -->
					</li>
					<li><a href="" class="m_menu">Hobby</a>
						<ul class="s_nav">
							<li><a href="/lesson/list?main=1&sub=1">Art</a></li>
							<li><a href="/lesson/list?main=1&sub=2">Craft</a></li>
							<li><a href="/lesson/list?main=1&sub=3">Digital Drawing</a></li>
							<li><a href="/lesson/list?main=1&sub=4">Flower</a></li>
							<li><a href="/lesson/list?main=1&sub=5">Photography & Video</a></li>
							<li><a href="/lesson/list?main=1&sub=6">Food & Drink</a></li>
							<li><a href="/lesson/list?main=1&sub=7">Music</a></li>
							<li><a href="/lesson/list?main=1&sub=8">Health & Fitness</a></li>
							<li><a href="/lesson/list?main=1&sub=9">Beauty</a></li>
						</ul>
					</li>
					<li><a href="" class="m_menu">Academic</a>
						<ul class="s_nav">
							<li><a href="/lesson/list?main=2&sub=1">Language</a></li>
							<li><a href="/lesson/list?main=2&sub=2">Office Productivity</a></li>
							<li><a href="/lesson/list?main=2&sub=3">IT</a></li>
							<li><a href="/lesson/list?main=2&sub=4">Business</a></li>
							<li><a href="/lesson/list?main=2&sub=5">Test Prep</a></li>
							<li><a href="/lesson/list?main=2&sub=6">Social Science</a></li>
						</ul>
					</li>
					<li><a href="" class="m_menu">Forum</a>
						<ul class="s_nav">
							<li><a href="/board/list?typeId=3">General</a></li>
							<li><a href="/board/list?typeId=4">Review</a></li>
							<li><a href="/board/list?typeId=5">Q&A</a></li>
						</ul>
					</li>
				</ul>
			</nav>
			<div class="right">
				<div class="search_wrap">
					<div class="search_bar">
						<input type="text" placeholder="   Search">
					</div>
					<a href="#null" class="search_btn"><i class="xi-search"></i></a>
				</div>
				<div class="mypage">
				<ul><li><a href="" class="m_menu" id="navUser"><i class="xi-user-o"></i></a>
					<sec:authorize access="isAuthenticated()">
					<ul class="s_nav">
						<li><a href="/myPage/boardList">My page</a></li>
						<li><a href="/lesson/register">Register Class</a></li>
						<c:if test="${principal.role eq 'ROLE_ADMIN'}">
						<li><a href="/admin/index">Admin</a></li>
						</c:if>
						<li><a href="/logout">Log out</a></li>
					</ul>
					</sec:authorize>
					<sec:authorize access="isAnonymous()">
					<ul class="s_nav">
						<li><a href="/join">Sign up</a></li>
						<li><a href="/login">Log in</a></li>
					</ul>
					</sec:authorize>
				</li>
				</ul>
				</div>
				<div class="cart">
					<a href="/merchandise/cart" class="cart_btn"><i class="xi-cart-o"></i></a>
				</div>
			</div>
		</div>
	</div>
</header>		
<script>

		$(document).ready(function() {
			var $menus = $("nav").find("li");
			var $mypage = $(".mypage").find("li");

			//Hover dropdown menu
			$menus.hover(function(e) {
				$(this).find("ul").stop().slideToggle();
			});
			
			$mypage.hover(function(e) {
				$(this).find("ul").stop().slideToggle();
			});
			
			if($(window).scrollTop() < 0)(function(){
				$(header .logo).hide(); 
			});
			$(".search_btn").click(function(e){
				e.preventDefault();
				$(".search_bar").toggleClass("on");
			});

		});
	</script>
</body>
</html>