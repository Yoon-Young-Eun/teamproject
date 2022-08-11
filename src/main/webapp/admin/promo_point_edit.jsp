<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/styles.css" rel="stylesheet" />
<link href="css/promo_point.css" rel="stylesheet" />
<script src="js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="js/promo_point.js"></script>
</head>



<body>

<div class="popup_wrapper">
<div class="popup_head">
<div class="coupon_point_title_wrap">
<div class="coupon_title"><a href="promo_coupon_edit.jsp"><h1>쿠폰</h1></a></div>
<div class="point_title"><h1>포인트</h1></div></div>
<div class="popup_head_index">
포인트를 등록합니다
</div>
</div>

<div class="popup_title_wrap">
<div class="popup_title">
<div class="popup_title_text">
내용
</div>
<div class="popup_title_select">
<input type="text" placeholder="">

</div>
</div>

<div class="popup_title">
<div class="popup_title_text">
발급코드
</div>
<div class="popup_title_select">
<input type="text" placeholder="">

</div>
</div>
</div>

<div class="item_infor_wrap">
<div class="item_infor">
<div class="popup_text">금액</div>&nbsp;<div class="popup_inputbox"><input type="text" placeholder=""></div>
</div>
<div class="item_infor">
<div class="popup_text">발급대상</div>&nbsp;<div class="popup_inputbox">
<select class="item_level" id="item_level1"><option value="0">전체</option>
	<option value="1">신규가입</option>
	<option value="2">생일</option>
	<option value="3">리뷰</option>
</select>
</div>
</div>
<div class="item_infor">
<div class="popup_text">유효기간</div>&nbsp;<div class="popup_inputbox">
<select id="selectBox" name="selectBox">
    <option value="0" selected="selected">1주일</option>
    <option value="1">1개월</option>
    <option value="2">1년</option>
    <option value="3">기타</option>
</select>
</div>
</div>
<div class="layer">
<div class="item_infor">
<div class="popup_text"></div>&nbsp;<div class="layer_inputbox"><input type="number"></div>
<div class="layer_select">
<select>
    <option value="0" selected="selected">일</option>
    <option value="1">주일</option>
    <option value="2">개월</option>
    <option value="3">년</option>
</select>
</div>
</div>
</div>

<!-- <div class="item_infor"> -->
<!-- <div class="popup_text">발급갯수</div>&nbsp;<div class="popup_inputbox"> -->
<!-- <input class="coupon_number" type="number" value="1"> -->
<!-- </div> -->
<!-- </div> -->
</div>



<div class="popup_btn">
<div class="end">
	<a href="#">저장</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">취소</a>
</div>
</div>

</div>




</body>
</html>