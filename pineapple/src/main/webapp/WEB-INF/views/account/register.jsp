<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Wish</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="description" content="Wish shop project">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="../resources/styles/bootstrap4/bootstrap.min.css">
		<link href="../resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" type="text/css" href="../resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
		<link rel="stylesheet" type="text/css" href="../resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
		<link rel="stylesheet" type="text/css" href="../resources/plugins/OwlCarousel2-2.2.1/animate.css">
		<link href="../resources/plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" type="text/css" href="../resources/styles/checkout.css">
		<link rel="stylesheet" type="text/css" href="../resources/styles/checkout_responsive.css">
		
	</head>

	<body>

	<div class="super_container">
		
		<!-- header -->
		<jsp:include page="/WEB-INF/views/include/header.jsp" />
		<!-- header End -->
	
		<div class="home">
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="../resources/images/categories.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_container">
						<div class="home_content">
							<div class="home_title">Register</div>
							<div class="breadcrumbs">
								<ul>
									<li><a href="/pineapple/home">Home</a></li>									
									<li>Register</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="checkout">
		<div class="container">
			<div class="row">

				<!-- Billing Details -->
				<div class="col-lg-6">
					<div class="billing">
						<div class="checkout_title">Register</div>
						<div class="checkout_form_container">
							<form id="register-form" action="register" method="post">
								<input type="text" class="checkout_input" id="name" name="name" value="" placeholder="Name">
								<input type="text" class="checkout_input" id="memberId" name="memberId" value="" placeholder="ID">
								<input type="password" class="checkout_input" id="passwd" name="passwd" placeholder="Password" required="required">	
								<input type="password" class="checkout_input" id="confirm" name="confirm" placeholder="Password confirm" required="required">
								<input type="text" class="checkout_input" id="phoneNumber" name="phoneNumber" value="" placeholder="Phone Number">																								
							</form>
						</div>
					</div>
				</div>

				<!-- Cart Details -->
				<div class="col-lg-6">
					<div class="cart_details">
						<div class="checkout_title"></div>
						
						<div class="payment_options">														
							<input id="register" type="submit" class="cart_total_button" value="register" />
							<input id="cancel" type="button" class="cart_total_button" value="cancel" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
			

		<!-- Footer -->
		<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	</div>
	
	<script src="../resources/js/jquery-3.2.1.min.js"></script>
	<script src="../resources/styles/bootstrap4/popper.js"></script>
	<script src="../resources/styles/bootstrap4/bootstrap.min.js"></script>
	<script src="../resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="../resources/plugins/easing/easing.js"></script>
	<script src="../resources/plugins/parallax-js-master/parallax.min.js"></script>
	<script src="../resources/plugins/colorbox/jquery.colorbox-min.js"></script>
	<script src="../resources/js/custom.js"></script>
	<script type="text/javascript">	        	
   	$(function(){
   		$('#register').on('click', function(event){
   			$('#register-form').submit();
   			
   		});
   		
   		$('#cancel').on('click', function(event){
   			location.href="/catwebsite/home"; 
   			
   		});
   	});
	</script>
	</body>
</html>		
		

