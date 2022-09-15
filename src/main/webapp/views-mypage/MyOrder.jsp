<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=23ba625f7534454f4f7553b3ef9cfd1c"></script>
</head>
<body>

<jsp:include page="/common/logined-header.jsp"/> 

<div class = "page-wrapper">
	<!-- 사이드메뉴 -->
	<div class = "sidemenu">
		<jsp:include page="/common/mypageSide.jsp"/>
	</div>
	
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
			</div>
		</div><!-- content-title-wrapper -->
		
		<!-- 내용 -->
		<div class = "detail-wrapper">
			<!-- 상태바 -->
			<div class = "statusbar">
				<center><img alt="" src="/views-mypage/resources/img/delivery-progress-3.png"></center>
			</div>
			<div class = "status">
				<ul>
					<li>주문 접수</li>
					<li>수거 중</li>
					<li><b>세탁중</b></li>
					<li>배송 중</li>
					<li>배송 완료</li>
				</ul>
			</div>
			<!-- 지도 -->
			<div class = "map-wrapper">
				<div class = "map" id="map" style="width:500px;height:500px;"></div>
				<div class = "detail">
					<h3>현재 주문</h3>
					<div class = "order-no" style = "display : flex;">
						<p class = "order-title">주문번호</p>
						<span class = "order-content">1</span>
					</div>
					<div class = "order-pickup" style = "display : flex;">
						<p class = "order-title">픽업 예정일</p>
						<span class = "order-content">2022.07.12(화) 오전</span>
					</div>
					<div class = "order-delivery" style = "display : flex;">
						<p class = "order-title">배송 예정일</p>
						<span class = "order-content">2022.07.15(월) - 2022.07.20(수)</span>
					</div>
					<br>
					<h3>내 세탁물 위치</h3>
					<div class = "laundry-name" style = "display : flex;">
						<p class = "laundry-title">상호명</p>
						<span class = "laundry-content">쓱쓱싹싹 클린데이</span>
					</div>
					<div class = "laundry-address" style = "display : flex;">
						<p class = "laundry-title">주소</p>
						<span class = "laundry-content">동작구 노량진동 장승배기로 141</span>
					</div>
					<div class = "laundry-phone" style = "display : flex;">
						<p class = "laundry-title">전화번호</p>
						<span class = "laundry-content">02-000-0000</span>
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
				<div class = "order-item-list">
					<div class = "order-item-name">와이셔츠</div>
					<div class = "order-item-cnt">1</div>
					<div class = "order-item-price"><b>1,200원</b></div>	
				</div>
				<!-- 주문자 정보 -->
				<div class = "order-customer-wrapper">
					<div class = "order-customer-title">
						<h3>주문자 정보</h3>
					</div>
					<div class = "order-customer-detail">
						<div class = "order-customer-name" style = "display : flex;">
							<p class = "customer-title">이름</p>
							<span class = "cutomer-content">우처리</span>
						</div>
						<div class = "order-customer-phone" style = "display : flex;">
							<p class = "customer-title">연락처</p>
							<span class = "cutomer-content">010-0000-0000</span>
						</div>
						<div class = "order-customer-address" style = "display : flex;"> 
							<p class = "customer-title">주소</p>						
							<span class = "cutomer-content">서울시 강북구 삼각산로 123-3 501호</span>
						</div>
						<div class = "order-customer-passwd" style = "display : flex;">
							<p class = "customer-title">공동현관</p>
							<span class = "cutomer-content"><i class="fas fa-lock"></i> 7899</span>
						</div>
					</div>
				</div>
				<!-- 요청메세지 -->
				<div class = "request-wrapper">
					<div class = "request-title">
						<h3>요청메세지</h3>
					</div>
					<div class = "request">
					</div>
				</div>
				<!-- 결제정보 -->
				
				
			</div><!-- order-item-wrapper -->
	</div> <!-- content-wrapper -->
</div>	<!-- page-wrapper -->			

<!------------------ 스크립트 ------------------>

<!-- 지도 -->
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.51303467960978, 126.93994462752252), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.51303467960978, 126.93994462752252); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
</script>
</body>
</html>