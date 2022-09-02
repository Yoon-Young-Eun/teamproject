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
	<form action = "/insertAdmin.mdo" method="get">
<div class="popup_wrapper">
<div class="popup_head"><h1>매니저 등록</h1>
<div class="popup_head_index">
직급을 부여하여 매니저를 등록합니다
</div>
</div>
<div class="popup_title">
이&nbsp;&nbsp;름&nbsp;&nbsp;<input type="text" placeholder="" name="admin_name">
</div>
<div class="popup_index">
담&nbsp;&nbsp;당&nbsp;
<select class="manager_dept" name="admin_position"><option value="0">세탁</option>
	<option value="0" selected>선택</option>
	<option value="배송" >배송</option>
	<option value="웹페이지">웹페이지</option>
	<option value="고객관리">고객관리</option>
	<option value="기타">기타</option>
</select>
</div>

<div class="popup_content">
직&nbsp;&nbsp;급&nbsp;
<select class="manager_level" name="admin_title"><option value="0">사원</option>
	<option value="0" selected>선택</option>
	<option value="대리">대리</option>
	<option value="과장">과장</option>
	<option value="차장">차장</option>
</select>
</div>
<div class="popup_login">
<div class="popup_text1">아이디</div><div class="popup_inputbox"><input type="text" placeholder="" name="admin_id"></div>
</div><div class="popup_login">
<div class="popup_text2">비밀번호</div>&nbsp;<div class="popup_inputbox"><input type="text" placeholder="" ></div>
</div><div class="popup_login">
<div class="popup_text3">비밀번호&nbsp;확인</div>&nbsp;<div class="popup_inputbox"><input type="text" placeholder=""name="admin_passwd"></div>
</div>
<!-- <div class="popup_img"><img src="image/gorae.jpg" width="60px" height="60px"><br><br></div> -->


<div class="end">
			<div class="popup_btn">
				<input type="submit" value="저장">
			</div>
			<div class="popup_btn">
				<a href="#" onclick="self.close();">취소</a>
			</div>
		</div>

</div>
</form>


</body>
</html>