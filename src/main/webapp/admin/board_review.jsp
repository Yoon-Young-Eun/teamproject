<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<link href="/admin/css/board_review.css" rel="stylesheet" />

</head>
<body class="sb-nav-fixed">

<%@ include file="/admin/ad_menu.jsp"%>

		<div id="layoutSidenav_content">
			<main>

				<div class="container-fluid px-4">
					<h1 class="mt-4">매장 관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
						<li class="breadcrumb-item active">매장 등록</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">새로운 매장을 등록합니다.</div>
					</div>

<!-- ---------- 본문내용 시작 ---------- -->

<div class="popup_wrapper">
<form action="/updateReviewBoard.mdo" method="GET" onsubmit="return confirm('해당 리뷰를 활성화 하시겠습니까?');">
<input type="hidden" name="board_review_no" value="${ReviewInfo.board_review_no}" />
<div class="popup_title"><h2>리뷰</h2>
</div>
<div class="customer_question_wrapper">
<div class="customer_question">
<div class="customer_question_title">제목</div>
<div class="customer_question_title_body">${ReviewInfo.board_review_title}</div>
</div>
<div class="customer_question">
<div class="customer_question_title_row">작성자</div>
<div class="customer_question_name_body">${ReviewInfo.board_review_name}</div>
<!-- </div> -->
<!-- <div class="customer_question"> -->
<div class="customer_question_title_row">작성일</div>
<div class="customer_question_date_body">${ReviewInfo.board_review_reg_date}</div>
</div>
<div class="customer_question_order">
<div class="customer_question_title">주문번호</div>
<div class="customer_question_title_body">${ReviewInfo.order_no}</div>
</div>
<div class="customer_question">
<div class="customer_question_title">평가</div>
<div class="customer_question_title_body">
<c:choose>
	<c:when test="${ReviewInfo.board_review_rating eq 5}">
★ ★ ★ ★ ★
    </c:when>
	<c:when test="${ReviewInfo.board_review_rating eq 4}">
★ ★ ★ ★ ☆
    </c:when>
    <c:when test="${ReviewInfo.board_review_rating eq 3}">
★ ★ ★ ☆ ☆
    </c:when>
    <c:when test="${ReviewInfo.board_review_rating eq 2}">
★ ★ ☆ ☆ ☆
    </c:when>
	<c:otherwise>
		★ ☆ ☆ ☆ ☆
	</c:otherwise>
</c:choose>
</div>
</div>
<div class="customer_question">
<div class="customer_question_title">내용</div>
<div class="customer_question_content_body">
${ReviewInfo.board_review_content}
</div>
</div>


<div class="end">
<div class="popup_btn">
	<c:choose>
	<c:when test="${ReviewInfo.board_review_status eq 1}">
<input type="hidden" name="board_review_status" value="0">
<input class="submit_btn" type="submit" value="리뷰 가리기">
    </c:when>
	<c:otherwise>
<input type="hidden" name="board_review_status" value="1">
<input class="submit_btn" type="submit" value="리뷰 보이기">
	</c:otherwise>
</c:choose>
</div>
<div class="popup_btn">
	<a href="/ReviewBoardList.mdo">목록</a>
</div>
<div class="popup_btn">
	<a href="deleteReviewBoard.mdo?board_review_no=${ReviewInfo.board_review_no}" onclick="return confirm('해당 리뷰를 삭제하시겠습니까?');">삭제</a>
	</div>
</div>





</div>
</form>
</div>

<!-- ---------- 본문내용 끝 ---------- -->

	</div>
</main>

<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>