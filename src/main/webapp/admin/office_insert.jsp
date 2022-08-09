<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/styles.css" rel="stylesheet" />
<link href="css/office_insert.css" rel="stylesheet" />
<script src="js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="js/fileupload.js"></script>
</head>



<body>
<!-- <input type="file"> -->
<!-- <div class="filebox"> -->
<!-- <label for="ex_file">파일선택</label> -->
<!-- <input type="file" id="ex_file">  -->
<!-- </div> -->


<div class="popup_wrapper">
<div class="popup_head"><h1>매장 등록</h1>
<div class="popup_head_index">
새로운 매장을 등록합니다
</div>
</div>
<div class="popup_title">
<div class="popup_text">매장명</div>&nbsp;<div class="popup_inputbox"><input type="text" placeholder=""></div>
</div>

<div class="popup_content">
<div class="popup_text">구분</div>
&nbsp;<div class="popup_radio">
<input class="office_type" type="radio" name="office_type_radio" checked="checked">직영</div>
<div class="popup_radio">
<input class="office_type" name="office_type_radio" type="radio">외주
<!-- <select class="manager_level"><option value="사원">사원</option> -->
<!-- 	<option value="대리" selected="">대리</option> -->
<!-- 	<option value="과장">과장</option> -->
<!-- 	<option value="차장">차장</option> -->
<!-- </select> -->
</div>
</div>
<div class="popup_office">
<div class="popup_text">주소</div>&nbsp;<div class="popup_inputbox"><input type="text" placeholder="우편변호 검색"></div>
</div>
<div class="popup_office">
<div class="popup_text"></div>&nbsp;<div class="popup_inputbox"><input type="text" placeholder="주소"></div>
</div>
<div class="popup_office">
<div class="popup_text"></div>&nbsp;<div class="popup_inputbox"><input type="text" placeholder="상세주소 입력"></div>
</div>
<div class="popup_office">
<div class="popup_text">전화번호</div>&nbsp;<div class="popup_inputbox"><input type="text" placeholder="010-1234-5678"></div>
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