<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%-- 
<%@ page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
--%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>약관관리</title>



<!-- 테이블 필터2 -->
<link href="css/tablefilter.css" rel="stylesheet"/>
<script src="./js/tablefilter.js"></script>



<!-- 체크박스 js -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="./js/checkbox.js"></script>

<link href="css/provision.css" rel="stylesheet" />

<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
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
						<a class="nav-link" href="index.html">
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
								<a class="nav-link" href="#">회원관리</a> <a class="nav-link"
									href="#">블랙회원관리</a> <a class="nav-link" href="#">매니저 관리</a>
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
								<a class="nav-link" href="#">주문/결제</a> <a class="nav-link"
									href="#">견적상품</a>
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
								<a class="nav-link" href="#">매출현황#1</a> <a class="nav-link"
									href="#">매출현황#2</a>
							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#change_id_04" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 상품등록
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="change_id_04"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="#">상품등록#1</a> <a class="nav-link"
									href="#">상품등록#2</a>
							</nav>
						</div>

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
						<div class="collapse" id="change_id_05"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="#">지점관리</a> <a class="nav-link"
									href="#">외주관리</a>
							</nav>
						</div>

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
								<a class="nav-link" href="#">Q&A</a> <a class="nav-link"
									href="#">자주하는 질문</a> <a class="nav-link" href="#">리뷰관리</a>
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
								<a class="nav-link" href="#">배너관리</a> <a class="nav-link"
									href="#">약관관리</a>
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
					<h1 class="mt-4">회원관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
						<li class="breadcrumb-item active">회원관리</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							회원관리 페이지 입니다. <a target="_blank"
								href="https://datatables.net/">아무링크</a> .
						</div>
					</div>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table me-1"></i> 회원상세
							
<form action="">
<div class="flex">
<div><input type='reset'></div>
<div>
<select class="mylist" onchange="myFunction()" class='form-control'>
<option >회원코드</option>
<option>1</option>
<option>2</option>
<option>3</option>
<option>4</option>
<option>5</option>
<option>6</option>
</select> </div>

<div>
<select class="mylist1" onchange="myFunction()" class='form-control'>
<option >아이디</option>
<option>영은</option>
<option>쵸리</option>
<option>용현</option>
<option>승현</option>
<option>예린</option>
<option>가형</option>
</select> </div>

<div>
<select class="mylist2" onchange="myFunction()" class='form-control'>
<option >이름</option>
<option>영은</option>
<option>쵸리</option>
<option>용현</option>
<option>승현</option>
<option>예린</option>
<option>가형</option>
</select> </div>
</div>
 

</form>							
							
							
							
						</div>
						<div class="card-body"> <!-- 디브 좌우 너비 100% -->
			

				<table id="datatablesSimple"	 class="myTable" >		

    
    
    
								<!--  table for 문 -->
								<thead>
									<tr>
										<!-- EL 표현식으로 대체 ${board.seq}-->
									<tr>	
       									<th> <input type="checkbox" name="check" class="allcheck"></th>
										<th>회원코드</th>
										<th>아이디(이메일)</th>
										<th>이름</th>
										<th>핸드폰</th>
										<th>SMS수신</th>
										<th>핸드폰</th>
										<th>SMS</th>
										<th>계정상태</th>
									</tr>
								</thead>
								
 <%--                            나중에 boardList를 받아 for문으로 출력할 예정
				              <c:forEach var="board" items="${boardList}">
									<tfoot>
										<tr>
										    <td><input type="checkbox" name="check"></td>
											<td>${board.seq }</td>
											<td><a href="getBoard.do?seq=${board.seq }">${board.title }</a></td>
											<td>${board.status}</td>
											<td><fmt:formatDate value="${board.regDate }"
													pattern="yyyy-MM-dd" /></td>
											<td>${board.expirationDate}</td>
										</tr>
									</tfoot>
								</c:forEach>	
														 --%>
														 
								<tbody>
										<tr>
										<td><input type="checkbox" name="check"></td>
										<td>6</td>
										<td>disdiddms@naver.com</td>
										<td>윤영은</td>
										<td>36</td>
										<td>010-3172-1263</td>
										<td>true</td>
										<td>false</td>
										<td>신규회원</td>
									</tr>
									<tr>
										<td><input type="checkbox" name="check"></td>
										<td>5</td>
										<td>쵸리@naver.com</td>
										<td>우철</td>
										<td>35</td>
										<td>010-0000-0000</td>
										<td>true</td>
										<td>false</td>
										<td>신규회원</td>
									</tr>
									<tr>
											<td><input type="checkbox" name="check"></td>
										<td>4</td>
										<td>용현@naver.com</td>
										<td>백용현</td>
										<td>33</td>
										<td>010-0000-0000</td>
										<td>true</td>
										<td>true</td>
										<td>신규회원</td>
									</tr>
									<tr>
						           		<td><input type="checkbox" name="check"></td>
										<td>3</td>
										<td>승현@naver.com</td>
										<td>강승현</td>
										<td>30</td>
										<td>010-0000-0000</td>
										<td>true</td>
										<td>true</td>
										<td>신규회원</td>
									</tr>
									<tr>
											<td><input type="checkbox" name="check"></td>
										<td>2</td>
										<td>예린@naver.com</td>
										<td>김예린</td>
										<td>29</td>
										<td>010-0000-0000</td>
										<td>true</td>
										<td>true</td>
										<td>신규회원</td>
									</tr>
									<tr>
									<td><input type="checkbox" name="check"></td>
										<td>1</td>
										<td>가형@naver.com</td>
										<td>이가형</td>
										<td>27</td>
										<td>010-0000-0000</td>
										<td>true</td>
										<td>true</td>
										<td>신규회원</td>
									</tr>
								</table>
					
								
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
