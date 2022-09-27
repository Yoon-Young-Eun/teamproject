<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<link href="/admin/css/member_staff.css" rel="stylesheet" />

</head>
<body class="sb-nav-fixed">

<%@ include file="/admin/ad_menu.jsp"%>

		<div id="layoutSidenav_content">
			<main>

				<div class="container-fluid px-4">
					<h1 class="mt-4">매니저등록</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.mdo">대시보드</a></li>
						<li class="breadcrumb-item active">매니저등록화면</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">신규 매니저 계정을 생성합니다.</div>
					</div>
					
					<!-- 상세정보 -->


<div class="form">
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

		<div class="end">
			<div class="popup_btn">
			<a href="editPage.mdo?admin_no=${adminInfo.admin_no}">수정</a>
			</div>
			<div class="popup_btn">
			<a href="deleteStaff.mdo?admin_no=${adminInfo.admin_no}" onclick="return confirm('매니저 정보를 삭제하시겠습니까?');">삭제</a>
			</div>
			<div class="popup_btn">
				<a href="/staffList.mdo" onclick="self.close();">취소</a>
			</div>
		</div>

	</div>
	</div>
</main>

<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>