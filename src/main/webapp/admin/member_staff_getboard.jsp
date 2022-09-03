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

	<div class="popup_wrapper">
		<div class="popup_head">
			<h1>매니저 관리</h1>
			<div class="popup_head_index">${adminInfo.admin_name}님 회원정보</div>
		</div>
		<div class="popup_title">
			이&nbsp;&nbsp;름&nbsp;&nbsp;<input type="text" placeholder=""
				value="${adminInfo.admin_name}" disabled>
		</div>
		<div class="popup_index">
			담&nbsp;&nbsp;당&nbsp;<input type="text" placeholder=""
				value="${adminInfo.admin_position}" disabled>
		</div>
		<div class="popup_content">
			직&nbsp;&nbsp;급&nbsp;<input type="text" placeholder=""
				value="${adminInfo.admin_title}" disabled>
		</div>
		<div class="popup_content">
			아&nbsp;이&nbsp;디&nbsp;<input type="text" placeholder=""
				value="${adminInfo.admin_id}" disabled>
		</div>


		<!-- <div class="popup_img"><img src="image/gorae.jpg" width="60px" height="60px"><br><br></div> -->


		<div class="end">
			<div class="popup_btn">
			<a href="editPage.mdo?admin_no=${adminInfo.admin_no}">수정</a>
			</div>
			<div class="popup_btn">
			<a href="deleteStaff.mdo?admin_no=${adminInfo.admin_no}">삭제</a>
			</div>
			<div class="popup_btn">
				<a href="/staffList.mdo" onclick="self.close();">취소</a>
			</div>
		</div>

	</div>
	</div>
<%-- 
	<form id="submit" action="editPage.mdo" method="post">
		<input type="hidden" name="admin_no" value="${adminList.admin_no}">
		<input type="submit" value="수정">
	</form>

	<script type="text/javascript">
	  	function submit(){
	  		document.querySelector(#submit).submit;
	  	}
	</script> --%>




</body>
</html>