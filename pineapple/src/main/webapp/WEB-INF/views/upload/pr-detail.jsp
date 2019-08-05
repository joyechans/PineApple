<%@ page import="com.pineapple.vo.Product"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html>
<html>
<head>
<title>PineApple</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Wish shop project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/bootstrap4/bootstrap.min.css">
<link href="/pineapple/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/product.css">
<link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/product_responsive.css">
<link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/main_styles.css">
</head>
<body>


<div class="super_container">
	
	<!-- Header -->
	<jsp:include page="/WEB-INF/views/include/header.jsp" />
	
	<!-- Product -->

	<div class="product">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="current_page">
						<ul>
							<li><a href="/pineapple/">PineApple</a></li>
							<li><a href="/pineapple/upload/pr-list2">${ product.kind }</a></li>
							<li>${ product.name }</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row product_row">
				<c:forEach var="file" items="${ product.imgs }">
				<!-- Product Image -->
				<div class="col-lg-7">
					<div class="product_image">
						<div class="product_image_large"><img src="/pineapple/resources/upload-files/${ file.savedFileName }"></div>
						<div class="product_image_thumbnails d-flex flex-row align-items-start justify-content-start">
						</div>
					</div>
				</div>
				</c:forEach>

				<!-- Product Content -->
				<div class="col-lg-5">
					<div class="product_content">
						<div class="product_name">${ product.name }</div></br>
						<div class="product_price">₩${ product.price }</div>
						<div class="rating rating_5" data-rating="5">
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
						</div>
						<!-- In Stock -->
						<div class="in_stock_container">
							<div class="in_stock in_stock_true"></div>
							<span>in stock</span>
						</div>
						<div class="product_text">
							<p>${ product.content }</p>
						</div>
						<!-- Product Quantity -->
		        	<form name="form1" method="post" action="/pineapple/upload/insertcart">
		        	<input type="hidden" name="memberId" value="${loginuser.memberId }">
					<input type="hidden" name="productNo" value="${product.productNo }">		        							
						<div class="product_quantity_container">
							<span>Quantity</span>
		        	<select name="amount">
		        	<c:forEach begin="1" end="10" var="i">
		        	<option value="${i}">${i}</option>
		        	</c:forEach>
		        	</select>
						</div>
					<input type="submit" class="button cart_button" style="color:white" value="Add to Cart">						
					<input type="button" id="cancel_button"
					class="button cart_button" style="color:white" value="LIST" /><br>							
					</form>
					<!-- Product Size -->
						<div class="product_size_container">	
                           			<div class="buttons">              			
									<c:if test="${ loginuser.memberId eq product.uploader }">
									<input type="button" id="update_button"
											class="button cart_button" style="color:white" value="EDIT" />
										<input type="button" id="delete_button"
											class="button cart_button" style="color:white" value="DELETE" />
									</c:if>													
							<div class="product_size">					
							</div>
						</div>	
					</div>
				</div>
			</div>
		</div>
			      <!---------------------------------------------------------------------------- -->				
					 <script type="text/javascript">																									
		        		window.addEventListener('load',function(event){
						var btnCancel =document.querySelector('#cancel_button');
		        		btnCancel.addEventListener('click', function(event) {
		        			location.href="/pineapple/upload/pr-list2";
		        		});
		        		
		        		var btnDelete = document.querySelector('#delete_button');
		        		btnDelete.addEventListener('click', function(event){
		        			var ok = confirm("${product.name} 상품을 삭제할까요?");
		        			if(ok){
		        			location.href="/pineapple/upload/delete/${ product.productNo }";
		        			}
		        		});
		        		
		        		var btnUpdate = document.querySelector('#update_button');
		        		btnUpdate.addEventListener('click', function(event){
		        			location.href="/pineapple/upload/pr-update/${ product.productNo }";
		        		});
		        		
		        	});
		        	</script>

	<!-- Footer -->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	<!-- Footer End -->
		
		</div>
	</div>
</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/product_custom.js"></script>
</body>
</html>