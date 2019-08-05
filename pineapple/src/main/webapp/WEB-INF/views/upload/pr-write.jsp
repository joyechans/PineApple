<%@ page import="com.pineapple.vo.Product"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>



<!DOCTYPE html>

<html>
<head>

	<meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	
	
	<title>PineApple</title>
	
	 <!-- Favicon  -->
    <link rel="icon" href="/pineapple/resources/img/core-img/favicon.ico">
    
     <!-- Core Style CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
	<link rel="stylesheet" href="/pineapple/resources/css/core-style.css">
    <link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/categories.css">
	<link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/main_styles.css">


	
</head>
<body>


		<!--header start  -->
		<jsp:include page="/WEB-INF/views/include/header.jsp" />
		<!--header end  -->
       
		
	
        <!-- Product Catagories Area Start -->
        <div class="products-catagories-area clearfix">
            <div class="amado-pro-catagory clearfix">

	<div id="pageContainer">
	
	
		<h3 style="text-align:center;padding-top:5%">상품구매</h3>
		
		<div class="container" style="mpadding-top:50;text-align:center">
		
		        <form action="pr-write"
						method="post"
						enctype="multipart/form-data" >
		        <table class="table table-hover">
			<tr style="height: 50px; width: 500px">
		                <th>상품이름</th>
		                <td>
		                    <input type="text" name="name" style="width:550px" class="form-control"/>
		                </td>
		            </tr>
		            <tr>
		            	<th>상품종류</th>
		             <td>
		                    <select name="kind">
		                	  <option value="IPHONE" selected="selected">iPhone</option>
							  <option value="IPAD">iPad</option>
		                      <option value="MAC">MAC</option>		                      
		                      <option value="WATCH">Watch</option>		                      
							  <option value="AIRPOT">Airpot</option>				
							  </select>
		                </td>
		                </tr>
		            <tr>
		                <th>상품가격</th>
		                <td>
		                    <input type="text" name="price" style="width:550px" class="form-control"/>
		                </td>
		            </tr>
								<tr>
									<th colspan="1">작성자</th>
									<td colspan="2" style="text-align: left"><input
										type="hidden" name="uploader" value="${loginuser.memberId}">
										${ loginuser.memberId} <%-- 히든속성이 아님
		                	<input type="hidden" name="uploader" 
		                	value="<%= member.getMemberId() %>" readonly="readonly">
		                	--%></td>
								</tr>
								<tr>
									<th colspan="1">이미지</th>
									<td colspan="2" style="text-align: left">

										<div class="custom-file">
											<input type="file" name="attach"> 
										</div>

									</td>
								</tr>

								<tr>
									<td colspan="3"><textarea name="content"
											style="width: 750px" rows="20" class="form-control"></textarea>
									</td>
								</tr>




							</table>
		        <div class="buttons">
		        	<input type="submit" value="자료등록"  class="btn btn-dark"  />
		        	<input id="cancel_button" type="button" value="취소"  class="btn btn-dark" />
		        </div>
		        </form>

					<script type="text/javascript">
						//브라우저가 html을 모두 읽고 처리할 준비가 되었을 때 호출 할 함수 지정
						window.addEventListener('load', function(event) {//js의 main 함수 역할
							var btnCancel = document
									.querySelector('#cancel_button');
							btnCancel.addEventListener('click',
									function(event) {
										//location.href = "list";//주소창에 list.action을 입력하고 엔터
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
    

	<script>
	// Add the following code if you want the name of the file appear on select
	$(".custom-file-input").on("change", function() {
	  var fileName = $(this).val().split("\\").pop();
	  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
	});
	</script>
</body>
</html>