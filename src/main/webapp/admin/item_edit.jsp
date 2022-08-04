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
<div class="popup_head"><h1>상품 정보 수정</h1>
<div class="popup_head_index">
상품명과 가격을 수정할 수 있습니다
</div>
</div>
<div class="popup_title_wrap">
<div class="popup_title">
<div class="popup_title_text">
대분류
</div>
<div class="popup_title_select">
<div class=item_level"></div>
</div>
</div>

<div class="popup_title">
<div class="popup_title_text">
소분류
</div>
<div class="popup_title_select">
<div class=item_level"></div>
</div>
</div>
</div>

<div class="item_infor_wrap">
<div class="item_infor">
<div class="popup_text">상품코드</div>&nbsp;<div class="popup_inputbox"><div class="item_code"></div></div>
</div>
<div class="item_infor">
<div class="popup_text">상품명</div>&nbsp;<div class="popup_inputbox"><input type="text" placeholder=""></div>
</div>
<div class="item_infor">
<div class="popup_text">가격</div>&nbsp;<div class="popup_inputbox"><input type="text" placeholder=""></div>
</div>
<div class="item_infor">
<div class="popup_text">등록일</div>&nbsp;<div class="popup_inputbox"><div class="item_date"></div></div>
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