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
	<link href="/pineapple/resources/plugins/malihu-custom-scrollbar/jquery.mCustomScrollbar.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="/pineapple/resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/categories.css">
	<link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/main_styles.css">
	<link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/categories_responsive.css">
</head>
<body>

<div class="super_container">
	
	<!-- header -->
	
	<jsp:include page="/WEB-INF/views/include/header.jsp" />
	
	<!-- header End -->
	
	



	<!-- Products -->
	<div class="products">
		<div class="container">
			<div class="row">
		<%-- 	<c:forEach var="product" begin="${i.index*3}" end="${i.index*3+2}" items="${ product }" varStatus="productnum"> --%>
				<div class="col-12">
					
					<div class="current_page" style="text-align: center; font-size: 20px;">Apple</div>
					<div style="width: 100%">
<!-- 						<div class="search" style="text-align: center">
							<form action="#">
								<input type="search" q="googlesearch" class="search_input menu_mm" required="required">
								<button type="submit" id="search_button_menu" class="search_button menu_mm"><img class="menu_mm" src="../resources/images/magnifying-glass.svg" alt=""></button>
							</form>
						</div> -->
					</div>
						
	<div class="row products_container">
				<div class="col">
					
					<!-- Products -->
					 <c:if test="${loginuser.userType eq 'admin' }">
					 <a href="pr-write"> <input type="button" value="글작성" class="btn btn-dark" style="width:100px"></a>	 
					</c:if>
					<div class="product_grid">
						<!-- Product -->
				<c:forEach begin="0" end="${ fn:length(product)/3 }" varStatus="i">
               <c:forEach var="product" begin="${i.index*3}" end="${i.index*3+2}" items="${ product }" varStatus="productnum">
						<div class="product">	
							<div class="product_image"><img src="/pineapple/resources/upload-files/${ product.img.savedFileName }" alt="" style="height:280px;width:320px"></div>
							<div class="rating rating_5" data-rating="5">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="product_content clearfix">
								<div class="product_info">
									<div class="product_name"><a href="pr-detail?productNo=${ product.productNo }">${ product.name }</a></div>
									<div class="product_price}">￦${ product.price }</div>
								</div>
								<div class="product_options">
									<div class="product_buy product_option"><img src="/pineapple/resources/images/shopping-bag.svg" alt=""></div>
									<div class="product_fav product_option">+</div>
									</div>
								</div>
							</div>
							</c:forEach>
						</c:forEach>
					</div>
				</div>




					</div>
				</div>				
			</div>

			<div class="row page_num_container">
				<div class="col text-right">
             <ul class="page_nums">
                <li class="page-item">
                 <c:if test="${ProductPageMaker.prev}">
                  <a class="page-link" href="pr-list2${ProductPageMaker.makeQuery(ProductPageMaker.startPage - 1)}">이전</a>
                 </c:if> 
                 </li>
              
               <c:forEach begin="${ProductPageMaker.startPage}" end="${ProductPageMaker.endPage}" var="idx">
                 <li class="page-item">
                  <a class="page-link" href="pr-list2${ProductPageMaker.makeQuery(idx)}">${idx}</a>
               </li>
               </c:forEach>
                 
                
                <li class="page-item">
                 <c:if test="${ProductPageMaker.next && ProductPageMaker.endPage > 0}">
                  <a class="page-link" href="pr-list2${ProductPageMaker.makeQuery(ProductPageMaker.endPage + 1)}">다음</a>
                 </c:if> 
                 </li>   
             </ul>
		</div>
	</div>
</div>

	<!-- footer -->
	
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	
	<!-- footer End -->
</div>
</div>

	<script src="/pineapple/resources/js/jquery-3.2.1.min.js"></script>
	<script src="/pineapple/resources/styles/bootstrap4/popper.js"></script>
	<script src="/pineapple/resources/styles/bootstrap4/bootstrap.min.js"></script>
	<script src="/pineapple/resources/plugins/easing/easing.js"></script>
	<script src="/pineapple/resources/plugins/parallax-js-master/parallax.min.js"></script>
	<script src="/pineapple/resources/plugins/Isotope/isotope.pkgd.min.js"></script>
	<script src="/pineapple/resources/plugins/malihu-custom-scrollbar/jquery.mCustomScrollbar.js"></script>
	<script src="/pineapple/resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
	<script src="/pineapple/resources/js/categories_custom.js"></script>
	


</body>
</html>