<%@ page import="com.pineapple.vo.Product"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->


<title>자료업로드</title>

<!-- Favicon  -->
<link rel="icon" href="/pineapple/resources/img/core-img/favicon.ico">

<!-- Core Style CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

</head>
<body>

	<!-- ##### Main Content Wrapper Start ##### -->
	<div class="main-content-wrapper d-flex clearfix">

		<!-- Mobile Nav (max width 767px)-->
		<div class="mobile-nav">
			<!-- Navbar Brand -->
			<div class="amado-navbar-brand">
				<a href="/pineapple/home"><!-- 
				<img src="/pineapple/resources/img/core-img/logo.png" alt=""> --></a>
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
		<div class="products-catagories-area clearfix container w-75">
			<div class="amado-pro-catagory clearfix">

				<div id="pageContainer" >

					<h3 style="text-align: center; padding-top: 5%">Review</h3>

					<div class="container" style="padding-top: 50; text-align: center">
						<form style="text-align: center"  action="re-write" method="post"
							enctype="multipart/form-data">
							<table class="table table-bordered">
								<tr>
									<th>제목</th>
									<td><select name="category">
											<option value="IPHONE">IPHONE</option>
											<option value="IPAD">IPAD</option>
											<option value="MAC">MAC</option>
											<option value="WATCH">WATCH</option>
											<option value="AIRPOT">AIRPOT</option>
									</select></td>
									<td><input type="text" name="title" style="width: 550px"
										class="form-control" /></td>
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
									<th colspan="1">첨부자료</th>
									<td colspan="2" style="text-align: left"><c:forEach
											var="file" items="${ review.imgs }">
			                ${ file.userFileName } 
			               [<a
												href="/pineapple/upload/delete-file/${ review.reviewNo }/${ file.reviewImgNo }">삭제</a>]<br>
										</c:forEach>
										<div class="custom-file">
											<input type="file" name="attach">
										</div></td>

								</tr>

								<tr>
									<th colspan="1">내용</th>
									<td colspan="3"><textarea name="content" id="editor"
											style="width: 750px" rows="20" class="form-control"></textarea>
									</td>
								</tr>

							</table>
							<div class="buttons">
								<input type="submit" value="자료등록" id="insertBoard"
									class="btn btn-dark" /> <input id="cancel_button"
									type="button" value="취소" class="btn btn-dark" />
							</div>
						</form>

						<script type="text/javascript">
							//브라우저가 html을 모두 읽고 처리할 준비가 되었을 때 호출 할 함수 지정
							window.addEventListener('load', function(event) {//js의 main 함수 역할
								var btnCancel = document
										.querySelector('#cancel_button');
								btnCancel.addEventListener('click', function(
										event) {
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
	<!-- Product Catagories Area End -->
	<!-- ##### Main Content Wrapper End ##### -->

	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script>
		// Add the following code if you want the name of the file appear on select
		$(".custom-file-input").on(
				"change",
				function() {
					var fileName = $(this).val().split("\\").pop();
					$(this).siblings(".custom-file-label").addClass("selected")
							.html(fileName);
				});
	</script>

	<!-- editor -->
	<script src="https://code.jquery.com/jquery-latest.js"></script>
	<script type="text/javascript"
		src="/pineapple/resources/navereditor/js/HuskyEZCreator.js" charset="utf-8"></script>
	<script type="text/javascript">
		$(function() {
			//전역변수
			var obj = [];
			//스마트에디터 프레임생성
			nhn.husky.EZCreator.createInIFrame({
				oAppRef : obj,
				elPlaceHolder : "editor",
				sSkinURI : "/pineapple/resources/navereditor/SmartEditor2Skin.html",
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
	
	<!-- ##### Footer Area Start ##### -->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	<!-- ##### Footer Area End ##### -->
</body>
</html>