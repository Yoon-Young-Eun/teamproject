<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/admin/css/styles.css" rel="stylesheet" />
<link href="/admin/css/member_staff.css" rel="stylesheet" />
</head>



<body>
	<form action = "/updatestaff.mdo" method="get">
	 <%-- 히든으로 no 값을 보냄 다음 update할때 where admin_no =#{admin_no}를 해주기위해,, --%>
		<input type="hidden" name="admin_no" value="${adminInfo.admin_no}">
	<div class="popup_wrapper">
		<div class="popup_head">
			<h1>매니저 관리</h1>
			<div class="popup_head_index">매니저 직급을 수정합니다</div>
		</div>
		<div class="popup_title">
			이&nbsp;&nbsp;름&nbsp;&nbsp;<input type="text" value="${adminInfo.admin_name}" placeholder="" disabled >
		</div>
		<div class="popup_index">
			담&nbsp;&nbsp;당&nbsp; 
			<select  name="admin_position" class="manager_dept">
			    <option value="${adminInfo.admin_position}" selected>${adminInfo.admin_position}</option>
				<option value="세탁">세탁</option>
				<option value="배송" >배송</option>
				<option value="웹페이지">웹페이지</option>
				<option value="고객관리">고객관리</option>
				<option value="기타">기타</option>
			</select>
		</div>

		
			직&nbsp;&nbsp;급&nbsp; 
			<select name="admin_title" class="manager_level">
				<option	value="${adminInfo.admin_title}" selected>${adminInfo.admin_title}</option>
				<option	value="사원">사원</option>
				<option value="대리" >대리</option>
				<option value="과장">과장</option>
				<option value="차장">차장</option>
			</select>
			<br><br>
	
		<div class="popup_login">
			<div class="popup_text1">아이디</div>
			<div class="popup_inputbox">
				<input type="text" placeholder="" value="${adminInfo.admin_id}" disabled>
			</div>
		</div>
		<div class="popup_login">
			<div class="popup_text2">비밀번호</div>
			&nbsp;
			<div class="popup_inputbox">
				<input type="text" placeholder="">
			</div>
		</div>
		<div class="popup_login">
			<div class="popup_text3">비밀번호&nbsp;확인</div>
			&nbsp;
			<div class="popup_inputbox">
				<input type="text" name="admin_passwd" placeholder="">
			</div>
		</div>
		<!-- <div class="popup_img"><img src="image/gorae.jpg" width="60px" height="60px"><br><br></div> -->


		<div class="end">
			<div class="popup_btn">
				<input type="submit" value="저장">
			</div>
			<div class="popup_btn">
				<a href="/staffList.mdo" onclick="self.close();">취소</a>
			</div>
		</div>
	</div>
	</form>





</body>
</html>