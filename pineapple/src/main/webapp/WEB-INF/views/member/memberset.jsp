<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" 
		 contentType="text/html; charset=utf-8" 
		 pageEncoding="utf-8"%>




<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>PineApple</title>

    <!-- Favicon  -->
    <link rel="icon" href="/pineapple/resources/img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="/pineapple/resources/css/core-style.css">
    <link rel="stylesheet" href="/pineapple/resources/style.css">
	
</head>

<body>
    
		<!--header start  -->
		<jsp:include page="/WEB-INF/views/include/header.jsp" />
		<!--header end  -->
       

        <div class="products-catagories-area clearfix">
            <div class="amado-pro-catagory clearfix">
		
		<div id="pageContainer">


		
		<h3 style="text-align:center;padding-top:5%">정보 수정</h3>
		<br />
		
		
		
		<div class="container" style="padding-top:50;text-align:center">
		<form id="memberset-form" action="memberset" method="post">
		<table class="table table-hover">
			<tr style="height: 50px">
				<th style="width:;text-align: center">ID</th>
				<td>${ member.memberId }
					<input type="hidden" name="memberId" value="${ member.memberId }" style="width:280px" />
				</td>
			</tr>
			<tr style="height: 50px">
				<th style="width:;text-align: center">Password</th>
				<td>
					<input type="password" name="passwd" style="width:280px" />
				</td>
			</tr>
			<tr style="height: 50px">
				<th style="width:;text-align: center">Password Confirm</th>
				<td>
					<input type="password" name="confirm" style="width:280px" />
				</td>
			</tr>
			<tr style="height: 50px">
				<th style="width:;text-align: center">Name</th>
				<td>${ member.name }</td>
			</tr>
			<tr style="height: 50px">
				<th style="width:;text-align: center">Phone</th>
				<td>
					<input type="text" name="phoneNumber" style="width:280px" />
				</td>
			</tr>
			
			
		</table>
		</form>
		<br></br>
		<div style="padding-top: 10px; text-align: center">		
		 <input type="submit" id="btnmemberset" value="Submit" class="button cart_button" style="color:white;" >
		 <input type="button" id="btnmembermypage" value="Cancle" class="button cart_button" style="color:white;" >				 				 
		</div>	
	</div>
	</div>
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
	<script type="text/javascript">	        	
   	$(function(){
   		$('#btnmembermypage').on('click', function(event){
   			location.href="/pineapple/member/membermypage?memberId=${member.memberId }"; 
   			
   		});
   		
   		$('#btnmemberset').on('click', function(event){
   			$('#memberset-form').submit();
   			
   		});
   	});
	</script>
	
</body>

</html>