<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="./includes/header.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&family=Open+Sans:wght@300;400;700&display=swap" rel="stylesheet">
<style>
body * {
	font-family: 'Ubuntu', sans-serif;
}

h2 {
	font-size: 25px;
}

.slide_wrap {
    padding-top: 95px;
    width: 1200px;
    height: 400px;
  	margin: 0 auto;
}

.slide_wrap .swiper-container {
	overflow: hidden;
	position: relative;
}

.slide_wrap .swiper-slide {
	height: 450px;
	background: #888;
}

.slide_wrap .pager_wrap {
	position: absolute;
	left: 0;
	bottom: 50px;
	width: 100%;
	z-index: 9;
}

.slide_wrap .pager_wrap .pager_line {
	display: flex;
	align-items: center;
	background-color: cadetblue;
	color: white;
	width: 96px;
	padding: 10px 5px;
    margin-left: 30px;
    float: right;
    margin-right: 55px;
    font-size: 14px;
}

.slide_wrap .pager_wrap .pager_line * {
	line-height: 1;
	cursor: pointer;
}

.slide_wrap .pager_wrap .swiper_fraction {
	width: auto;
	margin: 0 20px;
}

.mainInner {
    margin: 100px auto 0px auto;
}

.main_wrap section {
    padding: 20px 0 0;
}

.main_wrap section:last-child {
    padding-bottom: 80px;
}

.main_wrap section ul {
    display: flex;
    flex-flow: row wrap;
    margin-top: 30px;
    margin-left: 30px;
}

.main_wrap section ul li {
    width: 200px;
    margin-left: 15px;
    margin-right: 15px;
    margin-bottom: 20px;
    position: relative;
}

.main_wrap section ul li .img {
    height: 130px;
    max-height: 130px;
    width: 200px;
    max-width: 200px;
    margin-bottom: 10px;
    position: relative;
}

.main_wrap section ul li .img img {
    height: 130px;
    width: 200px;
}

.main_wrap section ul li h3 {
    font-size: 14px;
    text-align: left;
    margin-top: 10px;
}
.main_wrap section ul li h4 {
    font-size: 11px;
    text-align: left;
    margin-top: 10px;
}
.main_wrap section ul li h5 {
    font-size: 14px;
    text-align: left;
    margin-top: 10px;
}

.main_wrap section ul li span {
    border: none;
    padding: 2px 10px;
    background-color: #335492;
    color: #f4f4f4;
    margin-right: 5px;
    font-size: 12px;
}

.main_wrap section ul li a {
    text-decoration: none;
    color: black;
}

li h6 {
    display: inline;
}

.main_wrap section ul li .selected {
	display: flex;
}

.main_wrap section ul li .selected a {
	color: white;
}

.likeInfo {
    position:absolute;
    right: 0%;
    top: 0%;
    width: 100%;
    height: 100%;
    justify-content:center;
    align-items:center;
    display: none;
    z-index: 1;
    background: rgba(0,0,0,0.7);
}

.likeInfo a {
	color: #fff; 
	display: flex; 
	align-items:center; 
	font-size: 20px; 
	padding: 0 10px;
}

.likeInfo i {
	margin-right: 5px;
}

li h3 {
    margin: 10px 0px;
    height: 50px;
}

li h4 {
    text-decoration: line-through;
    display: inline;
    color: #A2A2A2;
}

li h5 {
    display: inline;
    color: red;
}

li h1 {
    margin-top: 10px;
    font-size: 14px;
    font-weight: 200px;
    display: inline;
}

.price {
    text-align: right;
    margin-bottom: 50px;
}

footer {
	background: #335492; 
	color: #fff; 
	padding: 30px 15px;
	font-size: 12px;
}

.bot {
	position: fixed;
	width: 50px;
	height: 50px;
	right: 50px;
	bottom: 50px;
	margin: 0;
	border-radius: 30px;
}

.bot button {
	border: none;
	outline: none;
	cursor: pointer;
	width: 100%;
	height: 100%;
	background: transparent url("/resources/img/챗봇.png") no-repeat center;
	background-size: contain;
}
</style>
</head>

<sec:authentication var="principal" property="principal" />

<body>
	<div class="container">
		<div class="slide_wrap">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide"><a href="/lesson/register"><img src="/resources/img/banner1.png"></a></div>
					<div class="swiper-slide"><a href="/lesson/read?id=37"><img src="/resources/img/banner2.png"></a></div>
					<div class="swiper-slide"><a href="/lesson/list?main=2&sub=3"><img src="/resources/img/banner3.png"></a></div>
				</div>
				<div class="pager_wrap">
					<div class="inner">
						<div class="pager_line">
							<div class="swiper_prev swiper_button"><i class="xi-arrow-left"></i></div>
							<div class="swiper_fraction"></div>
							<div class="swiper_next swiper_button"><i class="xi-arrow-right"></i></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="main_wrap">
			<section class="sec01">
				<div class="inner mainInner">
					<h2>Popular ></h2>
					<ul>
						<li>
	                        <div class="img">                           	
	                        	<div class="likeInfo">
									<a class="like" href=""><i class="xi-heart-o">196</i></a>
	                                <a class="reserv" href=""><i class="xi-star-o">231</i></a>
	                            </div>
                            	<!-- /resources/img/lesson/thumb/132020-08-24/05d7f1a0-69bc-4cc0-a0e4-40dfd7706314_주석 2020-08-20 094231.png -->
								<img class="lessonImg" src="/resources/img/lesson/thumb/132020-08-24/05d7f1a0-69bc-4cc0-a0e4-40dfd7706314_주석 2020-08-20 094231.jpg">
							</div>
                         	<a href="/lesson/read?id=37">
								<span>Regular</span><span>IT</span>
								<h3>The Principal of Java</h3>
								<div class="price">
									<h4>CA$399.99</h4>
									<h5>50%</h5>
									<h1>CA$199.99</h1>
								</div>
							</a>
                        </li>
						<li>
							<div class="img">                           	
								<div class="likeInfo">
									<a class="like" href=""><i class="xi-heart-o">24</i></a>
									<a class="reserv" href=""><i class="xi-star-o">69</i></a>
								</div>
								<!-- /resources/img/lesson/thumb/42020-08-27/440b75e1-8804-43b6-97fa-8bce486af346_주석 2020-08-18 093855.png -->
								<img class="lessonImg" src="/resources/img/lesson/thumb/42020-08-27/440b75e1-8804-43b6-97fa-8bce486af346_주석 2020-08-18 093855.png">
                        	</div>
							<a href="/lesson/read?id=5">
								<span>One day</span><span>Craft</span>
								<h3>Rattan Weaving for Beginner</h3>
								<div class="price">
									<h4>CA$99.99</h4>
								    <h5>50%</h5>
								    <h1>CA$49.99</h1>
								</div>
							</a>
						</li>
                       	<li>
							<div class="img">                           	
								<div class="likeInfo">
							     	<a class="like" href=""><i class="xi-heart-o">45</i></a>
							     	<a class="reserv" href=""><i class="xi-star-o">63</i></a>
                           		</div>
	                           	<!-- /resources/img/lesson/thumb/82020-10-05/0c77f485-62fa-4b46-a222-64aeed8134d8_주석 2020-08-18 181418.png -->
								<img class="lessonImg" src="/resources/img/lesson/thumb/82020-10-05/0c77f485-62fa-4b46-a222-64aeed8134d8_주석 2020-08-18 181418.png">
							</div>
                           	<a href="/lesson/read?id=17">
								<span>Regular</span><span>Web Design</span>
								<h3>UI & Web Design using Adobe Illustrator CC, Photoshop</h3>
								<div class="price">
									<h1>CA$139.99</h1>
								</div>
							</a>
                       	</li>
                       	<li>
							<div class="img">                           	
								<div class="likeInfo">
							      	<a class="like" href=""><i class="xi-heart-o">34</i></a>
							      	<a class="reserv" href=""><i class="xi-star-o">37</i></a>
							  	</div>
								<!-- /resources/img/lesson/thumb/32020-09-01/c2636ccf-f333-43b3-830f-94f01047aa29_주석 2020-08-17 204747.png -->
								<img class="lessonImg" src="/resources/img/lesson/thumb/32020-09-01/c2636ccf-f333-43b3-830f-94f01047aa29_주석 2020-08-17 204747.png">
                        	</div>
  							<a href="/lesson/read?id=4">
								<span>Regular</span><span>Digital Drawing</span>
								<h3>Drawing Cartoons on iPad</h3>
								<div class="price">
									<h4>CA$69.99</h4>
								    <h5>40%</h5>
								    <h1>CA$49.99</h1>
								</div>
							</a>
                       	</li>
						<li>
							<div class="img">                           	
								<div class="likeInfo">
							       	<a class="like" href=""><i class="xi-heart-o">24</i></a>
							       	<a class="reserv" href=""><i class="xi-star-o">47</i></a>
							   	</div>
							   	<!-- /resources/img/lesson/thumb/122020-09-04/b70b14a0-7f14-49af-b8cb-dccb0082b4f0_주석 2020-08-20 035041.png -->
								<img class="lessonImg" src="/resources/img/lesson/thumb/122020-09-04/b70b14a0-7f14-49af-b8cb-dccb0082b4f0_주석 2020-08-20 035041.jpg">
	                        </div>
							<a href="/lesson/read?id=36">
								<span>Regular</span><span>Health</span>
								<h3>14-Day Meditation Habit</h3>
								<div class="price">
								<h1>CA$49.99</h1>
								</div>
							</a>
                		</li>
					</ul>
				</div>
			</section>
			<section class="sec02">
				<div class="inner">
					<h2>Closing Soon ></h2>
                    <ul>
                    	<c:set var="soonCnt" value="${-1}" />
                		<c:forEach items="${soonList}" var="soonLesson">
                		<c:set var= "soonCnt" value="${soonCnt + 1}"/>
                        	<li>
                        		<input type="hidden" class="lessonId" data-order="${soonCnt}" value="${soonLesson.id}">
                                <div class="img">                           	
	                        		<div class="likeInfo">
	                                	<a class="like" data-order="${soonCnt}" href=""><i class="xi-heart-o"></i></a>
	                                	<a class="reserv" data-order="${soonCnt}" href=""><i class="xi-star-o"></i></a>
	                                	<input type="hidden" class="isLike" value="false">
	                            	</div>
	                            	<a href="/lesson/read?id=${soonLesson.id }">
	                                <c:if test= "${empty soonLesson.thumbnail}">
										<img class="lessonImg" src="../../../resources/img/classtmpimg.jpg">
									</c:if>
									<c:if test= "${!empty soonLesson.thumbnail}">
										<img class="lessonImg" src="/resources/img/lesson/thumb/${soonLesson.teacherId}${soonLesson.openAt}/${soonLesson.thumbnail}">
									</c:if>
                                </div>
                                <span>${soonLesson.typeName}</span><span>${soonLesson.categoryName}</span>
                                <h3>${soonLesson.title}</h3>
                                <div class="price">
                                	<c:if test= "${soonLesson.discountRate != 0}">
										<fmt:formatNumber type="number" var="sOriginPrice" maxFractionDigits="3" value="${soonLesson.originPrice}" />
	                                    <h4>CA$${sOriginPrice}</h4>
	                                    <fmt:parseNumber var= "sDiscountRate" integerOnly= "true" value= "${soonLesson.discountRate }" />
	                                    <h5>${sDiscountRate}%</h5>
									</c:if>
                                    <fmt:formatNumber type="number" var="sSalePrice" maxFractionDigits="3" value="${soonLesson.salePrice}" />
                                    <h1>CA$${sSalePrice}</h1>
                                </div>
                                </a>
                        	</li>
                        </c:forEach>
                    </ul>
				</div>
			</section>
			<section class="sec03">
				<div class="inner">
					<h2>신규출시클래스</h2>
					    <ul>
                    	<c:set var="newCnt" value="${-1}" />
                		<c:forEach items="${newList}" var="newLesson">
                		<c:set var= "newCnt" value="${newCnt + 1}"/>
                        	<li>
                        		<input type="hidden" class="lessonId" data-order="${newCnt}" value="${newLesson.id}">
                                <div class="img">                           	
                        		<div class="likeInfo">
                                	<a class="like" data-order="${newCnt}" href=""><i class="xi-heart-o"></i></a>
                                	<a class="reserv" data-order="${newCnt}" href=""><i class="xi-star-o"></i></a>
                                	<input type="hidden" class="isLike" value="false">
                            	</div>
                            	<a href="/lesson/read?id=${newLesson.id }">
                                <c:if test= "${empty newLesson.thumbnail}">
								<img class="lessonImg" src="../../../resources/img/classtmpimg.jpg">
								</c:if>
								<c:if test= "${!empty newLesson.thumbnail}">
								<img class="lessonImg" src="/resources/img/lesson/thumb/${newLesson.teacherId}${newLesson.openAt}/${newLesson.thumbnail}">
								</c:if>
                                </div>
                                <span>${newLesson.typeName}</span><span>${newLesson.categoryName}</span>
                                <h3>${newLesson.title}</h3>
                                <div class="price">
                                	<fmt:formatNumber type="number" var="nOriginPrice" maxFractionDigits="3" value="${newLesson.originPrice}" />
                                    <h4>CA$${nOriginPrice}</h4>
                                    <fmt:parseNumber var= "nDiscountRate" integerOnly= "true" value= "${newLesson.discountRate }" />
                                    <h5>${nDiscountRate}%</h5>
                                    <fmt:formatNumber type="number" var="nSalePrice" maxFractionDigits="3" value="${newLesson.salePrice}" />
                                    <h1>CA$${nSalePrice}</h1>
                                </div>
                                </a>
                        	</li>
                        </c:forEach>
                    </ul>
				</div>
			</section>
		</div>
		<footer>
			<div class="inner">
				<p class="copy"> Copyright, ⓒ ALZ. All rights reserved.</p>
			</div>
		</footer>
		<div class="bot">
			<button></button>
		</div>
	</div>

	<script>
	
/*      window.onload = function () {
        var ref = this.open('http://a2-alz.web.app/');
        this.addEventListener('message', function (e) {
            if (e.data.permission === "granted") { ref.close(); }
            console.log(e.data.token);
        });
    } */
	 
		$(document).ready(function() {

			var swiper = new Swiper('.swiper-container', {
				pagination: {
					el: '.swiper_fraction',
					type: 'fraction',
				},
				loop: true,
				autoplay: {
					delay: 5000,
					disableOnInteraction: false,
				},
				navigation: {
					nextEl: '.swiper_next',
					prevEl: '.swiper_prev',
				},
			});	
			
			
			var $hoverImg = $(".main_wrap section ul li .img");
			
			$hoverImg.hover(function(e) {
				$(this).parent().find(".likeInfo").toggleClass("selected");
			});
			
		});
	</script>
</body>

</html>