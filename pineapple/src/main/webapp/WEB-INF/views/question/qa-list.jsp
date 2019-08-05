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
				<br />



				<div class="container" style="padding-top: 50; text-align: center">
					<table class="table table-hover">
						<tr style="background-color:; height: 50px">
							<th style="width: 50px; text-align: center">NO</th>
							<th style="width: 100px; text-align: center">
								<form id="selectform" action="qacategory" method="POST">
									<select name="category" id="qaselectcategory">
										<option value="all">CATEGORY</option>
										<option value="고양이문의"
											<c:if test="${param.category eq '고양이문의'}">selected</c:if>>고양이문의</option>
										<option value="용품문의"
											<c:if test="${param.category eq '용품문의'}">selected</c:if>>용품문의</option>
										<option value="기타문의"
											<c:if test="${param.category eq '기타문의'}">selected</c:if>>기타문의</option>
									</select>
								</form>

							</th>
							<th style="width: 400px; text-align: center">CONTENTS</th>
							<th style="width: 125px; text-align: center">NAME</th>
							<th style="width: 150px; text-align: center;">DATE</th>
							<th style="width: 125px; text-align: center">ANSWER</th>
						</tr>
						<tr style="height: 30px">
							<td style="text-align: center">*</td>
							<td style="text-align: center"><strong>공지사항</strong></td>
							<td style='text-align: left; padding-left: 10px'><strong>고객센터는
									AM10:00 ~ PM16:30 까지 입니다</strong></td>
							<td style="text-align: center">manager</td>
							<td style="text-align: center">2019-06-24</td>
							<td style="text-align: center"></td>
						</tr>
						<c:forEach var="question" items="${questions}">
							<tr style="height: 30px">
								<td style="text-align: center">${ question.questionNo }</td>
								<td style="text-align: center">${ question.category }</td>
								<td style='text-align: left; padding-left: 10px'><a
									href="/pineapple/qa-upload/qa-detail/${ question.questionNo }">
										${ question.title }</a>&nbsp;&nbsp;[${ question.recnt }]</td>
								<td style="text-align: center">${ question.uploader }</td>
								<td style="text-align: center">${ question.regDate }</td>
								<td style="text-align: center">${ question.answer ? "답변완료" : "답변대기" }
							</tr>
						</c:forEach>

					</table>

					<br></br>
					<div style="padding-left: 70%; text-align: center">
						<input type="button" value="글작성"
							onclick="location.href='qa-write' "
							class="btn btn-outline-secondary">
					</div>
				</div>
			</div>



		</div>
		<!-- Product Catagories Area End ///////////////////-->
	</div>


	<!-- ##### Main Content Wrapper End ##### -->
	<!-- footer -->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	<!-- footer End -->


	<script src="/pineapple/resources/js/jquery-3.2.1.min.js"></script>
	<script src="/pineapple/resources/styles/bootstrap4/popper.js"></script>
	<script src="/pineapple/resources/styles/bootstrap4/bootstrap.min.js"></script>
	<script src="/pineapple/resources/plugins/easing/easing.js"></script>
	<script
		src="/pineapple/resources/plugins/parallax-js-master/parallax.min.js"></script>
	<script src="/pineapple/resources/plugins/Isotope/isotope.pkgd.min.js"></script>
	<script
		src="/pineapple/resources/plugins/malihu-custom-scrollbar/jquery.mCustomScrollbar.js"></script>
	<script
		src="/pineapple/resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
	<script src="/pineapple/resources/js/categories_custom.js"></script>

	<script type="text/javascript">
		$(function() {

			$('#qaselectcategory').on('change', function(event) {

				this.form.submit();

			});
		});
		
	</script>

</body>
</html>