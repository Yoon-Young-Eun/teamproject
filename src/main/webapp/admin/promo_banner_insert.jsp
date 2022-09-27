<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<link href="/admin/css/promo_banner_insert.css" rel="stylesheet" />
<script type="text/javascript" src="/admin/js/fileupload.js"></script>

</head>
<body class="sb-nav-fixed">

<%@ include file="/admin/ad_menu.jsp"%>

		<div id="layoutSidenav_content_wrapper">
			<main>

				<div class="container-fluid px-4">
					<h1 class="mt-4">배너관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
						<li class="breadcrumb-item active">배너관리</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							배너관리 페이지 입니다. <a target="_blank" href="https://datatables.net/">아무링크</a>
							.
						</div>
					</div>



					<div class="wrapper">

						<!---------- 본문내용 시작 ---------->

						<div class="wrapper">
							<div class="write_wrapper">
							
							<form action="/bannerUpload.mdo" method="post" enctype="multipart/form-data"  onsubmit="return confirm('신규 배너를 등록하시겠습니까?');">
							
								<div class="write_form">
									<div class="write_title write_content">
										<h1>배너 등록</h1>
									</div>
									<div class="write_head">
										<div class="write_title_default">제목</div>
										<div class="write_content_default">
											<input type="text" name="banner_title" class="write_input">
										</div>
									</div>
									<div class="write_content">
										<div class="write_title_default">내용</div>
										<div class="write_content_default">
											<textarea class="write_textarea" name="banner_content"></textarea>
										</div>
									</div>
									<div class="write_body">

										<div class="filebox">
										
											<label for="ex_filename">파일 선택</label> <input type="file"
												id="ex_filename" class="upload-hidden" name="banner"
												accept="image/*" onchange="setThumbnail(event);" /> <input
												class="upload-name" value="" disabled="disabled">
										</div>

										<div id="image_container"></div>

									</div>
									<div class="write_end">
									<div class="write_row">
										<div class="write_title_default">공개여부</div>
										<div class="write_content_default radio_row">
										<select name="banner_usable">
											<option value="TRUE">공개</option>
											<option value="FALSE">비공개</option>
										</select>
										</div>
										</div>
									</div>
									<div class="end">
										<div class="board_btn">
											<input type="submit" value="등록">
										</div>
										<div class="board_btn">
											<a href="/BannerList.mdo">취소</a>
										</div>
									</div>
									</div>
									</form>
								</div>
							</div>
						</div>


						<!---------- 본문내용 끝 ---------->

					</div>
			</main>

<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>