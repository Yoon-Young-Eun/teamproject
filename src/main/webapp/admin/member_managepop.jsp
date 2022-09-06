<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/admin/css/styles.css" rel="stylesheet" />
<link href="/admin/css/member_manage.css" rel="stylesheet" />
</head>
<body>

	<div class="member_wrapper">
		<div class="member_popup_head">
			<h2>회원 상세정보</h2>
		</div>

		<div class="member_state">
			계정상태 : <select>
				<option name="customer_status" value="정상회원">정상회원</option>
				<option name="customer_status" value="블랙회원">블랙회원</option>
				<option name="customer_status" value="탈퇴회원">탈퇴회원</option>
				<option name="customer_status" value="정상회원">신규회원</option>
			</select>

		</div>

		<div class="member_id">ID(e-mail) : ${user.customer_id}</div>
		<div class="member_db_id"></div>

		<div class="member_name">이름 : ${user.customer_name}</div>
		<div class="member_db_name"></div>

		<div class="member_number">휴대전화 : ${user.customer_phone}</div>
		<div class="member_db_number"></div>

		<div class="member_reception">수신여부 : ${user.customer_sms_permit} &nbsp;</div>
		<!-- 		<label for="email" />e-mail &nbsp;<input type="checkbox" name="reception" id="email">&nbsp;
		<label for="SMS" />문자 &nbsp;<input type="checkbox" name="reception" id="SMS">&nbsp;
		<label for="kakao" />카카오톡 &nbsp;<input type="checkbox" name="reception" id="kakao">	 -->
		<div class="member_db_reception"></div>

		<div class="member_birth">생년월일 : ${user.customer_birth}</div>
		<div class="member_db_birth"></div>

		<div class="member_address1">주소1 : ${user.customer_address1}</div>
		<div class="member_db_address1"></div>
		
		<div class="member_address2">주소2 : ${user.customer_address2}</div>
		<div class="member_db_address2"></div>

		<!-- 		<div class="member_memo">
			특이사항 :
			<textarea></textarea>
		</div> -->

		<div class="member_order">
			<a href="/memberorderList.mdo?customer_no=${user.customer_no}">주문이력</a>
		</div>

		<div class="end">
			<div class="popup_btn">
				<a href="#">저장</a>
			</div>
			<div class="popup_btn">
				<a href="/member.mdo" onclick="self.close();">취소</a>
			</div>
		</div>

	</div>

</body>
</html>