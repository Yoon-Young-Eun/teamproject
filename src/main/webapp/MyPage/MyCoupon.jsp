<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">

<title>SEMO-MyPage</title>
<meta name="author" content="www.twitter.com/cheeriottis">
<link href="/css/MyCoupon.css" rel="stylesheet" />
<link rel="stylesheet" href="/common/css/header.css" />
<link rel="stylesheet" href="/common/css/footer.css" />
<link rel="stylesheet" href="/common/css/button.css" />
<link rel="stylesheet" href="/common/css/sidebar.css" />

<!-- 폰트 -->
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="../js/coupon_spec.js"></script>
</head>
<body>
	<div class="whole-wrapper">
		<jsp:include page="/common/header.jsp"></jsp:include>
		<div class="main">
			<div class="space_left">
				<jsp:include page="/common/mypageSide.jsp" />
			</div>
			<div class="main_text">
				<div class="coupon_title">
					<h1>할인쿠폰</h1>
				</div>
				<div class="title_box">
					<div class="usable">
						<div class="usable_title">사용가능 쿠폰</div>
						<div class="usable_num">0 개</div>
					</div>
					<div class="attention">
						<div class="attention_title">할인쿠폰 적용시 주의사항</div>
						<div id="layer_btn">
							<a href="#">자세히 보기</a>
						</div>
					</div>
				</div>
				<div class="layer" id="layer_content">
					<div class="popup_wrapper">
						<div class="pop_content1">*쿠폰 1개당 1회 적용할 수 있습니다.</div>
						<div class="pop_content2">*할인쿠폰별 적용대상이 다를 수 있습니다.</div>
						<div class="pop_content3">*최소결제금액 조건에 맞는 쿠폰이 있을 수 있습니다.</div>
					</div>
				</div>
				<div class="coupon_body">
					<div class="list_title">나의 쿠폰 목록</div>
					<div class="coupon_list">
						<div class="list_cnum">쿠폰번호</div>
						<div class="list_name">쿠폰명</div>
						<div class="list_num">개수</div>
						<div class="list_discount">할인금액</div>
						<div class="list_expiration">유효기간</div>
					</div>

					<div class="coupon_db">
						<div class="db_cnum">123456</div>
						<div class="db_name">생일빵쿠폰</div>
						<div class="db_num">1</div>
						<div class="db_discount">2000</div>
						<div class="db_expiration">22.08.24~22.08.31</div>
					</div>

					<div class="coupon_db">
						<div class="db_cnum">123456</div>
						<div class="db_name">생일빵쿠폰</div>
						<div class="db_num">1</div>
						<div class="db_discount">2000</div>
						<div class="db_expiration">22.08.24~22.08.31</div>
					</div>
				</div>
			</div>
			<div class="space_right"></div>
		</div>
	</div>
</body>
<jsp:include page="/common/footer.jsp" />
</html>