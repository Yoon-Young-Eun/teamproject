<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/admin/ad_header.jsp"%>

<script type="text/javascript" src="/admin/js/fileupload.js"></script>

<!-- 게시판 css -->
<link rel="stylesheet" href="/admin/css/board.css" />
<link rel="stylesheet" href="/admin/css/board_event_write.css" />

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
							<form action="/EventUpload.mdo" method="post" onsubmit="return confirm('새 이벤트를 등록하겠습니까?');"
								enctype="multipart/form-data">
								<div id="content_wrap">
									<ul class="title_wrap">
										<li><span class="title">제목</span> <input type="text"
											name="board_event_title" placeholder="게시글 제목을 입력하세요"
											value="[이벤트] " /></li>
									</ul>
									<div id="summer" class="writeWrap">
										<textarea id="summernote" class="writeArea"
											name="board_event_content"></textarea>
									</div>
									<div class="configWrap">
										<ul>
											<li><span class="title">배너번호</span>&nbsp; <input type="text"
												placeholder="배너번호를 입력해주세요" value=" " name="banner_no"
												class="ban" /></li>
												
											<li style="display: flex; margin-top: 15px;"><span class="title">배너</span>&nbsp;&nbsp;												
												<div class="filebox">
											<label for="ex_filename2">파일 선택</label> <input type="file"
												id="ex_filename2" class="upload-hidden" name="banner"
												accept="image/*" onchange="setThumbnail(event);" /> 
												<input class="upload-name" value="" disabled="disabled">
										</div></li>

										<div id="image_container"></div>
												
											<li style="display: flex; margin-top: 15px;"><span
												class="title">이벤트</span>&nbsp;&nbsp;
												<div class="filebox">
													<label for="ex_filename">파일 선택</label> <input type="file"
														id="ex_filename" name="EventFile" class="upload-hidden" onchange="setThumbnail2(event);" >
													<input class="upload-name" value="" disabled="disabled">
												</div></li>
											
												<div id="image_container2"></div>

										</ul>
									</div>
									<div class="end">
										<div class="board_btn">
											<input type="submit" value="등록">
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
<%@ include file="/admin/ad_header.jsp"%>
