<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>Dashboard - SEMO Admin</title>
<link href="/admin/css/store_store_insert.css" rel="stylesheet" />
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
		<a class="navbar-brand ps-3" href="index_dashboard.jsp">Start
			Bootstrap</a>
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
								<a class="nav-link" href="member.jsp">회원관리</a> <a
									class="nav-link" href="member_black.jsp">블랙회원관리</a> <a
									class="nav-link" href="memberstaff.jsp">매니저관리</a>
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
								<a class="nav-link" href="order.jsp">주문/결제</a> <a
									class="nav-link" href="#">견적상품</a>
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

						<a class="nav-link collapsed" href="item.jsp"
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
								<a class="nav-link" href="board_notice.jsp">공지사항</a> <a
									class="nav-link" href="board_event.jsp">이벤트</a> <a
									class="nav-link" href="#">리뷰</a> <a class="nav-link"
									href="board_Q&A.jsp">QnA</a> <a class="nav-link"
									href="board_FAQ.jsp">자주하는 질문</a>

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

								<a class="nav-link" href="promo.jsp">쿠폰관리</a> <a
									class="nav-link" href="supporbanner.jsp">배너관리</a> <a
									class="nav-link" href="supporclause.jsp">약관관리</a>

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
				<!--                     <div class="sb-sidenav-footer"> -->
				<!--                         <div class="small">Logged in as:</div> -->
				<!--                         Start Bootstrap -->
				<!--                     </div> -->
			</nav>
		</div>

		<div id="layoutSidenav_content">
			<main>

				<div class="container-fluid px-4">
					<h1 class="mt-4">매장 관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
						<li class="breadcrumb-item active">매장 등록</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">새로운 매장을 등록합니다.</div>
					</div>

<!-- ---------- 본문내용 시작 ---------- -->

<div class="popup_wrapper">

<form action="/updateStore.mdo" method="get" onsubmit="return confirm('매장 정보를 저장하시겠습니까?');">
							
<input type="hidden" name="store_code" value="${StoreInfo.store_code}">

<div class="popup_head"><h1>매장</h1>

</div>
<div class="popup_title">
<div class="popup_text">매장명</div><div class="popup_inputbox"><input type="text" name="store_name" value="${StoreInfo.store_name}"></div>
</div>
<div class="popup_type">
<div class="popup_text">구분</div>
<div class="popup_select">
<select class="store_type" name="store_type">
<c:choose> 
	<c:when test="${StoreInfo.store_type eq '직영'}">
		<option value="직영">직영</option>
		<option value="와주">외주</option>
	</c:when>  
	<c:otherwise>
		<option value="외주">외주</option>
		<option value="직영">직영</option>
	</c:otherwise> 
</c:choose>
</select>
</div>
</div><!-- /popup_content -->
<div class="popup_status">
<div class="popup_text">매장상태</div><div class="popup_select">
<select class="manager_level" name="store_status">
<c:choose> 
	<c:when test="${StoreInfo.store_status eq '운영중'}">
		<option value="운영중">운영중</option>
		<option value="휴점">휴점</option>
		<option value="폐점">폐점</option>
	</c:when>  
	<c:when test="${StoreInfo.store_status eq '휴점'}">
		<option value="휴점">휴점</option>
		<option value="운영중">운영중</option>
		<option value="폐점">폐점</option>
	</c:when>  
	<c:otherwise>
		<option value="폐점">폐점</option>
		<option value="운영중">운영중</option>
		<option value="휴점">휴점</option>
		
	</c:otherwise> 
</c:choose>
</select>
</div>
</div>
<div class="popup_office">
<div class="popup_text">주소</div><div class="popup_inputbox"><input type="text" id="b2" name="store_address1" value="${StoreInfo.store_address1}"></div>
<div class="popup_search"><input type="button" value="검색" id="search" onclick="sample6_execDaumPostcode()"></div>
</div>

<div class="popup_office">
<div class="popup_text"></div><div class="popup_inputbox"><input type="text" name="store_address2" value="${StoreInfo.store_address2}"></div>
</div>
<div class="popup_office_phone">
<div class="popup_text">전화번호</div><div class="popup_inputbox"><input type="text" name="store_phone" value="${StoreInfo.store_phone}"></div>
</div>

<div class="end">
	<div class="popup_btn">
		<input type="submit" value="저장">
	</div>

	<div class="popup_btn">
		<a href="/StoreList.mdo">취소</a>
	</div>
</div>
</form>
</div>

<!-- ---------- 본문내용 끝 ---------- -->

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
	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>	
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("b2").value = extraAddr;

                } else {
                    document.getElementById("b2").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                //document.getElementById('searchBar').value = data.zonecode;
                document.getElementById("b2").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("b2").focus();
            }
        }).open();
    }
</script>
	
</body>
</html>
