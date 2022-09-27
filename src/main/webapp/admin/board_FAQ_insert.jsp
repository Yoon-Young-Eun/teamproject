<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/admin/ad_header.jsp"%>
<script type="text/javascript" src="js/fileupload.js"></script>
<!-- 게시판 css -->
<link rel="stylesheet" href="/admin/css/board.css" />

<!-- summernote -->
<script src="/admin/js/summernote/summernote-lite.js"></script>
<script src="/admin/js/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="/admin/css/summernote/summernote-lite.css">

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
						<!-- <div class="card-header">
							<i class="fas fa-chart-area me-1"></i> 여기는 아래 표 또는 게시판에 대한 세부제목
						</div> -->

						<div id="wrap">
							<header>
								<div class="board_title">
									<h1>자주묻는질문</h1>
								</div>

							</header>
							
							<form action="/insertFAQ.mdo" method="GET"  onsubmit="return confirm('새 FAQ를 등록하겠습니까?');">	
							
							<div id="content_wrap">
								<ul class="title_wrap">
									 <li><span class="title">분류</span>
										<div class="board_select">
											<select class="select" name="board_faq_type">
												<option selected disabled>분류</option>
												<option value="세탁">세탁관리</option>
												<option value="주문">주문관리</option>
												<option value="배송">배송관리</option>
												<option value="결제">결제관리</option>
											</select>
										</div></li>
									
									<li><span class="title">제목</span> <input type="text"
										name="board_faq_title" placeholder="게시글 제목을 입력하세요" /></li>
								</ul>
								<div id="summer" class="writeWrap">
									<textarea id="summernote" class="writeArea" name="board_faq_content"></textarea>
								</div>
								<div class="end">
									<div class="board_btn">
										<input type="submit" value="등록">
									</div>
									<div class="board_btn">
										<a href="/FAQList.mdo">취소</a>
									</div>
									<!-- <a href="#">저장</a>&nbsp;&nbsp;<a href="#">취소</a> -->
								</div>

							</div>
							</form>
						</div>

					</div>

				</div>
			</main>

<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>
