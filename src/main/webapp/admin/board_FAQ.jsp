<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<!-- 게시판 css -->
<link rel="stylesheet" href="/admin/css/board_FAQ.css" />

<!-- summernote -->
<script src="js/summernote/summernote-lite.js"></script>
<script src="js/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="css/summernote/summernote-lite.css">

</head>
<body class="sb-nav-fixed">

<%@ include file="/admin/ad_menu.jsp"%>

		<div id="layoutSidenav_content">
			<main>

				<div class="container-fluid px-4">
					<h1 class="mt-4">게시판</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
						<li class="breadcrumb-item active">자주묻는질문</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">자주묻는질문 게시판입니다</div>
					</div>
					<div class="dd">

						<div id="wrap">
							<header>
								<div class="board_title">
									<h1>자주묻는질문</h1>
								</div>

							</header>
							
							<div id="content_wrap">
								<ul class="title_wrap">
									 <li><span class="title">분류</span>
										<div class="board_select">
											${FAQInfo.board_faq_type}
										</div></li>
									<li><span class="title">제목</span>
									${FAQInfo.board_faq_title}
									</li>
								</ul>
								<div id="summer" class="writeWrap">
									${FAQInfo.board_faq_content}
								</div>
								
<div class="end">
	<div class="board_btn">
		<a href="/FAQList.mdo">목록</a>
	</div>
	<div class="board_btn">
		<a href="updateFAQPage.mdo?board_faq_no=${FAQInfo.board_faq_no}">수정</a>
	</div>
	<div class="board_btn">
		<a href="deleteFAQ.mdo?board_faq_no=${FAQInfo.board_faq_no}" onclick="return confirm('삭제하시겠습니까?');">삭제</a>
	</div>
</div>

				</div>
			</div>

		</div>

	</div>
</main>

<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>