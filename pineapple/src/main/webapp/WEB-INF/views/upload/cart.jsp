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
					<div class="cart_title">Your Shopping Cart</div>
				</div>
			</div>
			<c:choose>
			<c:when test="${map.count ==0 }">
				장바구니가 비었습니다.
			</c:when>
			<c:otherwise>
			<form name="form1" id="form1" method="post" action="/pineapple/upload/updatecart">
			<input type="hidden" name="memberId" value="${loginuser.memberId }">
			<div class="row">
				<div class="col">
					<div class="cart_bar d-flex flex-row align-items-center justify-content-start">
						<div class="cart_bar_title_name">Product</div>
						<div class="cart_bar_title_content ml-auto">
							<div class="cart_bar_title_content_inner d-flex flex-row align-items-center justify-content-end">
								<div class="cart_bar_title_price">Price</div>
								<div class="cart_bar_title_quantity">Quantity</div>
								<div class="cart_bar_title_total">Total</div>
								<div class="cart_bar_title_button"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<c:forEach var="row" items="${map.carts}">
			<div class="row">
				<div class="col">
					<div class="cart_products">
						<ul>
							<li class=" cart_product d-flex flex-md-row flex-column align-items-md-center align-items-start justify-content-start">
								<!-- Product Image -->
								<div class="cart_product_image"><img src="images/cart_product_1.jpg" alt=""></div>
								<!-- Product Name -->
								<div class="cart_product_name"><a href="product.html">${row.productName }</a></div>
								<div class="cart_product_info ml-auto">
									<div class="cart_product_info_inner d-flex flex-row align-items-center justify-content-md-end justify-content-start">
										<!-- Product Price -->
										<div class="cart_product_price">${ row.productPrice }</div>
										<!-- Product Quantity -->
										<div class="product_quantity_container">
											<div class="product_quantity clearfix">
												<input type="hidden" name="productNo" value="${row.productNo }">
												<input id="quantity_input" type="text" name="amount" value="${ row.amount }" pattern="[1-9]*">
												
												<div class="quantity_buttons">
													<div id="quantity_inc_button" class="quantity_inc quantity_control"><i class="fa fa-caret-up" aria-hidden="true"></i></div>
													<div id="quantity_dec_button" class="quantity_dec quantity_control"><i class="fa fa-caret-down" aria-hidden="true"></i></div>
												</div>
												
											</div>
										</div>
										<!-- Products Total Price -->
										<div class="cart_product_total">${ row.money }</div>
										<!-- Product Cart Trash Button -->
										<div class="cart_product_button">
											<!-- <button class="cart_product_remove"> -->
											<a href="/pineapple/upload/deletecart?orderId=${ row.orderId }&memberId=${loginuser.memberId}'"><img src="../resources/images/trash.png" 
											alt=""></a>
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
					<div class="cart_control_bar d-flex flex-md-row flex-column align-items-start justify-content-start">
						<input type="hidden" name="count" value="${map.count }">
						<!-- <button class="button_clear cart_button">clear cart</button> -->
						<button type="submit" id="btnUpdate" class="button_update cart_button">Edit</button>
						<button class="button_update cart_button_2 ml-md-auto">continue shopping</button>
					</div>
				</div>
			</div>
			
			
			<div class="row cart_extra">
				<!-- Cart Coupon -->
				<div class="col-lg-6">
					<div class="cart_coupon">
						<div class="cart_title"></div>
						
					</div>
				</div>
				<!-- Cart Total -->
				<div class="col-lg-5 offset-lg-1">
					<div class="cart_total">
						<div class="cart_title">cart total</div>
						<ul>
							<li class="d-flex flex-row align-items-center justify-content-start">
								<div class="cart_total_title">Subtotal</div>
								<div class="cart_total_price ml-auto">${map.sumMoney}</div>
							</li>
							<li class="d-flex flex-row align-items-center justify-content-start">
								<div class="cart_total_title">Shipping</div>
								<div class="cart_total_price ml-auto">${map.fee }</div>
							</li>
							<li class="d-flex flex-row align-items-center justify-content-start">
								<div class="cart_total_title">Total</div>
								<div class="cart_total_price ml-auto">${map.allSum}</div>
							</li>
						</ul>
						<button class="cart_total_button">proceed to checkout</button>
					</div>
				</div>			
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
</body>
</html>