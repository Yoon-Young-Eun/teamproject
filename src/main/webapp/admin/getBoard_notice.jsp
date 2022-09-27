<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<script type="text/javascript" src="js/fileupload.js"></script>

<!-- <-게시판 css -->
<link rel="stylesheet" href="/admin/css/board.css" />

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
						<li class="breadcrumb-item"><a href="index.mdo">대시보드</a></li>
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

							<div id="content_wrap">
								<ul class="title_wrap">
									<li><span class="title">제목</span> ${board.notice_title }</li>

								</ul>
								<div id="summer" class="writeWrap">
									<div id="summernote" class="writeArea" name="notice_content">${board.notice_content }</div>
								</div>
								<div class="configWrap">
									<ul>
										<li><span class="title">첨부파일</span>&nbsp;&nbsp;
											<div class="filebox">
												<c:choose>
													<c:when
														test="${board.notice_filepath eq 'https://semoproject.s3.ap-northeast-2.amazonaws.com/board/'}">
                                    파일없음
                                 </c:when>
													<c:otherwise>
														<a href="${board.notice_filepath}" target="_blank">파일보기(${filename})</a>
													</c:otherwise>
												</c:choose>
											</div></li>
										
									</ul>
								</div>
								<div class="end">
									<div class="board_btn">
										<a href="/getUpdate.mdo?notice_no=${board.notice_no}">수정</a>
									</div>

									<div class="board_btn">
										<a href="/deleteBoard.mdo?notice_no=${board.notice_no}" onclick="return confirm('삭제하시겠습니까?');">삭제</a>

									</div>
									<div class="board_btn">
										<a href="/getBoardList.mdo">목록</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<hr>
				</div>
			</main>
		</div>

<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>