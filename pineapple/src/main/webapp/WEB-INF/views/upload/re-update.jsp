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
	
	<title>Review</title>
	
	<link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/bootstrap4/bootstrap.min.css">
   <link href="/pineapple/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
   <link href="/pineapple/resources/plugins/malihu-custom-scrollbar/jquery.mCustomScrollbar.css" rel="stylesheet" type="text/css">
   <link rel="stylesheet" type="text/css" href="/pineapple/resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
   <link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/categories.css">
   <link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/main_styles.css">
   <link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/categories_responsive.css">
   
   <script src="/pineapple/resources/js/jquery-3.2.1.min.js"></script>
   <script src="/pineapple/resources/styles/bootstrap4/popper.js"></script>
   <script src="/pineapple/resources/styles/bootstrap4/bootstrap.min.js"></script>
   <script src="/pineapple/resources/plugins/easing/easing.js"></script>
   <script src="/pineapple/resources/plugins/parallax-js-master/parallax.min.js"></script>
   <script src="/pineapple/resources/plugins/Isotope/isotope.pkgd.min.js"></script>
   <script src="/pineapple/resources/plugins/malihu-custom-scrollbar/jquery.mCustomScrollbar.js"></script>
   <script src="/pineapple/resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
   <script src="/pineapple/resources/js/categories_custom.js"></script>

</head>

<body>

	<!-- ##### Main Content Wrapper Start ##### -->
    <div class="main-content-wrapper d-flex clearfix">

        <!-- Mobile Nav (max width 767px)-->
        <div class="mobile-nav">
            <!-- Navbar Brand -->
            <div class="amado-navbar-brand"><!-- 
                <a href="/pineapple/home"><img src="/resources/img/core-img/logo.png" alt=""></a> -->
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
        <div class="products-catagories-area clearfix">
            <div class="amado-pro-catagory clearfix">
            
	<div id="pageContainer">
	
		<h3 style="text-align:center;padding-top:8%">Re
		
		view</h3>
		
		<div style="padding-top:50;text-align:center">
		<div id="inputcontent">
		    <div >
		        <div class="inputsubtitle"></div>		        
		        <form action="/pineapple/upload/re-update"
						method="post"
						enctype="multipart/form-data" >
					<input type="hidden" name="reviewNo" value="${ review.reviewNo }">
		        <table class="table table-bordered">
		            <tr>
		                <th>제목</th>
		                 <td>
		                    <select name="category">
		                      <option value="cat">CAT</option>
							  <option value="product">PRODUCT</option>
							</select>
		                </td>
		                <td>
		                    <input type="text" name="title" style="width:550px" class="form-control" />
		                </td>
		            </tr>
		            <tr>
		                <th colspan="1">작성자</th>
		                <td colspan="2" style="text-align:left">
		                	<input type="hidden" name="uploader" value="${ loginuser.memberId }">
		                	${ loginuser.memberId }
		                	
		                
		                	
		                </td>
		            </tr>
		            <tr>
		                <th colspan="1">첨부자료</th>
		                <td colspan="2" style="text-align:left">
		                  	<c:forEach var="file" items="${ product.imgs }">
			                ${ file.userFileName } 
			               [<a href="/pineapple/upload/delete-file/${ product.productNo }/${ file.productImgNo }">삭제</a>]<br>
			                </c:forEach>
										<div class="custom-file">
											<input type="file" name="attach"> 
										</div>
							
		                </td>
		            </tr>
		            <tr>
		               <td colspan="3" >
		                	<textarea name="content" id="editor" style="width:750px" rows="20" class="form-control">${ question.content }</textarea>
		                </td>
		            </tr>
		        </table>
		        <div class="buttons">
		        	<input type="submit" value="자료등록" id="insertBoard" class="btn btn-dark" />
		        	<input id="cancel_button" type="button" value="취소"  class="btn btn-dark"  />
		        </div>
		        </form>
		        
		        <script type="text/javascript">
						window.addEventListener('load', function(event) {
							var btnCancel = document
									.querySelector('#cancel_button');
							btnCancel.addEventListener('click',
									function(event) {
							
										history.back(); //브라우저의 이전 버튼을 클릭
									});
						});
					</script>
		    </div>
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


	
	<script>
	// Add the following code if you want the name of the file appear on select
	$(".custom-file-input").on("change", function() {
	  var fileName = $(this).val().split("\\").pop();
	  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
	});
	</script>
	<script async src="https://www.google-analytics.com/analytics.js"></script>
	
	<!-- editor -->
	<script src="https://code.jquery.com/jquery-latest.js"></script>
	<script type="text/javascript"
		src="/pineapple/resources/editor/js/HuskyEZCreator.js"
		charset="utf-8"></script>
	<script type="text/javascript">
		$(function() {
			//전역변수
			var obj = [];
			//스마트에디터 프레임생성
			nhn.husky.EZCreator
					.createInIFrame({
						oAppRef : obj,
						elPlaceHolder : "editor",
						sSkinURI : "/pineapple/resources/editor/SmartEditor2Skin.html",
						htParams : {
							// 툴바 사용 여부
							bUseToolbar : true,
							// 입력창 크기 조절바 사용 여부
							bUseVerticalResizer : true,
							// 모드 탭(Editor | HTML | TEXT) 사용 여부
							bUseModeChanger : true,
						}
					});
			//전송버튼
			$("#insertBoard").click(function() {
				//id가 smarteditor인 textarea에 에디터에서 대입
				obj.getById["editor"].exec("UPDATE_CONTENTS_FIELD", []);
				//폼 submit
				$("#insertBoardFrm").submit();
			});
		});
	</script>
	
	
</body>
</html>