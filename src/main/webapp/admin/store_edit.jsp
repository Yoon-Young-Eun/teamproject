<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/admin/css/styles.css" rel="stylesheet" />
<link href="/admin/css/store_edit.css" rel="stylesheet" />
<script src="js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="js/fileupload.js"></script>
</head>

<body>

<div class="popup_wrapper">
<div class="popup_head"><h1>매장</h1>

</div>
<div class="popup_title">
<div class="popup_text">매장명</div><div class="popup_inputbox"><input type="text" placeholder=""></div>
</div>
<div class="popup_type">
<div class="popup_text">구분</div>
<div class="popup_select">
<!-- <input class="office_type" type="radio" name="office_type_radio" id="office_type1" checked="checked"><label for="office_type1">직영</label></div> -->
<!-- <div class="popup_radio"> -->
<!-- <input class="office_type" type="radio" name="office_type_radio" id="office_type2"><label for="office_type2">외주</label> -->
<select class="store_type">
	<option value="직영">직영</option>
	<option value="외주">외주</option>
</select>
</div>
</div><!-- /popup_content -->
<div class="popup_status">
<div class="popup_text">매장상태</div><div class="popup_select">
<select class="manager_level">
	<option value="운영중">운영중</option>
	<option value="휴점">휴점</option>
	<option value="폐점">폐점</option>
</select>
</div>
</div>
<div class="popup_office">
<div class="popup_text">주소</div><div class="popup_inputbox"><input type="text" placeholder="우편변호 검색"></div>
</div>
<div class="popup_office">
<div class="popup_text"></div><div class="popup_inputbox"><input type="text" placeholder="주소"></div>
</div>
<div class="popup_office">
<div class="popup_text"></div><div class="popup_inputbox"><input type="text" placeholder="상세주소 입력"></div>
</div>
<div class="popup_office">
<div class="popup_text">전화번호</div><div class="popup_inputbox"><input type="text" placeholder="010-1234-5678"></div>
</div>

<div class="popup_btn">
<div class="end">
	<a href="#">확인</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">수정</a>&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="#">삭제</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">취소</a>
</div>
</div>

</div>

<!-- <div class="popup_img"><img src="image/oh_whale.jpg" width="360px" height="360px"><br><br></div> -->

</body>
</html>