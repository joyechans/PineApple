<%@ page import="com.pineapple.vo.Product"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>




<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>PineApple</title>
	
</head>

<body>
    

		<!--header start  -->
		<jsp:include page="/WEB-INF/views/include/header.jsp" />
		<!--header end  -->
       

		
		<div id="pageContainer">	
		<h3 style="text-align:center;padding-top:5%">My Page</h3>
		<br />
	
		<div class="container" style="padding-top:50;text-align:center">
		
		<table class="table table-hover">
			<tr style="height: 50px">
				<th style="width:;text-align: center">ID</th>
				<td>${ member.memberId }</td>
			</tr>
			<tr style="height: 50px">
				<th style="width:;text-align: center">Name</th>
				<td>${ member.name }</td>
			</tr>
			<tr style="height: 50px">
				<th style="width:;text-align: center">Phone</th>
				<td>${ member.phoneNumber }</td>
			</tr>		
			
		</table>
		
		<br></br>
		<div style="padding-top: 10px; text-align: center">		
		 <c:if test="${loginuser.userType eq 'admin' }">	 	
		 <input type="button" id="manger" value="Manger" class="button cart_button" style="color:white;" >
		 </c:if>	
		 <input type="button" id="orderlist" value="OrderList" class="button cart_button" style="color:white;" >			 		
		 <input type="button" id="btnmemberset" value="Edit" class="button cart_button" style="color:white;" >	 		  
		 <input type="button" id="cancel" value="home" class="button cart_button" style="color:white;">						 
		</div>
	</div>
	</div>

    <!-- ##### Main Content Wrapper End ##### -->

   

    <!-- ##### Footer Area Start ##### -->
   
   	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
   
    <!-- ##### Footer Area End ##### -->
    

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
   		$('#cancel').on('click', function(event){
   			location.href="/pineapple/home"; 
   			
   		});
   		
   		$('#btnmemberset').on('click', function(event){
   			location.href="/pineapple/member/memberset?memberId=${ member.memberId }"; 
   			
   		});
   		
   		$('#manger').on('click', function(event){
   			location.href="/pineapple/member/memberlist"; 
   			
   		});
   		
   		
   		$('#orderlist').on('click', function(event){
   			location.href="/pineapple/upload/orderlist"; 
   			
   		});
   		
   	});
	</script>
</body>

</html>