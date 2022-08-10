<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/styles.css" rel="stylesheet" />
<link href="css/item_insert.css" rel="stylesheet" />
<script src="js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="js/item_insert.js"></script>
</head>



<body>
<!-- <input type="file"> -->
<!-- <div class="filebox"> -->
<!-- <label for="ex_file">파일선택</label> -->
<!-- <input type="file" id="ex_file">  -->
<!-- </div> -->


<div class="popup_wrapper">
<div class="popup_head"><h1>상품 등록</h1>
<div class="popup_head_index">
분류를 구분하여 상품을 등록합니다
</div>
</div>
<div class="popup_title_wrap">
<div class="popup_title">
<div class="popup_title_text">
대분류
</div>
<div class="popup_title_select">
<select class="item_level" id="item_level1"><option value="0">대분류</option>
	<option value="1">상의</option>
	<option value="2">하의</option>
	<option value="3">침구류</option>
	<option value="4">기타</option>
</select>
</div>
</div>

<div class="popup_title">
<div class="popup_title_text">
소분류
</div>
<div class="popup_title_select">
<select class="item_level" id="item_level2"><option value="0">소분류</option>
	<option value="sweat" class="item1">스웨트</option>
	<option value="knit" class="item1">니트</option>
	<option value="shirt" class="item1">셔츠</option>
	<option value="jeans" class="item2">청바지</option>
	<option value="pants" class="item2">면바지</option>
	<option value="shorts" class="item2">반바지</option>
	<option value="cover" class="item3">이불</option>
	<option value="blanket" class="item3">담요</option>
	<option value="pillow" class="item3">베개</option>
	<option value="cap" class="item4">모자</option>
	<option value="doll" class="item4">인형</option>
	<option value="etc" class="item4">기타</option>
	
</select>
</div>
</div>
</div>

<div class="item_infor_wrap">
<div class="item_infor">
<div class="popup_text">상품코드</div>&nbsp;<div class="popup_inputbox"><input type="text" placeholder=""></div>
</div>
<div class="item_infor">
<div class="popup_text">상품명</div>&nbsp;<div class="popup_inputbox"><input type="text" placeholder=""></div>
</div>
<div class="item_infor">
<div class="popup_text">가격</div>&nbsp;<div class="popup_inputbox"><input type="text" placeholder=""></div>
</div>
<div class="item_infor">
<div class="popup_text">등록일</div>&nbsp;<div class="popup_inputbox"><input type="date"></div>
</div>
</div>



<div class="popup_btn">
<div class="end">
	<a href="#">저장</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">취소</a>
</div>
</div>

</div>




</body>
</html>