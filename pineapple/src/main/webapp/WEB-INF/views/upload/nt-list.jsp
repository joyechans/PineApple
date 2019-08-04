<%@ page import="com.pineapple.vo.Product"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>PineApple</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Wish shop project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/bootstrap4/bootstrap.min.css">
<link href="/pineapple/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/contact.css">
<link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/contact_responsive.css">
</head>
<body>

<div class="super_container">
	
	<!-- Header -->
<jsp:include page="/WEB-INF/views/include/header.jsp" />
	
	<!-- Contact Text -->

	<div class="contact_text">
		<div class="container">
			<div class="row">

				<!-- Contact Info -->
				<div class="col-lg-5">
					<div class="contact_info">
						<div class="contact_title">PineApple&nbsp;Info</div>
						<div class="contact_info_content">
							<ul>
								<li>
									<div class="contact_info_icon"><img src="/pineapple/resources/images/contact_info_1.png" alt=""></div>
									<div class="contact_info_text">PineApple</div>
								</li>
								<li>
									<div class="contact_info_icon"><img src="/pineapple/resources/images/contact_info_2.png" alt=""></div>
									<div class="contact_info_text">pineapple@pineapple.com</div>
								</li>
								<li>
									<div class="contact_info_icon"><img src="/pineapple/resources/images/contact_info_3.png" alt=""></div>
									<div class="contact_info_text">+82&nbsp;02-7777-7777</div>
								</li>
							</ul>
						</div>
						<div class="contact_info_social">
							<ul>
								<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-reddit-alien" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
							</ul>
						</div>
					</div>
				</div>

				<!-- FAQ -->
				<div class="col-lg-7">
					<div class="faq">
						<div class="contact_title">NOTICE</div>
						<div class="faq_content">
							<!-- Accordions -->
							
							<div class="accordions">
<!-- 					 <a href="nt-write"> <input type="button" value="글작성" class="btn btn-dark" style="width:100px"></a -->
								<div class="accordion_container">								
									<div class="accordion d-flex flex-row align-items-center"><div>고객센터 운영시간은 AM 10:00 ~ PM 17:00 입니다</div></div>
									<div class="accordion_panel">
										<p>PineApple</p>
									</div>
								</div>
								<div class="accordion_container">
									<div class="accordion d-flex flex-row align-items-center"><div>현재 에어팟 상품은 여름 이벤트 특가 20% 할인가격에 판매중입니다</div></div>
									<div class="accordion_panel">
										<p></p>
									</div>
								</div>
								
								<div class="accordion_container">
									<div class="accordion d-flex flex-row align-items-center"><div>iPhone XS 제품이 출고되어, 10% 할인가격에 판매중입니다</div></div>
									<div class="accordion_panel">
										<p></p>
									</div>
								</div>								

								<div class="accordion_container">
									<div class="accordion d-flex flex-row align-items-center"><div>08/02 ~ 08/13일까지 여름 휴가로 인하여 배송이 지연됩니다</div></div>
									<div class="accordion_panel">
										<p></p>
									</div>
								</div>		
								
								<div class="accordion_container">
									<div class="accordion d-flex flex-row align-items-center"><div>파인애플 회원님들 즐거운 여름 휴가 보내시길 바랍니다</div></div>
									<div class="accordion_panel">
										<p></p>
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


	<!-- Footer -->
 <jsp:include page="/WEB-INF/views/include/footer.jsp" />
	
</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="js/contact_custom.js"></script>
</body>
</html>