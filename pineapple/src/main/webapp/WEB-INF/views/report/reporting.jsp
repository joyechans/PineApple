<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" 
		 contentType="text/html; charset=utf-8" 
		 pageEncoding="utf-8"%>


<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>PineApple | Report</title>

</head>

<body>
    		<jsp:include page="/WEB-INF/views/include/header.jsp" />
		
		<div id="pageContainer">

		<h2 style="text-align:center;padding-top:5%">Reporting</h2>
		
		
		<div class="container" style="padding-top:50;text-align:center">
	
	
		<br></br>
		<div>
		 <input type="button" id="pr-report" value="상품종류별 리포팅" class="button cart_button" style="color:white;">
		 <input type="button" id="mon-report" value="구매날짜별 리포팅" class="button cart_button" style="color:white;">
		 <input type="button" id="mem-report" value="구매자별 리포팅" class="button cart_button" style="color:white;">
		 
		</div>
	</div>
	</div>
    <!-- ##### Main Content Wrapper End ##### -->

      	<jsp:include page="/WEB-INF/views/include/footer.jsp" />

  

    <!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
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
   		$('#pr-report').on('click', function(event){
   			location.href="/pineapple/report/product-reporting"; 
   			
   		});
   		$('#mon-report').on('click', function(event){
   			location.href="/pineapple/report/monthly-reporting"; 
   			
   		});
   		$('#mem-report').on('click', function(event){
   			location.href="/pineapple/report/member-reporting"; 
   			
   		});
   		  		
   	});
	</script>
</body>

</html>