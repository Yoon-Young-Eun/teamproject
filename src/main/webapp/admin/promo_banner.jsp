<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<link href="/admin/css/promo_banner.css" rel="stylesheet" />
<script type="text/javascript" src="/admin/js/fileupload.js"></script>

</head>
<body class="sb-nav-fixed">

<%@ include file="/admin/ad_menu.jsp"%>

		<div id="layoutSidenav_content_wrapper">
			<main>

				<div class="container-fluid px-4">
					<h1 class="mt-4">배너 조회</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="/index.mdo">대시보드</a></li>
						<li class="breadcrumb-item active">배너 조회</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							배너 조회 페이지 입니다.
						</div>
					</div>

					<div class="wrapper">

						<!---------- 본문내용 시작 ---------->

						<div class="wrapper">
							<div class="write_wrapper">
							
								<div class="write_form">
									<div class="write_title write_content">
										<h1>배너</h1>
									</div>
									<div class="write_head">
										<div class="write_title_default">제목</div>
										<div class="write_content_default">
											${BannerInfo.banner_title}
										</div>
									</div>
									<div class="write_content">
										<div class="write_title_default">내용</div>
										<div class="write_content_default">
											${BannerInfo.banner_content}
										</div>
									</div>
									<div class="write_body">

										<div id="image_container"><img src="${BannerInfo.banner_filepath}" width="915px", height="268px"><br>
										<span>${filename}</span></div>

									</div>
									<div class="write_end">
									<div class="write_row">
										<div class="write_title_default">공개여부</div>
											<div class="write_content_default">
										${result}
</div>
										</div>
										<div class="write_row">
										<div class="write_title_default">등록일</div>
										<div class="write_content_default">${BannerInfo.banner_reg_date}</div>
										</div>
									</div>
									<div class="end">
									<div class="popup_btn">
										<a href="/BannerList.mdo">목록</a>
									</div>
									<div class="popup_btn">
										<a href="updateBannerPage.mdo?banner_no=${BannerInfo.banner_no}">수정</a>
									</div>
									<div class="popup_btn">
										<a href="deleteBanner.mdo?banner_no=${BannerInfo.banner_no}" onclick="return confirm('해당 배너를 삭제하시겠습니까?');">삭제</a>
									</div>
								</div>
									</div>
								</div>
							</div>
						</div>

						<!---------- 본문내용 끝 ---------->

					</div>
			</main>

<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>