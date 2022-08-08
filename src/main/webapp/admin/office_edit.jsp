<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/styles.css" rel="stylesheet" />
<link href="css/office_edit.css" rel="stylesheet" />
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
<div class="popup_head"><h1>매장 관리</h1>
<div class="popup_head_index">
매장정보를 수정하거나 삭제합니다
</div>
</div>
<div class="popup_title">
매장명&nbsp;<input type="text" placeholder="">
</div>

<div class="popup_content">
구분&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input class="office_type" type="radio" checked="checked">&nbsp;직영&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input class="office_type" type="radio">&nbsp;외주
<!-- <select class="manager_level"><option value="사원">사원</option> -->
<!-- 	<option value="대리" selected="">대리</option> -->
<!-- 	<option value="과장">과장</option> -->
<!-- 	<option value="차장">차장</option> -->
<!-- </select> -->
</div>
<div class="popup_office">
<div class="popup_text">주소</div>&nbsp;<div class="popup_inputbox"><input type="text" placeholder=""></div>
</div>
<div class="popup_office">
<div class="popup_text"></div>&nbsp;<div class="popup_inputbox"><input type="text" placeholder=""></div>
</div>
<div class="popup_office">
<div class="popup_text"></div>&nbsp;<div class="popup_inputbox"><input type="text" placeholder=""></div>
</div>
<div class="popup_office">
<div class="popup_text">전화번호</div>&nbsp;<div class="popup_inputbox"><input type="text" placeholder=""></div>
</div>
<!-- <div class="popup_img"><img src="image/gorae.jpg" width="60px" height="60px"><br><br></div> -->


<div class="popup_btn">
<div class="end">
	<a href="#">확인</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">수정</a>&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="#">삭제</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">취소</a>
</div>
</div>

</div>




</body>
</html>