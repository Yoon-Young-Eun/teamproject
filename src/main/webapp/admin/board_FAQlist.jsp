<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Dashboard - SB Admin</title>

<!-- icon 버튼 css -->
<link href="/admin/css/icon.css" rel="stylesheet"/>

<!--  테이블 필터(중요) -->
<link href="/admin/css/filter.css"rel="stylesheet" />
<script src="/admin/js/filter.js"crossorigin="anonymous"></script>

<!-- 체크박스 js -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="/admin/js/checkbox.js"></script>

<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="/admin/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="js/index_navbar_onclick.js"></script>
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-3" href="index.html">Start Bootstrap</a>
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
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#change_id_01" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                회원관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="change_id_01" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="member.jsp">회원관리</a>
                                    <a class="nav-link" href="member_black.jsp">블랙회원관리</a>
                                    <a class="nav-link" href="memberstaff.jsp">매니저관리</a>
                                </nav>
                            </div>
                            
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#change_id_02" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                주문/결제관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="change_id_02" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="order.jsp">주문/결제</a>
                                    <a class="nav-link" href="estimate.jsp">견적상품</a>
                                </nav>
                            </div>
                            
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#change_id_03" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                매출현황
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
<!--                             <div class="collapse" id="change_id_03" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion"> -->
<!--                                 <nav class="sb-sidenav-menu-nested nav"> -->
<!--                                     <a class="nav-link" href="#">매출현황#1</a> -->
<!--                                     <a class="nav-link" href="#">매출현황#2</a> -->
<!--                                 </nav> -->
<!--                             </div> -->
                            
                            <a class="nav-link collapsed" href="item.jsp" data-bs-toggle="collapse" data-bs-target="#change_id_04" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                <span onclick="newPage()">상품등록</span>
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
<!--                             <div class="collapse" id="change_id_04" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion"> -->
<!--                                 <nav class="sb-sidenav-menu-nested nav"> -->
<!--                                     <a class="nav-link" href="#">상품등록#1</a> -->
<!--                                     <a class="nav-link" href="#">상품등록#2</a> -->
<!--                                 </nav> -->
<!--                             </div> -->
                            
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#change_id_05" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                매장관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
<!--                             <div class="collapse" id="change_id_05" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion"> -->
<!--                                 <nav class="sb-sidenav-menu-nested nav"> -->
<!--                                     <a class="nav-link" href="#">지점관리</a> -->
<!--                                     <a class="nav-link" href="#">외주관리</a> -->
<!--                                 </nav> -->
<!--                             </div> -->
                            
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#change_id_06" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                게시판
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="change_id_06" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="board_notice.jsp">공지사항</a>
                                    <a class="nav-link" href="board_event.jsp">이벤트</a>
                                    <a class="nav-link" href="#">리뷰</a>

                                    <a class="nav-link" href="board_Q&A.jsp">QnA</a>
                                    <a class="nav-link" href="board_FAQ.jsp">자주하는 질문</a>

                                </nav>
                            </div>
                            
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#change_id_07" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                채팅관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="change_id_07" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="#">보류</a>
                                    <a class="nav-link" href="#">할지말지</a>
                                    <a class="nav-link" href="#">아직미정</a>
                                </nav>
                            </div>
                            
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#change_id_08" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                사이트관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="change_id_08" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">

                                    <a class="nav-link" href="promo.jsp">쿠폰관리</a>
                                    <a class="nav-link" href="supporbanner.jsp">배너관리</a>
                                    <a class="nav-link" href="supporclause.jsp">약관관리</a>

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
										<a class="nav-link" href="login.html">Login</a> <a
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
						<h1 class="mt-4">상품관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
						<li class="breadcrumb-item active">상품관리</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							상품관리 페이지 입니다. <a target="_blank"
								href="https://datatables.net/">아무링크</a> .
						</div>
					</div>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-chart-area me-1"></i> 여기는 아래 표 또는 상품관리에 대한 세부제목
						</div>
						
						<!--  여기부터 내용물 -->
					

  
     <!--datatablesSimple table 템플릿 / emp-table dataPerPage 필드검색 / tblCustomers pdf 다운   -->
     <div class="flex" > 
      <input type="button" id="btnExport" value="PDF" class="icon_pdf"/><!-- pdf 버튼 -->
	  <button class="icon_excel" onclick="exportToExcel('tblexportData', 'user-data')">Excel</button><!-- excel -->
	 </div>
	  
	 
	  
	  <!--datatablesSimple table 템플릿 / emp-table dataPerPage 필드검색 / tblCustomers pdf 다운   -->  
    <table id="datatablesSimple" class="emp-table dataPerPage tblCustomers tblexportData table" border="5">
       <thead>
			<tr>
				<th width="50" id="check_td"><input type="checkbox"
					name="check" class="allcheck"></th>
				<th col-index=2>번호</th>
				<th col-index=3>분류<select class="table-filter"
					onchange="filter_rows()">
						<option value="all"></option>
				</select></th>
				<th col-index=4>제목</th>
				<th col-index=5>내용</th>
				<th col-index=6>등록일</th>

			</tr>
        </thead>
            <tbody>
								<!-- for문~(c:forEach)  이 for문의 id값은 "admin"으로 정함!-->
								<c:forEach var="FAQ" items="${FAQList}">
									<!--  adminList은 컨트롤러에서 model에 저장한 "adminList" 이름임 -->
									<tr>
										<td id="check_td"><input type="checkbox" name="check"></td>
										<td>${FAQ.board_faq_no}</td>
										<!--for문의 id값.컬럼명으로 값을 불러옴 -->
										<td>${FAQ.board_faq_type}</td>
										<td><a href="readFAQ.mdo?board_faq_no=${FAQ.board_faq_no}">${FAQ.board_faq_title}</a></td>
										<td><a href="readFAQ.mdo?board_faq_no=${FAQ.board_faq_no}">${FAQ.board_faq_content}</a></td>
										<td>${FAQ.board_faq_reg_date}</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
						
<div class="flex">
						<div> <input id="button" type="button" value="등록" onclick="window.location='/admin/board_FAQ_insert.jsp'"/> </div>
<!-- 						<div> <input  id="button" type="button"  value="수정" /> </div> -->
						<div> <input id="delBtn" type="button" value="삭제" /> </div>
						
						</div>

<script type="text/javascript">
	//체크삭제
	$("#delBtn")
			.click(
					function() {
						console.log("1");
						var rowData = new Array();
						var tdArr = new Array();
						var checkbox = $("tbody input[name=check]:checked");

						// 체크된 체크박스 값을 가져온다
						checkbox
								.each(function(i) {
									var tr = checkbox
											.parent()
											.parent()
											.eq(i);
									var td = tr
											.children();
									rowData.push(tr
											.text());
									// td.eq(0)은 체크박스 이므로  td.eq(4)=전화번호 의 값을 가져온다.

									var number = td.eq(
											1).text()
											+ ",";
									number = number
											.substring(
													0,
													number.length - 1); //마지막 , 제거
									// 가져온 값을 배열에 담는다.
									tdArr.push(number);

									$
											.ajax({
												url : "deleteFAQCheck.mdo",
												type : "get",
												traditional : true,
												data : {
													tdArr : tdArr,
												},
												dataType : 'text',
												success : function(data) {
													location.href = "/FAQList.mdo";
													console.log(data);
												}
											});
								});
					});
</script>

						<!-- 내용물 end -->
						<div class="card-footer small text-muted">Updated yesterday
							at 11:59 PM</div>
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
	    <script>
        getUniqueValuesFromColumn()
    </script>
    
    <!-- pdf -->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
    <script src="js/pdf.js"></script>
    
    <!-- excel -->	
    <script src="js/excel.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >	
    	
</body>
</html>
