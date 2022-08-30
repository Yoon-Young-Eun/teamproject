<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/styles.css" rel="stylesheet" />
<link href="css/member_manage.css" rel="stylesheet" />
</head>
<body>

	<div class="member_wrapper">
		<div class="member_popup_head">
			<h2>회원 상세정보</h2>
		</div>

		<div class="member_state">계정상태 : 
		<select>
			<option>정상회원</option>
			<option>휴면회원</option>
			<option>정지회원</option>
			<option>탈퇴회원</option>
			<option>신규회원</option>
		</select>
		
		</div>

		<div class="member_id">ID(e-mail) :</div>
		<div class="member_db_id"></div>

		<div class="member_name">이름 :</div>
		<div class="member_db_name"></div>

		<div class="member_number">휴대전화 :</div>
		<div class="member_db_number"></div>

		<div class="member_reception">수신여부 : &nbsp;
		<label for="email" />e-mail &nbsp;<input type="checkbox" name="reception" id="email">&nbsp;

		<label for="SMS" />문자 &nbsp;<input type="checkbox" name="reception" id="SMS">&nbsp;
		
		<label for="kakao" />카카오톡 &nbsp;<input type="checkbox" name="reception" id="kakao">	
		</div>
		<div class="member_db_reception"></div>

		<div class="member_gender">성별 :</div>
		<div class="member_db_gender"></div>

		<div class="member_birth">생년월일 :</div>
		<div class="member_db_birth"></div>

		<div class="member_address">주소 :</div>
		<div class="member_db_address"></div>

		<div class="member_memo">
			특이사항 :
			<textarea></textarea>
		</div>
		
		<div class="member_order"><a href="#">주문이력</a></div>

		<div class="end">
			<div class="popup_btn">
				<a href="#">저장</a>
			</div>
			<div class="popup_btn">
				<a href="#" onclick="self.close();">취소</a>
			</div>
		</div>

	</div>

</body>
</html>