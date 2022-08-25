<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="js/zipcode.js"></script>
<link rel="stylesheet" href="css/mypage_add_address.css" />
</head>
<body>
<div class="add_address_wrapper">
<div class="add_address_single">
<div class="add_address_icon1"></div>
<div class="add_address_content"><input type="text" placeholder="받는 사람"></div>
</div>
<div class="add_address_single">
<div class="add_address_icon2"></div>
<div class="add_address_content" onclick="sample6_execDaumPostcode()">우편번호 찾기</div>
<div class="add_address_content_search"></div>
</div>
<div class="add_address_single">
<div class="add_address_icon3"></div>
<div class="add_address_content"><input type="text" placeholder="휴대폰 번호"></div>
</div>
<div class="add_address_single">
<div class="add_address_icon4"></div>
<div class="add_address_content">배송 정보</div>
</div>

<div class="default_checkbox">
<input id="default_address" type="checkbox"><label for="default_address">기본 배송지로 선택</label></div>

<div class="address_btn">
<div class="action-button shadow animate blue" onclick="location.href='mypage_address.jsp'">
저장</div>
</div>


</div>
</body>
</html>