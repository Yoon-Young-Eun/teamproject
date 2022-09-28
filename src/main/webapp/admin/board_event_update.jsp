<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<script type="text/javascript" src="/admin/js/fileupload.js"></script>
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
						<li class="breadcrumb-item"><a href="/index.mdo">대시보드</a></li>
						<li class="breadcrumb-item active">이벤트</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">이벤트 게시판입니다</div>
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
							<form action="/updateEvent.mdo" method="post"
								enctype="multipart/form-data" onsubmit="return confirm('수정하시겠습니까?');">
								<input type="hidden" value="${event.board_event_no}" name="board_event_no">
								<div id="content_wrap">
									<ul class="title_wrap">
										<li><span class="title">제목</span> <input type="text"
											name="board_event_title" placeholder="게시글 제목을 입력하세요"
											value="[이벤트] " />${event.board_event_title}</li>
									</ul>
									<div id="summer" class="writeWrap">
										<textarea id="summernote" class="writeArea"
											name="board_event_content">${event.board_event_content}</textarea>
									</div>
									<div class="configWrap">
										<ul>
											<li><span class="title">배너번호</span>&nbsp; <input type="text"
												placeholder="배너번호를 입력해주세요" value=" " name="banner_no"
												class="ban" />${event.banner_no}</li>


											<li style="display: flex; margin-top: 15px;"><span class="title">배너</span>&nbsp;&nbsp;												
												<div class="filebox" style="width:920px">
												
												<label for="ex_filename2">파일 선택</label> <input type="file"
												id="ex_filename2" class="upload-hidden" value="${event.banner_filepath}" name="banner"
												accept="image/*" onchange="setThumbnail2(event);" /> 
												<input class="upload-name" value="" disabled="disabled">
											
										</div></li>

									<div id="image_container2"><img src="${event.board_event_filepath}" style="width:100%"></div>
										
												
											<li style="display: flex; margin-top: 15px;"><span
												class="title">이벤트</span>&nbsp;&nbsp;
												<div class="filebox" style="width:920px">
												
												<label for="ex_filename">파일 선택</label> <input type="file"
														id="ex_filename" value="${event.board_event_filepath}" name="event" class="upload-hidden" onchange="setThumbnail(event);" >
													<input class="upload-name" value="" disabled="disabled">
												
									<div id="image_container"><img src="${event.banner_filepath}" style="width:100%"></div>			
												</div></li>
											
												

										</ul>
									</div>
									<div class="end">
										<div class="board_btn">
											<input type="submit" value="저장">
										</div>
										<div class="board_btn">
											<a href="/getEventList.mdo">목록</a>
										</div>
									</div>

								</div>
							</form>
						</div>


					</div>

				</div>
			</main>

<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>