<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>[세모]세탁의 모든것</title>

<!-- font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
<!-- resources -->
<link rel="stylesheet" href="/views-mypage/resources/css/MyOrder.css"/>
<link rel="stylesheet" href="/common/css/header.css"/>
<link rel="stylesheet" href="/common/css/button.css"/>
<link rel="stylesheet" href="/common/css/footer.css"/>
<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<!-- map api -->
<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=23ba625f7534454f4f7553b3ef9cfd1c"></script>
</head>
<body>

<jsp:include page="/common/logined-header.jsp"/> 

<div class = "page-wrapper">
	<!-- 사이드메뉴 -->
	<div class = "sidemenu">
		<jsp:include page="/common/mypageSide.jsp"/>
	</div>
	<jsp:include page = "/common/quick-menu.jsp"/>
	<!-- 본문 -->
	<div class = "content-wrapper">
		<!-- 제목 -->
		<div class = "content-title-wrapper">
			<div class = "content-title">
				<h2>내 주문 관리</h2>
			</div>
			<!-- 소제목 -->
			<div class = "content-subtitle-wrapper">
				<p>주문 상세 진행 상황</p>
				<c:choose>
					<c:when test="${ordervo.order_status eq '수거대기'}">
					<form action="/getRefund.do" onsubmit="return confirm('정말 취소하시겠습니까?');" method="get">
					<input type="hidden" value="${ordervo.imp_uid}" name="imp_uid">
<!-- 						<a href="#" type="submit" style = "font-size : 15px; height : 20px; margin-top:auto; margin-bottom:auto;" class="action-button shadow animate grey">주문취소</a> -->
						<input type="submit" value="주문취소" style = "font-size : 15px; margin-top:auto; margin-bottom:auto;" id="button2" class="action-button shadow animate grey">
					</form>
					</c:when>
					<c:otherwise>
						<a></a>
					</c:otherwise>
				</c:choose>
			</div>
		</div><!-- content-title-wrapper -->
		
		<!-- 내용 -->
		<div class = "detail-wrapper">
			<!-- 상태바 -->
			<div class = "statusbar">
				<center>
				<c:choose>
					<c:when test = "${ordervo.order_status eq '수거대기'}">
						<img alt="" src="/views-mypage/resources/img/delivery-progress-1.png">
					</c:when>	
					<c:when test = "${ordervo.order_status eq '수거완료'}">
						<img alt="" src="/views-mypage/resources/img/delivery-progress-2.png">
					</c:when>	
					<c:when test = "${ordervo.order_status eq '세탁중'}">
						<img alt="" src="/views-mypage/resources/img/delivery-progress-3.png">
					</c:when>	
					<c:when test = "${ordervo.order_status eq '배송중'}">
						<img alt="" src="/views-mypage/resources/img/delivery-progress-4.png">
					</c:when>	
					<c:when test = "${ordervo.order_status eq '배송완료'}">
						<img alt="" src="/views-mypage/resources/img/delivery-progress-5.png">
					</c:when>	
					<c:when test = "${ordervo.order_status eq '주문취소'}">
						<img alt="" src="/views-mypage/resources/img/delivery-progress-0.png">
					</c:when>	
				</c:choose>
				</center>
			</div>
			<div class = "status">
				<ul>
					<li><b>수거대기</b></li>
					<li><b>수거완료</b></li>
					<li><b>세탁중</b></li>
					<li><b>배송중</b></li>
					<li><b>배송완료</b></li>
				</ul>
			</div>
			<!-- 지도 -->
			<input type="hidden" value="${ordervo.order_store_name}" name="order_store_name" id="order_store_name">
			<div class = "map-wrapper">
				<div class = "map" id="map" style="width:500px;height:500px;"></div>
				<div class = "detail">
					<h3>현재 주문</h3>
					<div class = "order-no" style = "display : flex;">
						<p class = "order-title">주문번호</p>
						<span class = "order-content">${ordervo.order_no}</span>
					</div>
					<div class = "order-pickup" style = "display : flex;">
						<p class = "order-title">픽업 예정일</p>
						<span class = "order-content">${ordervo.order_pickup_date} ${ordervo.order_pickup_time}</span>
					</div>
					<div class = "order-delivery" style = "display : flex;">
						<p class = "order-title">배송 예정일</p>
						<span class = "order-content">${ordervo.order_expected_date}</span>
					</div>
					<br>
					<h3>내 세탁물 위치</h3>
					<div class = "laundry-name" style = "display : flex;">
						<p class = "laundry-title">상호명</p>
						<span class = "laundry-content">${storedetail.store_name }</span>
					</div>
					<div class = "laundry-address" style = "display : flex;">
						<p class = "laundry-title">주소</p>
						<span class = "laundry-content">${storedetail.store_address1} ${storedetail.store_address1}</span>
					</div>
					<div class = "laundry-phone" style = "display : flex;">
						<p class = "laundry-title">전화번호</p>
						<span class = "laundry-content">${storedetail.store_phone}</span>
					</div>
				</div>
			</div><!-- map wrapper -->
			</div> <!-- detail wrapper -->
			
			<!-- 주문상세 -->
			<div class = "order-item-wrapper">
				<!-- 주문한 세탁물 정보 -->
				<div class = "order-item-title">
					<h3>주문 정보</h3>
				</div>
				<c:forEach var="orderdetail" items="${orderdetail}">
				<table>
					<tbody class = "order-item-list">
						<tr>
							<td class = "order-item-name">${orderdetail.order_mt_product}</td>
							<td class = "order-item-cnt">${orderdetail.order_mt_count}</td>
							<td class = "order-item-price"><b>${orderdetail.order_mt_price * orderdetail.order_mt_count}</b>원</td>	
						</tr>
					</tbody>
				</table>
				</c:forEach>
				<!-- 주문자 정보 -->
				<div class = "order-customer-wrapper">
					<div class = "order-customer-title">
						<h3>주문자 정보</h3>
					</div>
					<div class = "order-customer-detail">
						<div class = "order-customer-name" style = "display : flex;">
							<p class = "customer-title">이름</p>
							<span class = "cutomer-content">${ordervo.order_customer_name}</span>
						</div>
						<div class = "order-customer-phone" style = "display : flex;">
							<p class = "customer-title">연락처</p>
							<span class = "cutomer-content">${ordervo.order_customer_phone}</span>
						</div>
						<div class = "order-customer-address" style = "display : flex;"> 
							<p class = "customer-title">주소</p>						
							<span class = "cutomer-content">${ordervo.order_address1 } ${ordervo.order_address2 }</span>
						</div>
						<div class = "order-customer-passwd" style = "display : flex;">
							<p class = "customer-title">공동현관</p>
							<span class = "cutomer-content"><i class="fas fa-lock"></i>${ordervo.cm_gate_passwd }</span>
						</div>
					</div>
				</div>
				<!-- 요청메세지 -->
				<div class = "request-wrapper">
					<div class = "request-title">
						<h3>요청메세지</h3>
					</div>
					<div class = "request-content">
						<div class = "request-to-laundry" style = "display : flex;">
							<p class = "request-content-title">세탁소에게</p>
							<span class = "request-content-content">${ordervo.order_request1 }</span>
						</div>
						<div class = "request-to-deliver" style = "display : flex;">
							<p class = "request-content-title">배달 기사님에게</p>
							<span class = "request-content-content">${ordervo.order_request2 }</span>
						</div>	
					</div>
				</div>
				<!-- 결제정보 -->
				<div class = "pay-wrapper">
					<div class = "pay-title">
						<h3>결제 정보</h3>
					</div>
					<c:choose>
						<c:when test = "${ordervo.order_status eq '주문취소'}">
							<div class = "pay-content">
								<div class = "pay-way" style = "display : flex;">
									<p class = "pay-content-title">결제수단</p>
									<span class = "pay-content-content">${ordervo.order_price_method}</span>
								</div>
								<div class = "pay-item" style = "display : flex;">
									<p class = "pay-content-title">총 상품 가격</p>
									<span class = "pay-content-content">${ordervo.order_price + ordervo.order_use_coupon_price}</span>
								</div>
								<div class = "pay-delivery" style = "display : flex;">
									<p class = "pay-content-title">배송비</p>
									<span class = "pay-content-content">${ordervo.order_delivery_price}</span>
								</div>
								<div class = "pay-discount" style = "display : flex;">
									<p class = "pay-content-title">할인금액</p>
									<span class = "pay-content-content" style = "line-height : 30px;">
										-${ordervo.order_use_coupon_price}	
										<br>
										(쿠폰 할인)
									</span>
								</div>
								<div class = "pay-total" style = "display : flex;">
									<p class = "pay-content-title">총 결제금액</p>
									<span class = "pay-content-content" style = "color : red; font-weight : bold;">-${ordervo.order_price}</span>
								</div>
							</div><!-- pay-content -->
						</c:when>
						<c:otherwise>
							<div class = "pay-content">
								<div class = "pay-way" style = "display : flex;">
									<p class = "pay-content-title">결제수단</p>
									<span class = "pay-content-content">${ordervo.order_price_method}</span>
								</div>
								<div class = "pay-item" style = "display : flex;">
									<p class = "pay-content-title">총 상품 가격</p>
									<span class = "pay-content-content">${ordervo.order_price + ordervo.order_use_coupon_price}</span>
								</div>
								<div class = "pay-delivery" style = "display : flex;">
									<p class = "pay-content-title">배송비</p>
									<span class = "pay-content-content">${ordervo.order_delivery_price}</span>
								</div>
								<div class = "pay-discount" style = "display : flex;">
									<p class = "pay-content-title">할인금액</p>
									<span class = "pay-content-content" style = "line-height : 30px;">
										-${ordervo.order_use_coupon_price}	
										<br>
										(쿠폰 할인)
									</span>
								</div>
								<div class = "pay-total" style = "display : flex;">
									<p class = "pay-content-title">총 결제금액</p>
									<span class = "pay-content-content" style = "color : #63afe4; font-weight : bold;">${ordervo.order_price}</span>
								</div>
							</div><!-- pay-content -->
						</c:otherwise>
					</c:choose>
				</div>
			</div><!-- order-item-wrapper -->
	</div> <!-- content-wrapper -->
</div>	<!-- page-wrapper -->			

<!------------------ 스크립트 ------------------>

<!-- 지도 -->
<script>
	var mapContainer = document.getElementById('map') // 지도를 표시할 div 
	console.log("map");
	var num1 = Number(0);
 	var num2 = Number(0);

	if (document.getElementById('order_store_name').value === '동작지점') {
	num1 = Number(37.513007626488594);
	num2 = Number(126.93989940550772);
	}
	else if (document.getElementById('order_store_name').value === '중구지점') {
		num1 = Number(37.566857992065586);
		num2 = Number(126.97866356824198);
	}
	else if (document.getElementById('order_store_name').value === '종로지점') {
		num1 = Number(37.586564230544354);
		num2 = Number(126.97480278835683);
	}
	else if (document.getElementById('order_store_name').value === '영등포지점') {
		num1 = Number(37.53183392416857);
		num2 = Number(126.91413983106807);
	}

 else if (document.getElementById('order_store_name').value === '강남지점') {
	num1 = Number(37.51238658438941);
	num2 = Number(127.05880783427013);

} else if (document.getElementById('order_store_name').value === '송파지점') {
	num1 = Number(37.5126223756192);
	num2 = Number(127.1026969968422);
} else if (document.getElementById('order_store_name').value === '용산지점') {
	num1 = Number(37.55127433886607);
	num2 = Number(126.9882560895345);
} else if (document.getElementById('order_store_name').value === '서초지점') {
	num1 = Number(37.495934829363385);
	num2 = Number(127.01107370085373);
} else { // 입력값 없는 경우 본점으로(청와대점)
	num1 = Number(37.586564230544354);
	num2 = Number(126.97480278835683);
}
	
	
	mapOption = { 
// 		center: new kakao.maps.LatLng(37.513007626488594, 126.93989940550772),
		center: new kakao.maps.LatLng(num1, num2),
		level: 3 // 지도의 확대 레벨
	};
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	// 마커가 표시될 위치입니다 

	var markerPosition  = new kakao.maps.LatLng(num1, num2); 


// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
</script>

<jsp:include page="/common/footer.jsp"></jsp:include>

</body>
</html>