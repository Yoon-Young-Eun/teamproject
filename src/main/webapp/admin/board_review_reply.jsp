<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/styles.css" rel="stylesheet" />
<link href="css/board_review_reply.css" rel="stylesheet" />
<script src="js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="js/board_review_reply.js"></script>
</head>

<body>

<div class="popup_wrapper">

<div class="popup_title"><h2>리뷰 관리</h2>
</div>
<div class="customer_question_wrapper">
<div class="customer_question">
<div class="customer_question_title">제목</div>
<div class="customer_question_title_body">안녕하세요</div>
</div>
<div class="customer_question">
<div class="customer_question_title_row">작성자</div>
<div class="customer_question_name_body">안녕하</div>
<!-- </div> -->
<!-- <div class="customer_question"> -->
<div class="customer_question_title_row">작성일</div>
<div class="customer_question_date_body">2022-08-10</div>
</div>
<div class="customer_question_order">
<div class="customer_question_title">주문번호</div>
<div class="customer_question_title_body">S324235932</div>
</div>
<div class="customer_question">
<div class="customer_question_title">평가</div>
<div class="customer_question_title_body">☆ ☆ ☆ ☆ ☆</div>
</div>
<div class="customer_question">
<div class="customer_question_title">내용</div>
<div class="customer_question_content_body">
안녕하세요세탁을맡겼는데안깨끗해요<br>안녕하세요세탁을맡겼는데안깨끗해요<br>
</div>
</div>

<div class="popup_btn">
<div class="end">
	<div id="layer_hidden_btn"><a href="#">리뷰 가리기</a></div>&nbsp;&nbsp;&nbsp;&nbsp;<div id="layer_reply_btn"><a href="#">답변</a></div>
</div>
</div>

</div>
</div>

<div class="layer" id="layer_reply">
<div class="popup_wrapper2">

<div class="customer_reply_wrapper">
<div class="customer_reply_head"><h2>답변</h2>
</div>
<div class="customer_reply">
<div class="customer_reply_title">제목</div><div class="customer_reply_title_body"><input type="text"></div>
</div>
<div class="customer_reply">
<div class="customer_reply_title">내용</div><div class="customer_reply_content_body"><input type="text"></div>
</div>
</div>

<div class="popup_btn">
<div class="end">
	<a href="#">저장</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">취소</a>
</div>

</div>
</div>
</div>
<!-- <div class="popup_img"><img src="image/oh_whale.jpg" width="360px" height="360px"><br><br></div> -->

</body>
</html>