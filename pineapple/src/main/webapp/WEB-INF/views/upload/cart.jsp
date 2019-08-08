<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page language="java" 
		 contentType="text/html; charset=utf-8" 
		 pageEncoding="utf-8"%>
<!DOCTYPE html>

<html>
<head>
<title>Cart</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Wish shop project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/bootstrap4/bootstrap.min.css">
<link href="/pinapple/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/cart.css">
<link rel="stylesheet" type="text/css" href="/pineapple/resources/styles/cart_responsive.css">
</head>
<body>

<div class="super_container">
	
	<!-- Header -->

	<jsp:include page="/WEB-INF/views/include/header.jsp" />

	
	<!-- Cart -->

	<div class="cart_container">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="cart_title">Your Shopping Cart</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col">
					<div class="cart_bar d-flex flex-row align-items-center justify-content-start">
						<div class="cart_bar_title_name">Product</div>
						<div class="cart_bar_title_content ml-auto">
							<div class="cart_bar_title_content_inner d-flex flex-row align-items-center justify-content-end">
								<div class="cart_bar_title_price">Price</div>
								<div class="cart_bar_title_quantity">Quantity</div>
								<div class="cart_bar_title_total">Total</div>
								<div class="cart_bar_title_button"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<c:choose>
			<c:when test="${map.count ==0 }">
				<p style="text-align: center; font-size:20px;">장바구니가 비었습니다</p>
			</c:when>
			<c:otherwise>
			
			<c:forEach var="row" items="${map.carts}">
			<form name="form1"  id="form${row.orderId }" method="GET" action="/pineapple/upload/updatecart">
			<input type="hidden" name="memberId" value="${loginuser.memberId }">
			<input type="hidden" name="orderId" value="${row.orderId }">
			<div class="row">
				<div class="col">
					<div class="cart_products">
						<ul>
							<li class=" cart_product d-flex flex-md-row flex-column align-items-md-center align-items-start justify-content-start">
								<!-- Product Image -->
								<div class="cart_product_image"><img src="/pineapple/resources/upload-files/${ product.img.savedFileName }" alt=""></div>
								<!-- Product Name -->
								<div class="cart_product_name"><a href="product.html">${row.productName }</a></div>
								<div class="cart_product_info ml-auto">
									<div class="cart_product_info_inner d-flex flex-row align-items-center justify-content-md-end justify-content-start">
										<!-- Product Price -->
										<div class="cart_product_price">￦${ row.productPrice }</div>
										<!-- Product Quantity -->
										<div class="product_quantity_container">
											<div class="product_quantity clearfix">
												<input type="hidden" name="productNo" value="${row.productNo }">
												
												<input id="quantity_input${row.productNo }" type="text" name="amount" value="${ row.amount }" pattern="[1-9]*">
												
												<div class="quantity_buttons">
													<div id="quantity_inc_button${row.productNo }" data-no="${row.productNo }" class="quantity_inc quantity_control">▲<i class="fa fa-caret-up" aria-hidden="true"></i></div>
													<div id="quantity_dec_button${row.productNo }" data-no="${row.productNo }" class="quantity_dec quantity_control">▼<i class="fa fa-caret-down" aria-hidden="true"></i></div>
												</div>
												
											</div>
										</div>
										<!-- Products Total Price -->
										<div class="cart_product_total">￦${ row.money }</div>
										<!-- Product Cart Trash Button -->
										<div class="cart_product_button">
											<!-- <button class="cart_product_remove"> -->											
			
											<button id="submit"><img src="../resources/images/changeamount.png"></button>
											<a href="/pineapple/upload/deletecart?orderId=${ row.orderId }&memberId=${loginuser.memberId}"><img src="../resources/images/trash.png" 
											alt=""></a>
											<!-- </button> -->
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			</form>
			</c:forEach>
			
			<div class="row">
				<div class="col">
					<div class="cart_control_bar d-flex flex-md-row flex-column align-items-start justify-content-start">
						<input type="hidden" id="count" name="count" value="${map.count }">
						<!-- <button class="button_clear cart_button">clear cart</button> -->
						<!-- <button id="btnUpdate" class="button_update cart_button">Edit</button> -->
					<button class="button_update cart_button_2 ml-md-auto" id="continue">continue shopping</button>
					</div>
				</div>
			</div>
			
			<form name="form2" method="POST" action="/pineapple/upload/doorder" onsubmit="return check()">
			<input type="hidden" name="memberId" value="${loginuser.memberId }">
			
			<div class="row cart_extra">
				<!-- Cart Address -->
				<div class="col-lg-6">
					<div class="cart_coupon">
						<div class="cart_title">Address</div><br>
							<input type="button" onclick="sample2_execDaumPostcode()" class="cart_total_button col-sm-12" value="Find Postal Code">						
							<input type="text" id="sample2_postcode" class="form-control col-sm-12" placeholder="Postal Code"><br>
							<input type="text" name="addr1" id="addr1" class="form-control col-sm-12" placeholder="Address"><br>
							<input type="text" name="addr2" id="addr2" class="form-control col-sm-12" placeholder="Sub Address"><br>						
							<input type="text" name="addr3" id="addr3" class="form-control col-sm-12" placeholder="Detail address">
						<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
						<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
					</div>
				</div>
			</div>
			<!-- Cart Address End -->
			
				<!-- Cart Total -->
				
				<div class="col-lg-5 offset-lg-1">
					<div class="cart_total">
						<div class="cart_title">cart total</div>
						<p class="text-muted" style="text-align: center;">If you pay more than ￦100,000, the shipping cost is free</p>
						<ul>
							<li class="d-flex flex-row align-items-center justify-content-start">
								<div class="cart_total_title">Subtotal</div>
								<div class="cart_total_price ml-auto">￦${map.sumMoney}</div>
							</li>
							<li class="d-flex flex-row align-items-center justify-content-start">
								<div class="cart_total_title">Shipping</div>
								<div class="cart_total_price ml-auto">￦${map.fee }</div>
							</li>
							<li class="d-flex flex-row align-items-center justify-content-start">
							<input type="hidden" id="money" name="money" value="${map.allSum}">
								<div class="cart_total_title">Total</div>
								<div class="cart_total_price ml-auto">￦${map.allSum}</div>
							</li>
						</ul>						
						<input type="submit" class="cart_total_button" value="PROCEED TO CHECKOUT" onclick="alert('구매가 완료되었습니다');">
					</div>
				</div>			
				
			</div>
			</form>
			</c:otherwise>
			</c:choose>
		</div>
	</div>

	
	<!-- Footer -->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</div>

<script src="/pineapple/resources/js/jquery-3.2.1.min.js"></script>
<script src="/pineapple/resources/styles/bootstrap4/popper.js"></script>
<script src="/pineapple/resources/styles/bootstrap4/bootstrap.min.js"></script>
<script src="/pineapple/resources/plugins/easing/easing.js"></script>
<script src="/pineapple/resources/plugins/parallax-js-master/parallax.min.js"></script>
<script src="/pineapple/resources/js/cart_custom.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">	     
	function check() {

	  if(document.form2.addr1.value.length==0||document.form2.addr2.value.length==0||document.form2.addr3.value.length==0) {
		    alert("주소를 입력해 주세요.");
		    return false;
		  	}
	  else return true;
	  }
	
	
   	$(function(){
   		/* $('#updatebtn').on('click', function(event) {
   			event.preventDefault();
   			event.stopPropagation();
   			
   			 $('form[id^=cartform]').forEach(function(idx, item) {
   				var serializedData = $(this).serialize();
   	   			//$.ajax(""))
   				
   			}); 
   			
   			
   		}); */
   			$('#submit').on('click', function(event){
   				$('#form1').submit();
   			});
   		 			
			});
   		  		
   		/////////////////////////////////////////////////////////////
   		
   		
   		// Handle product quantity input
		if($('.product_quantity').length) {
			
			$('div[id ^= quantity_inc_button]').on('click', function(event) {
				var no = $(this).attr('data-no');
				var input = $('#quantity_input' + no);				
				var originalVal;
				var endVal;
				originalVal = input.val();
				endVal = parseFloat(originalVal) + 1;
				input.val(endVal);
			});
			$('div[id ^= quantity_dec_button]').on('click', function(event) {
				var no = $(this).attr('data-no');
				var input = $('#quantity_input' + no);
				var originalVal;
				var endVal;
				originalVal = input.val();
				if(originalVal > 0)
				{
					endVal = parseFloat(originalVal) - 1;
					input.val(endVal);
				}
			});

		}
</script>
<script>
    // 우편번호 찾기 화면을 넣을 element
    var element_layer = document.getElementById('layer');

    function closeDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_layer.style.display = 'none';
    }

    function sample2_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("addr2").value = extraAddr;
                
                } else {
                    document.getElementById("addr2").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample2_postcode').value = data.zonecode;
                document.getElementById("addr1").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("addr3").focus();

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_layer.style.display = 'none';
            },
            width : '100%',
            height : '100%',
            maxSuggestItems : 5
        }).embed(element_layer);

        // iframe을 넣은 element를 보이게 한다.
        element_layer.style.display = 'block';

        // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
        initLayerPosition();
    }

    // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
    // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
    // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
    function initLayerPosition(){
        var width = 300; //우편번호서비스가 들어갈 element의 width
        var height = 400; //우편번호서비스가 들어갈 element의 height
        var borderWidth = 5; //샘플에서 사용하는 border의 두께

        // 위에서 선언한 값들을 실제 element에 넣는다.
        element_layer.style.width = width + 'px';
        element_layer.style.height = height + 'px';
        element_layer.style.border = borderWidth + 'px solid';
        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
    }
   	
    $(function(){
   		$('#continue').on('click', function(event){
   			var ok = confirm("쇼핑을 계속하시겠습니까?");
   			if(ok){
   	   			location.href="/pineapple/pr-upload/pr-list2"; 
   			}
   		});

   		  		
   	});   
</script>
</body>
</html>