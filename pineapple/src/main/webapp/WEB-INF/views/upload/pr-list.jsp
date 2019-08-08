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
			<div id="pageContainer">
	<!-- Products -->
	<div class="products">
		<div class="container">
			<div class="row">
				<div class="col-12">				
					<div class="current_page" style="text-align: center; font-size: 25px;">PineApple</div><br>
					<div style="width: 100%">
						<div style="width: 800px; position: absolute; left: 35%; margin-left: -200px;">									
					     <form id="selectform" action="pr-kind" method="POST">
			            <input type="radio" name="kind" value="ALL" id="ALL"><label for="ALL">ALL</label>					          
						<input type="radio" name="kind" value="IPHONE" id="kindCategory"/><label for="kindCategory">iPhone</label>
						<input type="radio" name="kind" value="IPAD" id="kindCategory2"/><label for="kindCategory2">iPad</label>
						<input type="radio" name="kind" value="MAC" id="kindCategory3" /><label for="kindCategory3">MAC</label>				
						<input type="radio" name="kind" value="WATCH" id="kindCategory4"/><label for="kindCategory4">Watch</label>					
						<input type="radio" name="kind" value="AIRPOT" id="kindCategory5"/><label for="kindCategory5">Airpot</label>			 				                     
                 		</form>
                     </div>
				</div>
	<div class="row products_container">
				<div class="col">
					
					<!-- Products -->
					 <c:if test="${loginuser.userType eq 'admin' }">
					 <a href="pr-write"> <input type="button" value="Write" class="btn btn-dark" style="width:100px"></a>	 
					</c:if>
					<div class="product_grid">
						<!-- Product -->
				<c:forEach begin="0" end="${ fn:length(product)/3 }" varStatus="i">
               <c:forEach var="product" begin="${i.index*3}" end="${i.index*3+2}" items="${ product }" varStatus="productnum">
						<div class="product">
							<div class="product_image"><img src="/pineapple/resources/upload-files/${ product.img.savedFileName }" alt="" style="height:350px;width:320px"></div>
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
								
									<a href="pr-detail?productNo=${ product.productNo }"><div class="product_buy product_option"><img src="/pineapple/resources/images/shopping-bag.svg" alt=""></div></a>
									<a href="pr-detail?productNo=${ product.productNo }"><div class="product_fav product_option">+</div></a>
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
	<script type="text/javascript"></script>
	<script type="text/javascript">
	
   	$(function(){	   		
   		$('#kindCategory').on('change', function(event){
   			this.form.submit();
   			
   		});
   	});

   	$(function(){	   		
   		$('#kindCategory2').on('change', function(event){
   			this.form.submit();
   			
   		});
   	});

   	$(function(){	   		
   		$('#kindCategory3').on('change', function(event){
   			this.form.submit();
   			
   		});
   	});   	

   	$(function(){	   		
   		$('#kindCategory4').on('change', function(event){
   			this.form.submit();
   			
   		});
   	}); 

   	$(function(){	   		
   		$('#kindCategory5').on('change', function(event){
   			this.form.submit();
   			
   		});
   	});   
   	
   	$(function(){
   		$('#ALL').on('click', function(event){
   			location.href="/pineapple/pr-upload/pr-list2"; 
   			
   		});
   		  		
   	});
  	
	</script>
</body>
</html>