<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
	<head>
		<title>PineApple</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="description" content="Wish shop project">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/bootstrap4/bootstrap.min.css">
		<link href="resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" type="text/css" href="/pineapple/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
		<link rel="stylesheet" type="text/css" href="/pineapple/resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
		<link rel="stylesheet" type="text/css" href="/pineapple/resources/plugins/OwlCarousel2-2.2.1/animate.css">
		<link href="resources/plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/main_styles.css">
		<link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/responsive.css">
	</head>

	<body>

	<div class="super_container">
		
		<!-- header -->
		<jsp:include page="/WEB-INF/views/include/header.jsp" />
		<!-- header End -->
	
		<!-- Home -->
	
		<div class="home">
			
			<!-- Home Slider -->
	
			<div class="home_slider_container">
				<div class="owl-carousel owl-theme home_slider">
					<a href="/pineapple/upload/pr-list">
					<!-- Home Slider Item -->
					<div class="owl-item">
						<div class="home_slider_background" style="background-image:url(resources/images/home_slider_1.jpg)"></div>
						<div class="home_slider_content">
							<div class="home_slider_content_inner">
								<div class="home_slider_subtitle">PineApple</div>
								<div class="home_slider_title">iPhone</div>
							</div>	
						</div>
					</div>
					</a>
	
					<!-- Home Slider Item -->
					<a href="/pineapple/upload/pr-list">
					<div class="owl-item">
						<div class="home_slider_background" style="background-image:url(resources/images/home_slider_2.jpg)"></div>
						<div class="home_slider_content">
							<div class="home_slider_content_inner">
								<div class="home_slider_subtitle">PineApple</div>
								<div class="home_slider_title">iPhone</div>
							</div>	
						</div>
					</div>
					</a>
					
					<!-- Home Slider Item -->					
					<a href="/pineapple/upload/pr-list">
					<div class="owl-item">
						<div class="home_slider_background" style="background-image:url(resources/images/home_slider_3.jpg)"></div>
						<div class="home_slider_content">
							<div class="home_slider_content_inner">
								<div class="home_slider_subtitle">PineApple</div>
								<div class="home_slider_title">Watch</div>
							</div>	
						</div>
					</div>
					</a>

				</div>
				
				<!-- Home Slider Nav -->
	
				<div class="home_slider_next d-flex flex-column align-items-center justify-content-center"><img src="images/arrow_r.png" alt=""></div>
	
				<!-- Home Slider Dots -->
	
				<div class="home_slider_dots_container">
					<div class="container">
						<div class="row">
							<div class="col">
								<div class="home_slider_dots">
									<ul id="home_slider_custom_dots" class="home_slider_custom_dots">
										<li class="home_slider_custom_dot active">01.<div></div></li>
										<li class="home_slider_custom_dot">02.<div></div></li>
										<li class="home_slider_custom_dot">03.<div></div></li>
									</ul>
								</div>
							</div>
						</div>
					</div>		
				</div>
			</div>
		</div>
	
	
		<!-- Extra -->
	
		<div class="extra clearfix">
			<div class="extra_promo extra_promo_1">
				<div class="extra_promo_image" style="background-image:url(resources/images/1.png)"></div>

			</div>
			<div class="extra_promo extra_promo_2">
				<div class="extra_promo_image" style="background-image:url(resources/images/2.png)"></div>

			</div>
		</div>
		<div class="extra clearfix">
			<div class="extra_promo extra_promo_1">
				<div class="extra_promo_image" style="background-image:url(resources/images/3.png)"></div>

			</div>
			<div class="extra_promo extra_promo_2">
				<div class="extra_promo_image" style="background-image:url(resources/images/4.png)"></div>

			</div>
		</div>	
		<div class="extra clearfix">
			<div class="extra_promo extra_promo_1">
				<div class="extra_promo_image" style="background-image:url(resources/images/5.png)"></div>

			</div>
			<div class="extra_promo extra_promo_2">
				<div class="extra_promo_image" style="background-image:url(resources/images/6.png)"></div>

			</div>
		</div>				

		<!-- Footer -->
		<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	</div>
	
	<script src="/pineapple/resources/js/jquery-3.2.1.min.js"></script>
	<script src="/pineapple/resources/styles/bootstrap4/popper.js"></script>
	<script src="/pineapple/resources/styles/bootstrap4/bootstrap.min.js"></script>
	<script src="/pineapple/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="/pineapple/resources/plugins/easing/easing.js"></script>
	<script src="/pineapple/resources/plugins/parallax-js-master/parallax.min.js"></script>
	<script src="/pineapple/resources/plugins/colorbox/jquery.colorbox-min.js"></script>
	<script src="/pineapple/resources/js/custom.js"></script>
	<script type="text/javascript"></script>
	</body>
</html>		
		

