<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/styles.css" rel="stylesheet" />
<link href="css/member_staff.css" rel="stylesheet" />
</head>



<body>

<div class="popup_wrapper">
<div class="popup_head"><h1>매니저 관리</h1>
<div class="popup_head_index">
매니저 직급을 수정합니다
</div>
</div>
<div class="popup_title">
이&nbsp;&nbsp;름&nbsp;&nbsp;<input type="text" placeholder="">
</div>
<div class="popup_index">
담&nbsp;&nbsp;당&nbsp;
<select class="manager_dept"><option value="0">세탁</option>
	<option value="1" selected="">배송</option>
	<option value="2">웹페이지</option>
	<option value="3">고객관리</option>
	<option value="4">기타</option>
</select>
</div>

<div class="popup_content">
직&nbsp;&nbsp;급&nbsp;
<select class="manager_level"><option value="0">사원</option>
	<option value="1" selected="">대리</option>
	<option value="2">과장</option>
	<option value="3">차장</option>
</select>
</div>
<div class="popup_login">
<div class="popup_text1">아이디</div><div class="popup_inputbox"><input type="text" placeholder=""></div>
</div><div class="popup_login">
<div class="popup_text2">비밀번호</div>&nbsp;<div class="popup_inputbox"><input type="text" placeholder=""></div>
</div><div class="popup_login">
<div class="popup_text3">비밀번호&nbsp;확인</div>&nbsp;<div class="popup_inputbox"><input type="text" placeholder=""></div>
</div>
<!-- <div class="popup_img"><img src="image/gorae.jpg" width="60px" height="60px"><br><br></div> -->


<div class="popup_btn">
<div class="end">
	<a href="#">저장</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">취소</a>
</div>
</div>

</div>




</body>
</html>