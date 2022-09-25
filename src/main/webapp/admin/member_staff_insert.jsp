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


<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="/admin/css/styles.css" rel="stylesheet" />
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="/admin/js/index_navbar_onclick.js"></script>



<link href="css/styles.css" rel="stylesheet" />
<link href="css/member_staff.css" rel="stylesheet" />



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
					<h1 class="mt-4">매니저등록</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="/admin/index.jsp">Dashboard</a></li>
						<li class="breadcrumb-item active">매니저등록화면</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">신규 매니저 계정을 생성합니다.</div>
					</div>

					<!-- 상세정보 -->



					<form action="/insertAdmin.mdo" method="post" id="form"
						class="form" onsubmit="return confirm('신규 매니저 계정을 등록하겠습니까?');">
						<div class="popup_wrapper">
							<div class="popup_head">
								<h1>매니저 등록</h1>
								<div class="popup_head_index">직급을 부여하여 매니저를 등록합니다</div>
							</div>
							<div class="popup_title">
								이&nbsp;&nbsp;름&nbsp;&nbsp;<input type="text" id="inputName"
									placeholder="" name="admin_name">
							</div>
							<div class="popup_index">
								담&nbsp;&nbsp;당&nbsp; <select id="inputPosition"
									class="manager_dept" name="admin_position"><option
										value="0">세탁</option>
									<option value="0" selected>선택</option>
									<option value="물류팀">물류팀</option>
									<option value="전산팀">전산팀</option>
									<option value="마케팅팀">마케팅팀</option>
									<option value="영업팀">영업팀</option>
									<option value="경영팀">경영팀</option>
								</select>
							</div>

							<div class="popup_content">
								직&nbsp;&nbsp;급&nbsp; <select id="inputTitle"
									class="manager_level" name="admin_title"><option
										value="0">사원</option>
									<option value="0" selected>선택</option>
									<option value="대리">대리</option>
									<option value="과장">과장</option>
									<option value="차장">차장</option>
									<option value="부장">부장</option>
									<option value="팀장">팀장</option>
								</select>
							</div>
							<div class="popup_login" style="margin-bottom: 0px;">
								<div class="popup_text1">아이디</div>
								<div class="popup_inputbox">
									<input type="text" id="inputEmail" placeholder=""
										name="admin_id">
								</div>
							</div>
							<div class="popup_inputbox">
								<button type="button" idCheck="" id="idCheck"
									style="font-size: 5px; border: 1px solid gray;">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IdCheck&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</button>
							</div>
							<div class="popup_login">
								<div class="popup_text2">비밀번호</div>
								&nbsp;
								<div class="popup_inputbox">
									<input type="password" class="pass" id="inputPassword"
										placeholder="">
								</div>
							</div>
							<div class="popup_login" style="margin-bottom: 0px;">
								<div class="popup_text3">비밀번호&nbsp;확인</div>
								&nbsp;
								<div class="popup_inputbox">
									<input type="password" class="repass" placeholder=""
										name="admin_passwd">
								</div>
							</div>
							<div>
								<span id="pwChecking" style="font-size: 5px;"></span>
							</div>



							<!-- <div class="popup_img"><img src="image/gorae.jpg" width="60px" height="60px"><br><br></div> -->


							<div class="end">
								<div class="popup_btn">
									<input type="button" onclick="chkPW()"
										style="border-style: none;" value="등록" />
								</div>
								<div class="popup_btn">
									<a href="/staffList.mdo" onclick="self.close();">취소</a>
								</div>
							</div>

						</div>
					</form>
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





	<!-- 비밀번호 일치 불일치 언더바 -->
	<script type="text/javascript">
	$(document).ready(function(){
	
	$('.repass').keyup(function(){
		console.log("ASdasdads");
        if($('.pass').val() != $('.repass').val()){
           $('#pwChecking').css("color", "red");
           $('#pwChecking').html("비밀번호가 일치하지 않습니다. 다시 확인해주세요!");
        }else if($('.pass').val() == "" && $('.repass').val() == ""){
        	console.log("dddd");
        	$('#pwChecking').html(null)		 	
        } else {
           $('#pwChecking').css("color", "green");
           $('#pwChecking').html("비밀번호가 일치합니다. 회원가입을 계속 진행해주세요!");
        }
     });
	});
	</script>


   //이메일 정규직 
   //비밀번호 정규식: 영문(대소문자), 숫자, 특수문자 포함, 비밀번호 8~20자, 공백x 

   	<script>
   function chkPW(){
	   
	console.log("!@!@!ㅋㅋㅋㅋ");
	
	   var name = $("#inputName").val();
	   var position = $("#inputPosition").val();
	   var title = $("#inputTitle").val();
 
	   var id = $("#inputEmail").val();
	   var email = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	   
	   var pw = $("#inputPassword").val();
	   var num = pw.search(/[0-9]/g);
	   var eng = pw.search(/[a-z]/ig);
	   var spe = pw.search(/[`~!@#$%^&*?]/gi);
	   
	   var pass = $(".pass").val();
	   var repass = $(".repass").val();
	   

	   if(name.trim() == null || name.trim() == ""){
			  alert("이름을 작성해주세요.");
			  return false;
		   }
	   if(position==0){
			  alert("담당 업무를 선택해주세요.");
			  return false;
		   }
	   if(title==0){
			  alert("직급을 선택해주세요.");
			  return false;
		   }
	   
	   if(id.match(email)==null){
		  alert("이메일 형식대로 작성해주세요.");
		  return false;
	   }
	   
	   if(pw.length < 8 || pw.length > 20){
	    alert("8자리 ~ 20자리 이내로 입력해주세요.");
	    return false;
	   }else if(pw.search(/\s/) != -1){
	    alert("비밀번호는 공백 없이 입력해주세요.");
	    return false;
	   }else if(num < 0 || eng < 0 || spe < 0 ){
	    alert("영문,숫자, 특수문자를 혼합하여 입력해주세요.");
	    return false;
	   }else if(pass.trim() != repass.trim()){
		    alert("비밀번호를 동일하게 입력해주세요.");
		    return false;
	   }else {
	  	console.log("통과"); 
	  	  form.submit();
	   }
	  }
   </script>

   	<script>
	   $('#idCheck').click(function(){

			var valId = $('#inputEmail').val();	
			var request = $.ajax({
				url: "/idCheck.mdo", //통신할 url
				method: "POST", //통신할 메서드 타입
				data: { id : valId }, //전송할 데이타
				dataType: "json"
			});	 
			request.done(function(data) {
				console.log(data)
				if(data == 1){
						alert('사용 가능한 아이디입니다.');
				} else{
						alert('이미 가입된 아이디입니다.');
				}	
			});	 
			request.fail(function( jqXHR, textStatus ) {
			  alert( "Request failed: " + textStatus );
			});			
		});
	</script>
	



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
