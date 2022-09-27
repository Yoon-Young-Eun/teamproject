<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<script type="text/javascript" src="/admin/js/fileupload.js"></script>

<!-- 게시판 css -->
<link rel="stylesheet" href="/admin/css/getBoard_event.css" />

<!-- summernote -->
<script src="js/summernote/summernote-lite.js"></script>
<script src="js/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="css/summernote/summernote-lite.css"> -->

</head>
<body class="sb-nav-fixed">

<%@ include file="/admin/ad_menu.jsp"%>

		<div id="layoutSidenav_content">

			<main>

				<div class="container-fluid px-4">
					<h1 class="mt-4">이벤트</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
						<li class="breadcrumb-item active">이벤트</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">이벤트 페이지 입니다.</div>
					</div>
					<div class="dd">
						<!-- <div class="card-header">
							<i class="fas fa-chart-area me-1"></i> 여기는 아래 표 또는 게시판에 대한 세부제목
						</div> -->
						<div id="wrap">
							<header>
								<div class="board_title">
									<h1>이벤트</h1>
								</div>

							</header>

							<div id="content_wrap">
								<ul class="title_wrap">
									<li><span class="title">제목</span>${event.board_event_title }</li>
								</ul>
								<ul class="title_wrap">
								<li class="flex"><span class="title">내용</span>${event.board_event_content}<li>
								</ul>
								<ul>
								<li class="banner_img"><img class="banner_img_img" src="${event.banner_filepath}"></li>
								</ul>
								
								<div><ul class="event_img">
								<li><img class="event_img_img" src="${event.board_event_filepath}"></li>
								</ul></div>
								
								<div class="configWrap">
									<ul>
									
									<li style="display: flex; margin-top: 5px;">
											<span class="title">첨부파일</span>&nbsp;&nbsp;
											<div class="filebox">
												<c:choose>
													<c:when test="${event.banner_filepath eq 'https://semoproject.s3.ap-northeast-2.amazonaws.com/event/'}">
					                                    파일없음
					                                 </c:when>
													<c:otherwise>
														배너(<a href="${event.banner_filepath}" target="_blank">${filename}</a>)
													</c:otherwise>
												</c:choose>
											</div></li>
									
										<li style="display: flex; margin-top: 5px;"><span class="title">첨부파일</span>&nbsp;&nbsp;
											<div class="filebox">
												<c:choose>
													<c:when test="${event.board_event_filepath eq 'https://semoproject.s3.ap-northeast-2.amazonaws.com/event/'}">
					                                    파일없음
					                                 </c:when>
													<c:otherwise>
														이벤트(<a href="${event.board_event_filepath}" target="_blank">${filename}</a>)
													</c:otherwise>
												</c:choose>
											</div></li>

									</ul>
								</div>
								<div class="end">
									<div class="board_btn">
										<a
											href="/getUpdateEvent.mdo?board_event_no=${event.board_event_no}">수정</a>
									</div>
									<div class="board_btn">
										<a
											href="/deleteEvent.mdo?board_event_no=${event.board_event_no}">삭제</a>
									</div>
									<div class="board_btn">
										<a href="/getEventList.mdo">목록</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>

<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>