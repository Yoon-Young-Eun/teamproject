<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/mypage_order.css" />
</head>
<body>
<div class="wrapper">

<div class="order_title"><h1>주문상세</h1></div>

<div class="order_box_top">
<div class="order_row">
<div class="order_box_title">주문번호</div>
<div class="order_box_content">001</div></div>
<div class="order_row">
<div class="order_box_title">수거예약일</div>
<div class="order_box_content">7월15일(금) 오전 8시</div>
<div class="order_box_title">배송예정일</div>
<div class="order_box_content">7월20일(수)~7월21일(목) 배송예정</div></div>
</div>

<div class="order_navi_bar">
<div class="order_navi_bg_round">주문접수</div>
<div class="order_navi_arrow">></div>
<div class="order_navi_bg_round">수거 중</div>
<div class="order_navi_arrow">></div>
<div class="order_navi_bg_round">세탁 중</div>
<div class="order_navi_arrow">></div>
<div class="order_navi_bg_round">배송 중</div>
<div class="order_navi_arrow">></div>
<div class="order_navi_bg_round">배송완료</div>
</div>

<div class="order_map">
<div id="map" class="map"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	02e5f2db16b1888a0191b2bbe1098628"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.5131019, 126.9399366),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
	</script>
<div class="map_store_list">


<div class="chart">
<div class="chart_item_mg"><img src=image/blue_85.png width=35px height=43px></div>
<div class="chart_item">
<span class="chart_title">
2001아울렛(분당점)
</span>
<br>
<span class="chart_icon">
<img src=image/icon_store01.png>&nbsp;<img src=image/icon_store02.png>&nbsp;<img src=image/icon_store03.png>&nbsp;<img src=image/icon_store05.png>&nbsp;<img src=image/icon_store06.png>&nbsp;
</span>
<br>
<span class="chart_body">
경기도 성남시 분당구 미금일로154번길<br>
20(구미동) 2001아울렛분당점 지하2층<br>
031-786-2929<br>
</span>
</div>
<div class="chart_item_mg_r"></div>
</div>
<hr>


</div>
</div>


<div class="order_sub_title">주문품목정보</div>

<div class="order_box_item">
<div class="order_row">
<div class="order_item_name_data">양복/교복상의</div>
<div class="order_item_count_data">1</div>
<div class="order_item_price_data">1,800원</div></div>
<div class="order_row">
<div class="order_item_name_data">흰색 와이셔츠</div>
<div class="order_item_count_data">2</div>
<div class="order_item_price_data">4,200원</div></div>
<div class="order_row">
<div class="order_item_name_data">컬러 와이셔츠</div>
<div class="order_item_count_data">1</div>
<div class="order_item_price_data">1,200원</div></div>
</div>

<div class="order_sub_title">예약자정보</div>

<div class="order_box_user">
<div class="order_row">
<div class="order_box_title">이름</div>
<div class="order_box_content">홍길동</div></div>
<div class="order_row">
<div class="order_box_title">연락처</div>
<div class="order_box_content">010-1234-5678</div></div>
<div class="order_row">
<div class="order_box_title">주소</div>
<div class="order_box_content">서울시 강북구 삼각산로 123-3 501호</div></div>
<div class="order_row">
<div class="order_box_title">출입</div>
<div class="order_box_content">현관0000</div></div>
</div>

<div class="order_sub_title">요청메세지</div>

<div class="order_box_req">
<div class="order_row">
<div class="order_box_title">세탁소</div>
<div class="order_box_content">특수오염 제거요청</div></div>
<div class="order_row">
<div class="order_box_title">기사님</div>
<div class="order_box_content">배송 전에 전화주세요</div></div>
</div>

<div class="order_sub_title">결제정보</div>

<div class="order_row">
<div class="order_box_pay">
<div class="order_row order_row_a">
<div class="order_box_title">결제수단</div>
<div class="order_box_content">신한카드/일시불</div></div>
</div>
<div class="order_box order_box_a">
<div class="order_row">
<div class="order_box_title">총상품가격</div>
<div class="order_box_content">29,800</div></div>
<div class="order_row">
<div class="order_box_title">배송비</div>
<div class="order_box_content">3,000</div></div>
<div class="order_row">
<div class="order_box_title">카드/일시불</div>
<div class="order_box_content">29,800</div></div>
<div class="order_row order_row">
<div class="order_box_title">총 결제금액</div>
<div class="order_box_content order_box_content_r">29,800</div></div>
</div>
</div>

</div>
</body>
</html>