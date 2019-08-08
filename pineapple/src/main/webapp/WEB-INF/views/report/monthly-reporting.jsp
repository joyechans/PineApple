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
		
		
		
		<h3 style="padding-top:2%; padding-left: 10%">구매날짜별 판매분류</h3>
		<div class="container" style="padding-top:50;text-align:center">
		
		<table class="table table-hover">
			<thead class="thead-dark">
			<tr style="background-color:#339fb7; height: 45px;">
					<th style="text-align: center; width: 20%;" >구매날짜</th>
					<th style="text-align: center; width: 20%;">구매자 아이디</th>
					<th style="text-align: center; width: 20%;">구매자 주소</th>
					<th style="text-align: center; width: 20%">총 구매금액</th>
				</tr>
			</thead>
				<c:forEach var="report" items="${ report }">
				<tr>
					<td style="text-align: center">${ report.paymentDate }</td>
					<td style="text-align: center">${ report.memberId }</td>
					<td style="text-align: center">${ report.addr1 } ${ report.addr2 } ${ report.addr3 }</td>
					<td style="text-align: center">${ report.money } 원</td>
				</tr>
				</c:forEach>		
		</table>
	
		<br></br>
		<div>
		 <input type="button" id="cancel" value="list" class="button cart_button" style="color:white;">
		 
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
   		$('#cancel').on('click', function(event){
   			location.href="/pineapple/report/reporting"; 
   			
   		});
   		  		
   	});
	</script>
</body>

</html>