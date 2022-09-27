<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
						<li class="breadcrumb-item active">공지사항</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">공지사항 게시판입니다</div>
					</div>
					<div class="dd">
						<!-- <div class="card-header">
							<i class="fas fa-chart-area me-1"></i> 여기는 아래 표 또는 게시판에 대한 세부제목
						</div> -->

						<div id="wrap">
							<header>
								<div class="board_title">
									<h1>공지사항</h1>
								</div>

							</header>

							<form action="/BoardUpload.mdo" method="post" onsubmit="return confirm('새 공지사항을 등록하시겠습니까?');"
								enctype="multipart/form-data">

								<div id="content_wrap">
									<ul class="title_wrap">
										<li><span class="title">제목</span> <input type="text"
											name="notice_title" placeholder="게시글 제목을 입력하세요" value="[공지] " /></li>
									</ul>
									<div id="summer" class="writeWrap">
										<textarea id="summernote" class="writeArea"
											name="notice_content"></textarea>
									</div>
									<div class="configWrap">
										<ul>
											<li style="display: flex; align-items: center;"><span
												class="title">첨부파일</span>&nbsp;&nbsp;
												<div class="filebox">
													<label for="ex_filename">파일 선택</label> <input type="file" id="ex_filename" name="NoticeFile" class="upload-hidden">
													<input class="upload-name" value="" disabled="disabled">

												</div></li>


											<li></li>
										</ul>
									</div>
									<div class="end">
										<div class="board_btn">
											<input type="submit" value="등록">
										</div>
										<div class="board_btn">
											<a href="/getBoardList.mdo">목록</a>
										</div>
									</div>

								</div>
							</form>
						</div>
						<hr>
					</div>

				</div>
			</main>

<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>