<%@ page import="com.pineapple.vo.Product"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>  
    <html>
    <head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="description" content="Wish shop project">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/bootstrap4/bootstrap.min.css">
		<link href="/pineapple/resources/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" type="text/css" href="/pineapple/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
		<link rel="stylesheet" type="text/css" href="/pineapple/resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
		<link rel="stylesheet" type="text/css" href="/pineapple/resources/plugins/OwlCarousel2-2.2.1/animate.css">
		<link href="resources/plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/main_styles.css">
		<link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/responsive.css">
      </head>
      <!-- Header -->

	<header class="header">
		<div class="header_inner d-flex flex-row align-items-center justify-content-start">
			<div class="logo"><a href="/pineapple/">PineApple</a></div>
			<nav class="main_nav">			
				<ul style="width: 100%">
					<li><a href="/pineapple/pr-upload/pr-list2">PiNEAPPLE</a></li>				
                    <li ><a href="/pineapple/upload/nt-list">NOTICE</a></li>         
					<li><a href="/pineapple/upload/re-list">REVIEW</a></li>
					<li><a href="/pineapple/qa-upload/qa-list">Q&A</a></li>
				</ul>
			</nav>
			<div style="width:700px">
				<div style="width: 100%; height:38px; text-align: right;">
						<c:choose>
				            <c:when test="${ empty loginuser }">
					            <a href="/pineapple/account/login" class="btn">Login</a>
			                	<a href="/pineapple/account/register" class="btn">Register</a>	
				            </c:when>
		            	<c:otherwise>
		            	<div style="width:60%; float:left; text-align:right; margin-top: 10px; ">            	
			             	<!-- Cart -->
							<a href="/pineapple/upload/ordercart?memberId=${loginuser.memberId }">장바구니</a>
							<!-- MyPage -->
							<a style="margin-left: 10px;" href="/pineapple/member/membermypage?memberId=${loginuser.memberId }">마이페이지</a>
						</div>
						<div style="width:30%; margin-left:70px; float:left">
			            	<a href="#" class="btn">${ loginuser.memberId }님 </a>
			            	<a href="/pineapple/account/logout" class="btn">로그아웃</a>
		            	</div>
		            </c:otherwise>
		            </c:choose>

				</div> 
				
			</div>

			<div class="burger_container d-flex flex-column align-items-center justify-content-around menu_mm">
			<div></div>
			<div></div>
			<div></div>
			</div>
		</div>
	</header>
        
     		<div class="menu d-flex flex-column align-items-end justify-content-start text-right menu_mm trans_400">
			<div class="menu_close_container"><div class="menu_close"><div></div><div></div></div></div>
			<div class="logo menu_mm"><a href="#">PineApple</a></div>
			<div class="search">
				<form action="pr-list?col=name&word=" method="get">
					<input type="text" name="word" id="search" class="search_input menu_mm" required="required" placeholder="검색어를 입력해주세요.">
					<button type="submit" id="search_button_menu" class="search_button menu_mm"><img class="menu_mm" src="/pineapple/resources/images/magnifying-glass.svg" alt=""></button>
					<select name="col" style="display:none">
					<option value="name">상품이름</option>
					</select>
				</form>
			</div>
			<nav class="menu_nav">
				<ul class="menu_mm">
					<li><a href="/pineapple/pr-upload/pr-list2">PINEAPPLE</a></li>				
                    <li ><a href="/pineapple/upload/nt-list">NOTICE</a></li>         
					<li><a href="/pineapple/upload/re-list">REVIEW</a></li>
					<li><a href="/pineapple/qa-upload/qa-list">Q&A</a></li>
				</ul>
			</nav>
		</div>   
		
		
        