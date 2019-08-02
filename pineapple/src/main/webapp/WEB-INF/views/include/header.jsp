<%@ page language="java" 
       contentType="text/html; charset=utf-8" 
       pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      

      
      <!-- Header -->

	<header class="header">
		<div class="header_inner d-flex flex-row align-items-center justify-content-start">
			<div class="logo"><a href="/pineapple/">PineApple</a></div>
			<nav class="main_nav">
				<ul>
					<li><a href="#">Mac</a></li>
					<li><a href="/pineapple/upload/pr-list">iPad</a></li>
					<li><a href="categories.html">iPhone</a></li>
					<li><a href="categories.html">Watch</a></li>
					<li><a href="contact.html">Review</a></li>
					<li><a href="contact.html">Notice</a></li>
				</ul>
			</nav>
			<div class="header_content ml-auto">
				<div class="search header_search">
					<form action="#">
						<c:choose>
            <c:when test="${ empty loginuser }">
                
            </c:when>
            <c:otherwise>            	
            	<a href="#" class="btn">${ loginuser.memberId }님 </a>
            	<a href="/account/logout" class="btn">로그아웃</a>
            </c:otherwise>
            </c:choose>
					</form>
				</div> 
				
				<div class="shopping">
					<c:choose>
					<c:when test="${empty loginuser }">
						<a href="/pineapple/account/login" class="btn">Login</a>
                		<a href="/pineapple/account/register" class="btn">Register</a>
					</c:when>
					<c:otherwise>
					<!-- Cart -->
					<a href="#">
						<div class="cart">
							<img src="resources/images/shopping-bag.svg" alt="">
							<div class="cart_num_container">
								<div class="cart_num_inner">
									<div class="cart_num">0</div>
								</div>
							</div>
						</div>
					</a>
					<!-- Star -->
					<a href="#">
						<div class="star">
							<img src="resources/images/star.svg" alt="">
							<div class="star_num_container">
								<div class="star_num_inner">
									<div class="star_num">0</div>
								</div>
							</div>
						</div>
					</a>
					<!-- Avatar -->
					<a href="#">
						<div class="avatar">
							<img src="resources/images/avatar.svg" alt="">
						</div>
					</a>
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
				<form action="#">
					<input type="search" class="search_input menu_mm" required="required">
					<button type="submit" id="search_button_menu" class="search_button menu_mm"><img class="menu_mm" src="resources/images/magnifying-glass.svg" alt=""></button>
				</form>
			</div>
			<nav class="menu_nav">
				<ul class="menu_mm">
					<li><a href="#">Mac</a></li>
					<li><a href="/pineapple/upload/pr-list">iPad</a></li>
					<li><a href="categories.html">iPhone</a></li>
					<li><a href="categories.html">Watch</a></li>
					<li><a href="contact.html">Review</a></li>
					<li><a href="contact.html">Notice</a></li>
				</ul>
			</nav>
		</div>   
        