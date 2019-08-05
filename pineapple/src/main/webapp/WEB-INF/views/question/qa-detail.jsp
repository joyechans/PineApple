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


					<div class="container"
						style="padding-top: 25px; text-align: center">
						<div>
							<div>
								<div class="inputsubtitle"></div>
								<br /> <br /> <br />
								<table class="table table-bordered">
									<tr>
										<th colspan="1" style="width: 200px">제목</th>
										<td colspan="2" style="text-align: left">${ question.title }</td>

									</tr>
									<tr>
										<th colspan="1" style="width: 200px">문의분류</th>
										<td colspan="2" style="text-align: left; width: 200px">${ question.category }</td>
									</tr>
									<tr>
										<th colspan="1">작성자</th>
										<td colspan="2" style="text-align: left">${ question.uploader }</td>
									</tr>
									<tr>
										<th colspan="1">조회수</th>
										<td colspan="2" style="text-align: left">${ question.readCount }</td>
									</tr>
									<tr>
										<th colspan="1">등록일자</th>
										<td colspan="2" style="text-align: left">${ question.regDate }</td>
									</tr>
									<tr>
										<th colspan="1">첨부자료</th>
										<td colspan="2" style="text-align: left"><c:forEach
												var="file" items="${question.files }">
												<a
													href="/pineapple/qa-upload/download/${ file.questionFileNo }">
													${ file.userFileName }</a>
												<br>
											</c:forEach></td>
									</tr>

									<tr>
										<%-- 줄바꿈 문자열을 저장하고 있는 변수 만들기 --%>
										<c:set var="enter" value="
" />
										<%--upload.content 문자열에서 \r\n을 <br>로 변경 --%>
										<td colspan="3" style="text-align: left; width: 700px"
											rows="20">${ fn:replace(question.content, enter,'<br>')}</td>
									</tr>
								</table>
								<div class="buttons">
									<%--eq: 같은애를 찾는  / 로그인한 사용자와 글의 작성자가 같으면 삭제, 수정 버튼 활성화--%>
									<c:if test="${ loginuser.memberId eq question.uploader }">
										<input type="button" id="update_button"
											class="btn btn-outline-secondary" value="편집" />
										<input type="button" id="delete_button"
											class="btn btn-outline-secondary" value="삭제" />
									</c:if>

									<input type="button" id="cancel_button"
										class="btn btn-outline-secondary" value="목록보기" /> <br> <br>
									<script type="text/javascript">
		        	//브라우저가 html을 모두 읽고 처리할 준비가 되었을 때 호출 할 함수 지정
		        	window.addEventListener('load',function(event){//js의 main 함수 역할
						var btnCancel =document.querySelector('#cancel_button');
		        		btnCancel.addEventListener('click', function(event) {
		        			location.href="/pineapple/qa-upload/qa-list";//주소창에 list을 입력하고 엔터
		        			//history.back(); //브라우저의 이전 버튼을 클릭
		        		});
		        		
		        		var btnDelete = document.querySelector('#delete_button');
		        		btnDelete.addEventListener('click', function(event){
		        			var ok = confirm("${question.questionNo}번 자료를 삭제할까요?");//의사 확인문장
		        			if(ok){
		        			//<a 를 통한 요청이므로 주소 뒤에 ?key=value 형식을 써서 데이터 전송
		        			location.href="/pineapple/qa-upload/delete/${ question.questionNo }";
		        			}
		        		});
		        		
		        		var btnUpdate = document.querySelector('#update_button');
		        		btnUpdate.addEventListener('click', function(event){
		        			//<a 를 통한 요청이므로 주소 뒤에 ?key=value 형식을 써서 데이터 전송
		        			location.href="/pineapple/qa-upload/qa-update/${ question.questionNo }";
		        		});
		        		
		        	});
		        	</script>
								</div>
							</div>
						</div>



						<!-- write comment area -->
						<form id="commentform">
							<input type="hidden" name="questionNo"
								value="${ question.questionNo }" /> <input type="hidden"
								name="writer" value="${ loginuser.memberId }" />
							<table style="width: 550px; border: solid 1px; margin: 0 auto"
								class="table table-bordered">
								<tr>
									<td style="width: 500px"><textarea id="comment_content"
											name="content" style="width: 500px" rows="3"
											class="form-control"></textarea></td>
									<td style="width: 50px; vertical-align: middle"><a
										id="writecomment" href="javascript:"
										style="text-decoration: none"> 댓글<br />등록
									</a></td>
								</tr>
							</table>
						</form>
						<!-- comment list -->
						<div>
							<br>
							<hr style="width: 550px; margin: 0 auto">
							<br>
							<table id="comment-list"
								style="width: 550px; border: solid 1px; margin: 0 auto"
								class="table table-bordered">
								<c:if
									test="${ not empty question.comments and question.comments[0].commentNo != 0 }">

									<!-- 대댓글 -->

									<c:forEach var="comment" items="${ question.comments }">
										<tr id="tr${ comment.commentNo }">
											<td
												style="text-align:left;margin:5px;border-bottom: solid 1px;padding-left:${comment.depth * 20}px">


												<div id='commentview${ comment.commentNo }'>
													${ comment.writer } &nbsp;&nbsp; [${ comment.regDate }] <br />
													<br /> <span> ${ comment.content } </span> <br /> <br />

													<c:if test='${ loginuser.memberId eq "manager" }'>
														<a class="editcomment "
															data-commentno='${ comment.commentNo }'
															href="javascript:">편집</a>
														<a class="deletecomment " href="javascript:"
															data-commentno="${ comment.commentNo }">삭제</a>
													</c:if>
													<c:if test='${ loginuser.memberId ne "manager" }'>
														<div
															style='display:${ loginuser.memberId eq comment.writer ? "block" : "none" }'>
															<a class="editcomment "
																data-commentno='${ comment.commentNo }'
																href="javascript:">편집</a> <a class="deletecomment "
																href="javascript:"
																data-commentno="${ comment.commentNo }">삭제</a>
														</div>
													</c:if>
													<br /> <a class="recomment-link btn btn-outline-secondary"
														data-commentno="${ comment.commentNo }">댓글 쓰기</a>
												</div> <!-- 수정 -->
												<div id='commentedit${ comment.commentNo }'
													style="display: none">
													${ comment.writer } &nbsp;&nbsp; [${ comment.regDate }] <br />
													<br />
													<form id="updateform${ comment.commentNo }">
														<input type="hidden" name="commentNo"
															value="${ comment.commentNo }" />
														<textarea name="content" style="width: 550px" rows="3"
															maxlength="200">${ comment.content }</textarea>
													</form>
													<br />
													<div>
														<a class="updatecomment btn btn-outline-secondary"
															href="javascript:"
															data-commentno="${ comment.commentNo }">수정</a> &nbsp; <a
															class="cancel btn btn-outline-secondary"
															data-commentno="${ comment.commentNo }"
															href="javascript:">취소</a>
													</div>

												</div>

											</td>
										</tr>

									</c:forEach>
								</c:if>
							</table>

						</div>
					</div>

				</div>

				<br></br> <br></br> <br></br>

 


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

	<!-- 댓글 javascript -->
	<script type="text/javascript">
	$(function() {
		$('#writecomment').on('click', function(event) {
			
			//serialize : <form에 포함된 입력 요소의 값을 이름=값&이름=값&... 형식으로 만드는 함수
			var formData = $('#commentform').serialize();
			// alert(formData)
			
 			$.ajax({
				url: "/pineapple/qa-upload/write-comment",
				method: "POST",
				data: formData,
				success: function(data, status, xhr) {
					 alert(data);
					$("#comment-list").load('/pineapple/qa-upload/comment-list', 
											{ "questionNo" : ${  question.questionNo } }, 
											function() {})
				},
				error: function(xhr, status, err) {
					alert(err);
				}
			});
		});
		
		var currentCommentNo = -1;
		//$('.editcomment').on('click', function(event) {
		$('#comment-list').on('click', '.editcomment', function(event) {
			commentNo = $(this).attr('data-commentno'); // $(event.target) == $(this)
			
			//이전에 편집중인 항목을 원래 상태로 복구
			if (currentCommentNo != -1) {
				$('#commentview' + currentCommentNo).css('display', '');
				$('#commentedit' + currentCommentNo).css('display', 'none');
			}
			
			$('#commentview' + commentNo).css('display', 'none');
			$('#commentedit' + commentNo).css('display', '');
			currentCommentNo = commentNo;
		});
		
		$('#comment-list').on('click', '.cancel', function(event) {
			commentNo = $(this).attr('data-commentno'); // $(event.target) == $(this)
			$('#commentview' + commentNo).css('display', '');
			$('#commentedit' + commentNo).css('display', 'none');
			currentCommentNo = -1;			
		});
		
		$('#comment-list').on('click', '.deletecomment', function(event) {
			commentNo = $(this).attr('data-commentno');
			$.ajax({
				url: "/pineapple/qa-upload/delete-comment",
				method: "GET",
				data: "commentNo=" + commentNo,
				success: function(data, status, xhr) {
					if (data == 'success') {
						$('#tr' + commentNo).remove();
						alert('삭제했습니다.');
					} else {
						alert('삭제 실패 1');
					}
				},
				error: function(xhr, status, err) {
					alert('삭제 실패 2');
				}
			});
		});
		
		$('#comment-list').on('click', '.updatecomment', function(event) {
			//현재 클릭된 <a 의 data-commentno 속성 값 읽기
			var commentNo = $(this).attr('data-commentno');
			var content = $('#updateform' + commentNo + ' textarea').val();
			var inputData = $('#updateform' + commentNo).serialize();
			
			//ajax 방식으로 데이터 수정
			$.ajax({
				"url": "/pineapple/qa-upload/update-comment",
				"method": "POST",
				"data": inputData,
				"success": function(data, status, xhr) {
					alert('댓글을 수정했습니다.');
					var span = $('#commentview' + commentNo + ' span');					
					span.html(content.replace(/\n/gi, '<br>'));
					//view-div는 숨기고, edit-div는 표시하기	
					$('#commentview' + commentNo).css('display', 'block');
					$('#commentedit' + commentNo).css('display', 'none');
				},
				"error": function(xhr, status, err) {
					alert('댓글 수정 실패');
				}
			});
		});
		
		$('#comment-list').on('click', '.recomment-link', function(event) {
			var commentNo = $(this).attr('data-commentno');
			$('#write-recomment-modal input[name=commentNo]').val(commentNo);
			$('#write-recomment-modal').modal('show'); //show bootstrap modal
		});
		
		$('#write-recomment').on('click', function(event) {
			
			var content = $('#recomment-form textarea').val();
			if (content.length == 0) return;
			
			var recommentData = $('#recomment-form').serialize();
			
			$.ajax({
				url: "/pineapple/qa-upload/write-recomment",
				method: "POST",
				data: recommentData,
				success: function(data, status, xhr) {
					alert('success');					
					$('#write-recomment-modal').modal('hide'); //hide bootstrap modal
					$('#recomment-form').each(function() {
						this.reset();
					});
					$("#comment-list").load('/pineapple/qa-upload/comment-list', 
							{ "questionNo" : ${ question.questionNo } }, 
							function() {})
					
				},
				error: function(xhr, status, err) {
					alert('fail');
				}
			});
		
		});	
		

	});
	</script>

	<!-- The Modal 댓글-->


	<div class="modal" id="write-recomment-modal">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">댓글 쓰기</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<form id="recomment-form">
						<input type="hidden" name="commentNo"> <input
							type="hidden" name="writer" value="${ loginuser.memberId }">
						<input type="hidden" name="questionNo"
							value="${ question.questionNo	 }">
						<textarea name="content" rows="5" style="width: 465px"
							class="form-control"></textarea>
					</form>
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" id="write-recomment"
						class="btn btn-outline-secondary">댓글 등록</button>
					<button type="button" class="btn btn-outline-secondary"
						data-dismiss="modal">취소</button>
				</div>

			</div>
		</div>
	</div>


</body>
</html>