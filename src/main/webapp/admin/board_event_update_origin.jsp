<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Dashboard - SEMO Admin</title>
<script src="js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="js/fileupload.js"></script>
<script type="text/javascript" src="js/index_navbar_onclick.js"></script>
<!-- <-게시판 css -->
<link rel="stylesheet" href="/admin/css/board.css" />

<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />

<link href="/admin/css/styles.css" rel="stylesheet" />
<link href="/admin/css/main_info_card.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>

<!-- summernote -->
<script src="/admin/js/summernote/summernote-lite.js"></script>
<script src="/admin/js/summernote/lang/summernote-ko-KR.js"></script>

<link rel="stylesheet" href="/admin/css/summernote/summernote-lite.css">

</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-3" href="index.jsp">Start Bootstrap</a>
		<!-- Sidebar Toggle-->
		<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
			id="sidebarToggle" href="#!">
			<i class="fas fa-bars"></i>
		</button>
		<!-- Navbar Search-->
		<form
			class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
			<div class="input-group">
				<input class="form-control" type="text" placeholder="Search for..."
					aria-label="Search for..." aria-describedby="btnNavbarSearch" />
				<button class="btn btn-primary" id="btnNavbarSearch" type="button">
					<i class="fas fa-search"></i>
				</button>
			</div>
		</form>
		<!-- Navbar-->
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
				role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
					class="fas fa-user fa-fw"></i></a>
				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="#!">Settings</a></li>
					<li><a class="dropdown-item" href="#!">Activity Log</a></li>
					<li><hr class="dropdown-divider" /></li>
					<li><a class="dropdown-item" href="#!">Logout</a></li>
				</ul></li>
		</ul>
	</nav>

	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">Core</div>
						<a class="nav-link" href="index.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> 대시보드
						</a>





						<div class="sb-sidenav-menu-heading">관리자 메뉴</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#change_id_01" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 회원관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="change_id_01"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="/admin/member.jsp">회원관리</a> <a
									class="nav-link" href="/admin/member_black.jsp">블랙회원관리</a> <a
									class="nav-link" href="/admin/memberstaff.jsp">매니저관리</a>
							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#change_id_02" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 주문/결제관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="change_id_02"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="/admin/order.jsp">주문/결제</a> <a
									class="nav-link" href="/admin/estimate.jsp">견적상품</a>
							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#change_id_03" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 매출현황
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<!--                             <div class="collapse" id="change_id_03" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion"> -->
						<!--                                 <nav class="sb-sidenav-menu-nested nav"> -->
						<!--                                     <a class="nav-link" href="#">매출현황#1</a> -->
						<!--                                     <a class="nav-link" href="#">매출현황#2</a> -->
						<!--                                 </nav> -->
						<!--                             </div> -->

						<a class="nav-link collapsed" href="/admin/item.jsp"
							data-bs-toggle="collapse" data-bs-target="#change_id_04"
							aria-expanded="false" aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> <span onclick="newPage()">상품등록</span>
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<!--                             <div class="collapse" id="change_id_04" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion"> -->
						<!--                                 <nav class="sb-sidenav-menu-nested nav"> -->
						<!--                                     <a class="nav-link" href="#">상품등록#1</a> -->
						<!--                                     <a class="nav-link" href="#">상품등록#2</a> -->
						<!--                                 </nav> -->
						<!--                             </div> -->

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#change_id_05" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 매장관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<!--                             <div class="collapse" id="change_id_05" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion"> -->
						<!--                                 <nav class="sb-sidenav-menu-nested nav"> -->
						<!--                                     <a class="nav-link" href="#">지점관리</a> -->
						<!--                                     <a class="nav-link" href="#">외주관리</a> -->
						<!--                                 </nav> -->
						<!--                             </div> -->

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#change_id_06" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 게시판
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="change_id_06"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="/getBoardList.mdo">공지사항</a> <a
									class="nav-link" href="/getEventList.mdo">이벤트</a> <a
									class="nav-link" href="#">리뷰</a> <a class="nav-link"
									href="/admin/board_Q&A.jsp">QnA</a> <a class="nav-link"
									href="/admin/board_FAQ.jsp">자주하는 질문</a>

							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#change_id_07" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 채팅관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="change_id_07"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="#">보류</a> <a class="nav-link" href="#">할지말지</a>
								<a class="nav-link" href="#">아직미정</a>
							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#change_id_08" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 사이트관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="change_id_08"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">

								<a class="nav-link" href="/admin/promo.jsp">쿠폰관리</a> <a
									class="nav-link" href="/admin/supporbanner.jsp">배너관리</a> <a
									class="nav-link" href="/admin/supporclause.jsp">약관관리</a>

							</nav>
						</div>





						<div class="sb-sidenav-menu-heading">Interface</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> Layouts
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="layout-static.html">Static
									Navigation</a> <a class="nav-link" href="layout-sidenav-light.html">Light
									Sidenav</a>
							</nav>
						</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapsePages" aria-expanded="false"
							aria-controls="collapsePages">
							<div class="sb-nav-link-icon">
								<i class="fas fa-book-open"></i>
							</div> Pages
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapsePages"
							aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav accordion"
								id="sidenavAccordionPages">
								<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
									data-bs-target="#pagesCollapseAuth" aria-expanded="false"
									aria-controls="pagesCollapseAuth"> Authentication
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<div class="collapse" id="pagesCollapseAuth"
									aria-labelledby="headingOne"
									data-bs-parent="#sidenavAccordionPages">
									<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="login.jsp">Login</a> <a
											class="nav-link" href="register.html">Register</a> <a
											class="nav-link" href="password.html">Forgot Password</a>
									</nav>
								</div>
								<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
									data-bs-target="#pagesCollapseError" aria-expanded="false"
									aria-controls="pagesCollapseError"> Error
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<div class="collapse" id="pagesCollapseError"
									aria-labelledby="headingOne"
									data-bs-parent="#sidenavAccordionPages">
									<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="401.html">401 Page</a> <a
											class="nav-link" href="404.html">404 Page</a> <a
											class="nav-link" href="500.html">500 Page</a>
									</nav>
								</div>
							</nav>
						</div>


						<div class="sb-sidenav-menu-heading">Addons</div>
						<a class="nav-link" href="charts.html">
							<div class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div> Charts
						</a> <a class="nav-link" href="tables-div.html">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> Tables
						</a>
					</div>
				</div>
				<div class="sb-sidenav-footer">
					<div class="small">Logged in as:</div>
					Start Bootstrap
				</div>
			</nav>
		</div>

		<div id="layoutSidenav_content">

			<main>

				<div class="container-fluid px-4">
					<h1 class="mt-4">이벤트</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
						<li class="breadcrumb-item active">이벤트</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							이벤트 페이지 입니다. <a target="_blank" href="https://datatables.net/">아무링크</a>
						</div>
					</div>
					<div class="card mb-4">
						<div class="card-body">이벤트 게시판입니다</div>
					</div>
					<div class="dd">
						<div id="wrap">
							<header>
								<div class="board_title">
									<h1>이벤트</h1>
								</div>

							</header>
							<form action="/updateEvent.mdo" method="post"
								enctype="multipart/form-data">
								<div id="content_wrap">
									<ul class="title_wrap">
										<li><span class="title">제목</span> <input type="text"
											name="board_event_title" value="${event.board_event_title }" /></li>
									</ul>
									<div id="summer" class="writeWrap">
										<textarea id="summernote" class="writeArea"
											name="board_event_content">${event.board_event_content}</textarea>
									</div>
									<div class="configWrap">
										<ul>
											<li><span class="title">배너번호</span>&nbsp; <input
												type="text" value="${event.banner_no}" name="banner_no"
												class="ban" /></li>

											<li style="display: flex; margin-top: 15px;"><span
												class="title">첨부파일</span>&nbsp;&nbsp;
												<div class="filebox">
													<label for="ex_filename">파일 선택</label> <input type="file"
														id="ex_filename" name="uploadImg" class="upload-hidden">
													<input class="upload-name" value="" disabled="disabled">
												</div></li>

											<div class="open_set">
												<li><span class="title">공개설정</span>&nbsp; <input
													type="radio" name="open" id="open_0"> <label
													for="open_0">전체공개</label>&nbsp;&nbsp; <input type="radio"
													name="open" id="open_1"> <label for="open_1">회원만
														공개</label>&nbsp;&nbsp; <input type="radio" name="open" id="open_2">
													<label for="open_2">비공개</label>
											</div>
											</li>
										</ul>
									</div>
									<div class="end">
										<div class="board_btn">
											<input type="submit" value="저장">
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
							</form>
						</div>

					</div>

				</div>
			</main>

			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Your Website 2022</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
								&amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="js/datatables-simple-demo.js"></script>
</body>
</html>