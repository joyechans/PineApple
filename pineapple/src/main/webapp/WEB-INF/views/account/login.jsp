<%@ page import="com.pineapple.vo.Product"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
	<head>
		<title>PineApple</title>
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
	
	<div class="checkout">
		<div class="container">
			<div class="row">

				<!-- Billing Details -->
				<div class="col-lg-6">
					<div class="billing">
						<div class="checkout_title">Login</div>
						<div class="checkout_form_container">
							<form id="login-form" action="login" method="post">
								
								<input type="text" class="checkout_input" name="memberId" placeholder="ID">
								<input type="password" class="checkout_input" name="passwd" placeholder="Password" required="required">
							   <input style="width: 15px; height: 15px" type="checkbox" class="checkbox" id="idSaveCheck">&nbsp;아이디저장																					
							</form>
						</div>
					</div>
				</div>

				<!-- Cart Details -->
				<div class="col-lg-6">
					<div class="cart_details">
						<div class="checkout_title"></div>
						
						<div class="payment_options">														
							<input id="login" type="submit" class="cart_total_button" value="login" />
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
	<script src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js"></script>

	<script type="text/javascript">	        	
   	$(function(){
   		$('#cancel').on('click', function(event){
   			location.href="/pineapple/home"; 
   			
   		});
   		
   		$('#login').on('click', function(event){
   			$('#login-form').submit();
   			
   		});
   	});
   	
   	$(document).ready(function(){
   	    // 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
   	    var userInputId = getCookie("userInputId");
   	    $("input[name='memberId']").val(userInputId); 
   	     
   	    if($("input[name='memberId']").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
   	        $("#idSaveCheck").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
   	    }
   	     
   	    $("#idSaveCheck").change(function(){ // 체크박스에 변화가 있다면,
   	        if($("#idSaveCheck").is(":checked")){ // ID 저장하기 체크했을 때,
   	            var userInputId = $("input[name='memberId']").val();
   	            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
   	        }else{ // ID 저장하기 체크 해제 시,
   	            deleteCookie("userInputId");
   	        }
   	    });
   	     
   	    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
   	    $("input[name='memberId']").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
   	        if($("#idSaveCheck").is(":checked")){ // ID 저장하기를 체크한 상태라면,
   	            var userInputId = $("input[name='memberId']").val();
   	            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
   	        }
   	    });
   	});
   	 
   	function setCookie(cookieName, value, exdays){
   	    var exdate = new Date();
   	    exdate.setDate(exdate.getDate() + exdays);
   	    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
   	    document.cookie = cookieName + "=" + cookieValue;
   	}
   	 
   	function deleteCookie(cookieName){
   	    var expireDate = new Date();
   	    expireDate.setDate(expireDate.getDate() - 1);
   	    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
   	}
   	 
   	function getCookie(cookieName) {
   	    cookieName = cookieName + '=';
   	    var cookieData = document.cookie;
   	    var start = cookieData.indexOf(cookieName);
   	    var cookieValue = '';
   	    if(start != -1){
   	        start += cookieName.length;
   	        var end = cookieData.indexOf(';', start);
   	        if(end == -1)end = cookieData.length;
   	        cookieValue = cookieData.substring(start, end);
   	    }
   	    return unescape(cookieValue);
   	}
	</script>
	</body>
</html>		
		

