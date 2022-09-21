<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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



<!-- chart css -->
<link href="/admin/css/chart.css" rel="stylesheet" />

<!-- icon 버튼 css -->
<link href="/admin/css/icon.css" rel="stylesheet" />

<!--  테이블 필터(중요) -->
<link href="/admin/css/filter.css" rel="stylesheet" />
<script src="/admin/js/filter.js" crossorigin="anonymous"></script>

<!-- 체크박스 js -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="/admin/js/checkbox.js"></script>

<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="/admin/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="/admin/js/index_navbar_onclick.js"></script>
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
							<nav
								class="sb-sidenav-men
                                u-nested nav">
								<a class="nav-link" href="/member.mdo">회원관리</a> <a
									class="nav-link" href="/blackmember.mdo">블랙회원관리</a> <a
									class="nav-link" href="/staffList.mdo">매니저관리</a>
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
								<a class="nav-link" href="/adminOrderList.mdo">주문/결제</a> <a
									class="nav-link" href="/estimateList.mdo">견적주문</a> <a
									class="nav-link" href="/memberorderList.mdo">개별조회</a>
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
						<div class="collapse" id="change_id_03"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="/salesStoreList.mdo">지점매출</a> <a
									class="nav-link" href="/salesProductList.mdo">상품매출</a>
							</nav>
						</div>

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

						<a class="nav-link collapsed" href="/admin/store.jsp"
							data-bs-toggle="collapse" data-bs-target="#change_id_05"
							aria-expanded="false" aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> <span onclick="newPage2()">매장관리</span>
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
								<a class="nav-link" href="/admin/board_notice.jsp">공지사항</a> <a
									class="nav-link" href="/admin/board_event.jsp">이벤트</a> <a
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
					<h1 class="mt-4">매출현황</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
						<li class="breadcrumb-item active">지점별 매출현황</li>
					</ol>
					<div class="card mb-4" style="width: 100%; overflow-x: auto;">
						<div class="card-body">
							지점별 매출현황 페이지 입니다. <a target="_blank"
								href="https://datatables.net/">아무링크</a>

						</div>

						<div class="card mb-4">
							<div class="card-header">
								<i class="fas fa-chart-area me-1"></i> 여기는 지점별 매출현황 현황에 대한 차트와
								표데이터
							</div>
							
							<!--Chart -->
							<div class="chartparent">
								<div class="chart">
									<!-- <div id="chart_div" style="width: 300px; height: 300px;"></div> -->
									<div id="chart_div" style="width: 950px; height: 400px;"></div>
									<form id="barChart">
										<div class="chart_flex">
											<div>
												<input type="date" name="startDate" />
											</div>
											<div>
												<input type="date" name="endDate" />
											</div>
											<div>
												<input type="button" value="검색" onClick="getGraph()" />
											</div>
											<div>
												<input type="reset" value="초기화" onChange="getGraph()" />
											</div>
										</div>
									</form>
								</div>
								<div class="chart">
									<div id="donutchart" style="width: 650px; height: 400px;"></div>
									<select id="doughnutChart" name="chartDate"
										onChange="drawChart()">
										<option>검색</option>
										<option value="today">오늘</option>
										<option value="thisweek">최근일주일</option>
										<option value="thismonth">최근한달</option>
										<option value="thisyear">최근일년</option>
									</select>
								</div>
							</div>

							<!--  여기부터 내용물 -->

							<!--datatablesSimple table 템플릿 / emp-table dataPerPage 필드검색 / tblCustomers pdf 다운   -->
							<div class="flex">
								<input type="button" id="btnExport" value="PDF" class="icon_pdf" />
								<!-- pdf 버튼 -->
								<button class="icon_excel"
									onclick="exportToExcel('tblexportData', 'user-data')">Excel</button>
								<!-- excel -->
							</div>



							<div class="b_button">
								<!-- 테이블 행 필터 -->
								<form name="selectname" action="salesStoreList.mdo" method="get">
									<input type="hidden" name="searchKeyword1"
										value="${search.searchKeyword1}" /> <input type="hidden"
										name="searchKeyword2" value="${search.searchKeyword2}" /> <input
										type="hidden" name="searchKeyword3"
										value="${search.searchKeyword3}" /> <input type="hidden"
										name="startDate" value="${search.startDate}" /> <input
										type="hidden" name="endDate" value="${search.endDate}" />
									<div col-index=8>
										<select name="selectPage" onchange="this.form.submit()">
											<option value="">선택</option>
											<option value="5">5</option>
											<option value="10">10</option>
											<option value="20">20</option>
											<option value="50">50</option>
										</select> entries per page
									</div>
								</form>

								<!-- 검색기능 -->
								<div>
									<form action="salesStoreList.mdo" method="get">
										<div class="icon_flex">
											<div>
												검색 조건 : <input type="date" name="startDate" />
											</div>
											<div>
												<input type="date" name="endDate" />
											</div>
											<div>
												<select name="searchKeyword1">
													<option style="justify-content: center" value="">구분</option>
													<option value="일반세탁">일반세탁</option>
													<option value="특수세탁">특수세탁</option>
												</select>
											</div>
											<div>
												<select name="searchKeyword2">
													<option style="justify-content: center" value="">매장명</option>
													<c:forEach items="${search2}" var="search2">
														<div>
															<option value="${search2.order_store_name}">${search2.order_store_name}</option>
														</div>
													</c:forEach>
												</select>
											</div>
											<div>
												<select name="searchKeyword3">
													<option style="justify-content: center" value="">지역</option>
													<c:forEach items="${search3}" var="search3">
														<div>
															<option value="${search3.order_address1}">${search3.order_address1}</option>
														</div>
													</c:forEach>
												</select>
											</div>

											<div>
												<input type="submit" id="se_submit" value="검색"  />
											</div>

										</div>
									</form>
								</div>

							</div>

							<!--datatablesSimple table 템플릿 / emp-table dataPerPage 필드검색 / tblCustomers pdf 다운   -->

							<table id=""
								class="emp-table dataPerPage tblCustomers tblexportData table"
								border="5">
								<thead>
									<tr>
										<th>주문일자</th>
										<th>구분</th>
										<th>매장명</th>
										<th>지역</th>
										<th>결제방식</th>
										<th>결제금액</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="sales" items="${storeSalesList}">
										<tr>
											<td>${sales.order_date}</td>
											<td>${sales.order_type}</a></td>
											<td>${sales.order_store_name}</td>
											<td>${sales.order_address1}</td>
											<td>${sales.order_price_method}</td>
											<td>${sales.order_price}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>


							<!-- pagaing 처리 -->
							<div>
								<c:if test="${count > 0}">
									<div class="icon_flex">
										<div>
											<c:if test="${startPage > pageBlock}">
												<a
													href="salesStoreList.mdo?pageNum=${startPage-pageBlock}&endDate=${search.endDate}&startDate=${search.startDate}&selectPage=${search.selectPage}&searchKeyword1=${search.searchKeyword1}&searchKeyword2=${search.searchKeyword2}&searchKeyword3=${search.searchKeyword3}"><div
														class="pageging2">이전</div></a>
											</c:if>
										</div>
										<div>
											<div class="icon_flex">
												<c:forEach var="i" begin="${startPage}" end="${endPage}">
													<a
														href="salesStoreList.mdo?pageNum=${i}&endDate=${search.endDate}&startDate=${search.startDate}&selectPage=${search.selectPage}&searchKeyword1=${search.searchKeyword1}&searchKeyword2=${search.searchKeyword2}&searchKeyword3=${search.searchKeyword3}"><div
															class="pageging">${i}</div></a>
												</c:forEach>
											</div>
										</div>
										<div>
											<c:if test="${endPage < pageCount}">
												<a
													href="salesStoreList.mdo?pageNum=${startPage + pageBlock}&endDate=${search.endDate}&startDate=${search.startDate}&selectPage=${search.selectPage}&searchKeyword1=${search.searchKeyword1}&searchKeyword2=${search.searchKeyword2}&searchKeyword3=${search.searchKeyword3}"><div
														class="pageging2">다음</div></a>
											</c:if>
										</div>
									</div>
								</c:if>
							</div>
							<!-- 페이징 종료 -->


						</div>



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
	<script src="/admin/js/scripts.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="/admin/js/datatables-simple-demo.js"></script>
	<script>
		getUniqueValuesFromColumn()
	</script>






	<!-- 구글차트 -->
	<script type="text/javascript"
		src="https://www.gstatic.com/charts/loader.js"></script>

	<script>
		google.charts.load('current', {
			packages : [ 'corechart', 'bar' ]
		});
		google.charts.setOnLoadCallback(getGraph);
		google.charts.load('current', {
			'packages' : [ 'corechart' ]
		});
		google.charts.setOnLoadCallback(drawChart); // 도넛
		/* 	google.charts.setOnLoadCallback(getGraph);  // bar차트  */

		/* Bar */

		function getGraph() {
			console.log("getGraph");
			let color = [ "#3e95cd", "#8e5ea2", "#3cba9f", "#e8c3b9",
					"#c45850", "yellow", "silver" ]
			let showgraph = [ [ 'corechart', 'bar' ] ]

			$
					.ajax({
						url : "/getBarChart.mdo",
						type : "get",
						data : $("#barChart").serialize(),
						dataType : "json",
						success : function(data) {
							console.log(data);
 							if(data == null){
 								
 							}
							for (let i = 0; i < data.length; i++) {
								let price = Number(data[i].order_price)
								let store = data[i].order_store_name
								showgraph.push([ store,	price ])
								console.log(data[i].order_store_name);
								console.log(price);
							}
							console.log(showgraph);

							var data = google.visualization
									.arrayToDataTable(showgraph);

							var options = {
								title : 'Population of Largest U.S. Cities',
								chartArea : {
									width : '50%'
								},
								hAxis : {
									title : 'Total Population',
									minValue : 0
								},
								vAxis : {
									title : 'City'
								}
							};

							var chart = new google.visualization.BarChart(
									document.getElementById('chart_div'));

							chart.draw(data, options);

						}, //success:function
						error : function() {
							alert("실패");
						}
					});//ajax	
		}//get그래프

		/* 도넛 */
		function drawChart() {
			console.log('drawChart() 함수');
			let category = [ [ 'Task', 'Hours per Day' ] ]
			$.ajax({

				url : "/getDoughnutChart.mdo",
				type : "get",
				data : $("#doughnutChart").serialize(),
				dataType : "json",
				success : function(data) {
					console.log("success" + data);

					for (let i = 0; i < data.length; i++) {
						let num = Number(data[i].order_mt_price);
						category.push([ data[i].order_mt_category1, num ]);
					}
					console.log(category);

					var data = google.visualization.arrayToDataTable(category);

					var options = {
						title : 'My Daily Activities',
						pieHole : 0.4,
					};

					var chart = new google.visualization.PieChart(document
							.getElementById('donutchart'));
					chart.draw(data, options);

				}
			});
		}
	</script>










	<!-- pdf -->
	<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
	<script src="/admin/js/pdf.js"></script>

	<!-- excel -->
	<script src="/admin/js/excel.js"></script>
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

</body>
</html>
