<%@ page import="com.pineapple.vo.OrderList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page language="java" 
		 contentType="text/html; charset=utf-8" 
		 pageEncoding="utf-8"%>
<!DOCTYPE html>

<html>
<head>
<title>Cart</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Wish shop project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/bootstrap4/bootstrap.min.css">
<link href="/pinapple/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/cart.css">
<link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/cart_responsive.css">
</head>
<body>

<div class="super_container">
	
	<!-- Header -->

	<jsp:include page="/WEB-INF/views/include/header.jsp" />

	
	<!-- Cart -->

	<div class="cart_container">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="cart_title">Your Order List</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col">
					<div class="cart_bar d-flex flex-row align-items-center justify-content-start">
						<div class="cart_bar_title_name">OrderNo</div>
						<div class="cart_bar_title_content ml-auto">
							<div class="cart_bar_title_content_inner d-flex flex-row align-items-center justify-content-end">								
								<div class="cart_bar_title_quantitys">Address</div>
								<div class="cart_bar_title_quantitys">Date</div>
								<div class="cart_bar_title_total">Total</div>
								<div class="cart_bar_title_button"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<c:choose>
			<c:when test="${map.count ==0 }">
				<p style="text-align: center; font-size:20px;">구매한 상품이 없습니다</p>
			</c:when>
			<c:otherwise>
			<form name="form1" id="form1" method="post" action="/pineapple/upload/orderList">
<%-- 			<input type="hidden" name="memberId" value="${loginuser.memberId }"> --%>
			<c:forEach var="order" items="${ order }">
			<div class="row">
				<div class="col">
					<div class="cart_products">
						<ul>  
							<li class=" cart_product d-flex flex-md-row flex-column align-items-md-center align-items-start justify-content-start">

								<!-- Product Name -->
								<div class="cart_product_name"><a href="/pineapple/upload/orderView?n=${order.paymentNo}">${order.paymentNo }</a></div>
								<div class="cart_product_info ml-auto">
									<div class="cart_product_info_inner d-flex flex-row align-items-center justify-content-md-end justify-content-start">								
										<!-- Product Price -->
										<div class="cart_product_prices">${order.addr1}<br>${order.addr2}<br>${order.addr3}</div>
										<!-- Product Quantity -->
										<div class="cart_product_prices">${order.paymentDate}</div>
										<!-- Products Total Price -->
										<div class="cart_product_totals">￦${ order.money }</div>
										<!-- Product Cart Trash Button -->
										<div class="cart_product_button">
											<!-- <button class="cart_product_remove"> -->
											<a href="#"><img src="#" alt=""></a>
											<!-- </button> -->
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			</c:forEach>
			
			<div class="row">
				<div class="col">
				</div>
			</div>
			<div class="row cart_extra">
				<!-- Cart Address -->
				<div class="col-lg-6">
			</div>
			<!-- Cart Address End -->		
			</div>
			</form>
			</c:otherwise>
			</c:choose>
		</div>
	</div>

	

	<!-- Footer -->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</div>

<script src="/pineapple/resources/js/jquery-3.2.1.min.js"></script>
<script src="/pineapple/resources/styles/bootstrap4/popper.js"></script>
<script src="/pineapple/resources/styles/bootstrap4/bootstrap.min.js"></script>
<script src="/pineapple/resources/plugins/easing/easing.js"></script>
<script src="/pineapple/resources/plugins/parallax-js-master/parallax.min.js"></script>
<script src="/pineapple/resources/js/cart_custom.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">	        	

    $(function(){
   		$('#continue').on('click', function(event){
   			location.href="/pineapple/re-upload/re-list2";
   		});
   		  		
   	});   
</script>
</body>
</html>