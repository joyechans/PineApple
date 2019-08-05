<%@ page import="com.pineapple.vo.Product"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Categories</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Wish shop project">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css"
	href="/pineapple/resources/styles/bootstrap4/bootstrap.min.css">
<link
	href="../resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="../resources/plugins/malihu-custom-scrollbar/jquery.mCustomScrollbar.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="/pineapple/resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
<link rel="stylesheet" type="text/css"
	href="/pineapple/resources/styles/categories.css">
<link rel="stylesheet" type="text/css"
	href="/pineapple/resources/styles/main_styles.css">
<link rel="stylesheet" type="text/css"
	href="/pineapple/resources/styles/categories_responsive.css">


</head>
<body>

	<div class="super_container">

		<!-- header -->

		<jsp:include page="/WEB-INF/views/include/header.jsp" />

		<!-- header End -->

		<!-- Menu -->

		<div
			class="menu d-flex flex-column align-items-end justify-content-start text-right menu_mm trans_400">
			<div class="menu_close_container">
				<div class="menu_close">
					<div></div>
					<div></div>
				</div>
			</div>
			<div class="logo menu_mm">
				<a href="#">Wish</a>
			</div>
			<div class="search">
				<form action="#">
					<input type="search" class="search_input menu_mm"
						required="required">
					<button type="submit" id="search_button_menu"
						class="search_button menu_mm">
						<img class="menu_mm" src="images/magnifying-glass.svg" alt="">
					</button>
				</form>
			</div>
			<nav class="menu_nav">
				<ul class="menu_mm">
					<li class="menu_mm"><a href="#">home</a></li>
					<li class="menu_mm"><a href="#">clothes</a></li>
					<li class="menu_mm"><a href="#">accessories</a></li>
					<li class="menu_mm"><a href="#">lingerie</a></li>
					<li class="menu_mm"><a href="#">contact</a></li>
				</ul>
			</nav>
		</div>

		<!-- Products /////////////////-->
		<div class="products">

				<div id="pageContainer">

					<h3 style="text-align: center; padding-top: 5%">QnA</h3>

					<div style="padding-top: 50; text-align: center">
						<div id="inputcontent">
							<div>
								<div class="inputsubtitle"></div>
								<form action="/pineapple/qa-upload/qa-update" method="post"
									enctype="multipart/form-data">
									<input type="hidden" name="questionNo"
										value="${ question.questionNo }">
									<table class="table table-bordered" style="width:50%;margin: auto">
										<tr>
											<th>제목</th>
											<td><select name="category">
													<option value="고양이문의" selected="selected">고양이문의</option>
													<option value="용품문의">용품문의</option>
													<option value="기타문의">기타문의</option>
											</select></td>
											<td><input type="text" name="title" style="width: 550px"
												class="form-control" /></td>
										</tr>
										<tr>
											<th colspan="1">작성자</th>
											<td colspan="2" style="text-align: left"><input
												type="hidden" name="uploader"
												value="${ loginuser.memberId }"> ${ loginuser.memberId }



											</td>
										</tr>
										<tr>
											<th colspan="1">첨부자료</th>
											<td colspan="2" style="text-align: left"><c:forEach
													var="file" items="${question.files }">
                         ${ file.userFileName } 
                         [<a
														href="/pineapple/qa-upload/delete-file/${ question.questionNo }/${ file.questionFileNo }">삭제</a>]&nbsp;|&nbsp;
						</c:forEach>

												<div class="custom-file">
													<input type="file" class="custom-file-input"
														id="customFile" name="attach"> <label
														class="custom-file-label" for="customFile">Choose
														file</label>
												</div></td>
										</tr>
										<tr>
											<td colspan="3"><textarea name="content" id="editor"
													style="width: 750px" rows="20" class="form-control">${ question.content }</textarea>
											</td>
										</tr>
									</table>
									<div class="buttons">
										<input type="submit" value="자료등록" id="insertBoard"
											class="btn btn-outline-secondary" /> <input
											id="cancel_button" type="button" value="취소"
											class="btn btn-outline-secondary" />
									</div>
								</form>

								<script type="text/javascript">
									window
											.addEventListener(
													'load',
													function(event) {
														var btnCancel = document
																.querySelector('#cancel_button');
														btnCancel
																.addEventListener(
																		'click',
																		function(
																				event) {

																			history
																					.back(); //브라우저의 이전 버튼을 클릭
																		});
													});
								</script>
							</div>
						</div>

					</div>
				</div>
	
		</div>
		<!-- Product Catagories Area End////////////////////// -->
	</div>
	<!-- ##### Main Content Wrapper End ##### -->

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    
    <!-- footer -->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	<!-- footer End -->

	<script src="/pineapple/resources/js/jquery-3.2.1.min.js"></script>
	<script src="/pineapple/resources/styles/bootstrap4/popper.js"></script>
	<script src="/pineapple/resources/styles/bootstrap4/bootstrap.min.js"></script>
	<script src="/pineapple/resources/plugins/easing/easing.js"></script>
	<script src="/pineapple/resources/plugins/parallax-js-master/parallax.min.js"></script>
	<script src="/pineapple/resources/plugins/Isotope/isotope.pkgd.min.js"></script>
	<script src="/pineapple/resources/plugins/malihu-custom-scrollbar/jquery.mCustomScrollbar.js"></script>
	<script src="/pineapple/resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
	<script src="/pineapple/resources/js/categories_custom.js"></script>
	
	
	
	

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

</body>
</html>