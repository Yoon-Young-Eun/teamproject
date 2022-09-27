<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<link href="/admin/css/item_product.css" rel="stylesheet" />
<link href="/admin/css/member_manage.css" rel="stylesheet" />

</head>
<body class="sb-nav-fixed">

<%@ include file="/admin/ad_menu.jsp"%>

		<div id="layoutSidenav_content">
			<main>

				<div class="container-fluid px-4">
					<h1 class="mt-4">일반회원정보</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.mdo">대시보드</a></li>
						<li class="breadcrumb-item active">회원상세정보</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">회원의 상세 정보를 조회합니다.</div>
					</div>
					
					<!-- 상세정보 -->
				
<div>					
<form action="/memberUpdate.mdo" method="post" class="form" onsubmit="return confirm('저장 하시겠습니까? 계정상태 변경시 안내 문자가 회원에게 발송됩니다(sms허용한함).');">			
	<input type="hidden" name="customer_no" value="${user.customer_no}"/>
	<input type="hidden" name="customer_phone" value="${user.customer_phone}"/>
	<div class="member_wrapper">
		<div class="member_popup_head">
			<h2>회원 상세정보</h2>
		</div>
		
		<div class="member_state">
			계정상태(${user.customer_status}) : <select name="customer_status">
				<option value="" >상태수정</option>
	            <option value="블랙회원">블랙회원</option>
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
				<input type="submit" value="저장" style="margin: -4px;"/>
			</div>
			<div class="popup_btn">
				<a href="/member.mdo" onclick="self.close();">취소</a>
			</div>
		</div>
	</div>

</form>
</div>

</main>

<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>