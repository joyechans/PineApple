<%@ page import="com.pineapple.vo.Product"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>



<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>Pineapple | Review</title>

    
   <link rel="stylesheet" type="text/css" href="../resources/styles/bootstrap4/bootstrap.min.css">
   <link href="../resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
   <link href="../resources/plugins/malihu-custom-scrollbar/jquery.mCustomScrollbar.css" rel="stylesheet" type="text/css">
   <link rel="stylesheet" type="text/css" href="../resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
   <link rel="stylesheet" type="text/css" href="../resources/styles/categories.css">
   <link rel="stylesheet" type="text/css" href="../resources/styles/main_styles.css">
   <link rel="stylesheet" type="text/css" href="../resources/styles/categories_responsive.css">
   
   <script src="../resources/js/jquery-3.2.1.min.js"></script>
   <script src="../resources/styles/bootstrap4/popper.js"></script>
   <script src="../resources/styles/bootstrap4/bootstrap.min.js"></script>
   <script src="../resources/plugins/easing/easing.js"></script>
   <script src="../resources/plugins/parallax-js-master/parallax.min.js"></script>
   <script src="../resources/plugins/Isotope/isotope.pkgd.min.js"></script>
   <script src="../resources/plugins/malihu-custom-scrollbar/jquery.mCustomScrollbar.js"></script>
   <script src="../resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
   <script src="../resources/js/categories_custom.js"></script>
	
	

</head>

<body>
    
    <!-- ##### Main Content Wrapper Start ##### -->
    <div class="main-content-wrapper d-flex clearfix">

        <!-- Mobile Nav (max width 767px)-->
        <div class="mobile-nav">
            <!-- Navbar Brand -->
            <div class="amado-navbar-brand">
                <a href="/catopia/home"><img src="/resources/img/core-img/logo.png" alt=""></a>
            </div>
            <!-- Navbar Toggler -->
            <div class="amado-navbar-toggler">
                <span></span><span></span><span></span>
            </div>
        </div>

		<!--header start  -->
		<jsp:include page="/WEB-INF/views/include/header.jsp" />
		<!--header end  -->
       
		
	
        <!-- Product Catagories Area Start -->
        <div class="products-catagories-area clearfix container">
            <div class="amado-pro-catagory clearfix">
		
		<div id="pageContainer">


		
		<h3 style="text-align:center;padding-top:8%">Review</h3>
		<br />
		
		
		
		<div class="container" style="padding-top:50;text-align:center">
		<table class="table table-hover">
			<tr style="background-color:;height: 50px">
				<th style="width: 50px;text-align: center">NO</th>
				<th style="width: 100px;text-align: center">
					<form id="selectform" action="viewcategory" method="POST">
                         <select name="category" id="selectcategory">
                             <option value="MAC" <c:if test="${param.category eq 'MAC'}">selected</c:if>>MAC</option>
                             <option value="IPAD" <c:if test="${param.category eq 'IPAD'}">selected</c:if>>IPAD</option>
                             <option value="IPHONE" <c:if test="${param.category eq 'IPHONE'}">selected</c:if>>IPHONE</option>
                             <option value="WATCH" <c:if test="${param.category eq 'WATCH'}">selected</c:if>>WATCH</option>
                         </select>
                	</form>
				
				</th>
				<th style="width: 400px;text-align: center">CONTENTS</th>
				<th style="width: 125px;text-align: center">NAME</th>
				<th style="width: 150px;text-align: center; text-align: center">DATE</th>
			</tr>
			
			<c:forEach var="review" items="${review}">
				<tr style="height: 30px">
					<td style="text-align: center">${ review.reviewNo }</td>
					<td style="text-align: center">${ review.category }</td>
					<td style='text-align: left; padding-left: 10px'><a
						href="/catopia/re-upload/re-detail/${ review.reviewNo }">${ review.title }</a></td>
					<td style="text-align: center">${ review.uploader }</td>
					<td style="text-align: center">${ review.regDate }</td>
				</tr>
			</c:forEach>
		</table>
		
		<br></br>
		<div style="padding-top: 10px; padding-left:1000px; text-align: center" >
		 <input type="button" value="글작성" onclick="location.href='re-write' " class="btn btn-outline-secondary">
		</div>
	</div>
	</div>
	</div>		
	</div>		
			
        <!-- Product Catagories Area End -->
    </div>
    <!-- ##### Main Content Wrapper End ##### -->
    <!-- ##### Footer Area Start ##### -->
    	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
    <!-- ##### Footer Area End ##### -->

    <!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
	
	<script type="text/javascript">	        	
   	$(function(){
   		   		
   		$('#selectcategory').on('change', function(event){
   			
   			
   			this.form.submit();
   			
   		});
   	});
	</script>
</body>
</html>

