<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<!-- table & hover css -->
<link href="/admin/css/table.css" rel="stylesheet" />

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

</head>
<body class="sb-nav-fixed">

<%@ include file="/admin/ad_menu.jsp"%>

		<div id="layoutSidenav_content">
			<main>

				<div class="container-fluid px-4">
					<h1 class="mt-4">1:1문의 관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
						<li class="breadcrumb-item active">1:1문의 관리</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							1:1문의 관리 페이지 입니다. <a target="_blank" href="https://datatables.net/">아무링크</a>
							.
						</div>
					</div>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-chart-area me-1"></i> 여기는 아래 표 또는 게시판에 대한 세부제목
						</div>

						<!--  여기부터 내용물 -->

<!-- 답변 대기 테이블 시작 -->
<h1>답변 대기</h1>
						<!--datatablesSimple table 템플릿 / emp-table dataPerPage 필드검색 / tblCustomers pdf 다운   -->
						<div class="flex">
							<input type="button" id="btnExport" value="PDF" class="icon_pdf" />
							<!-- pdf 버튼 -->
							<button class="icon_excel"
								onclick="exportToExcel('tblexportData', 'user-data')">Excel</button>
							<!-- excel -->
						</div>
						

						<!--datatablesSimple table 템플릿 / emp-table dataPerPage 필드검색 / tblCustomers pdf 다운   -->
						<table id=""
							class=" tblCustomers tblexportData table">
							<thead>
								<tr style="background-color: #f2f2f2";>
									<th>번호</th>
									<th>분류</th>
									<th>제목</th>
									<th>내용</th>
									<th>등록일</th>
									<th>상태</th>
								</tr>
							</thead>  
							<tbody>
								<!-- for문~(c:forEach)  이 for문의 id값은 "admin"으로 정함!-->
								<c:forEach var="QnA" items="${QnAList0}">
									<!--  adminList은 컨트롤러에서 model에 저장한 "adminList" 이름임 -->
									<tr class="colored" onclick="location.href='readQnA.mdo?board_qna_no=${QnA.board_qna_no}&board_qna_status=${QnA.board_qna_status}'">
										<td class="center">${QnA.board_qna_no}</td>
										<!--for문의 id값.컬럼명으로 값을 불러옴 -->
										<td class="center">${QnA.board_qna_type}</td>
										<td>${QnA.board_qna_title}</td>
										<td>${QnA.board_qna_content}</td>
										<td class="center">${QnA.board_qna_reg_date}</td>
										<td class="center">
										<c:choose> 
											<c:when test="${QnA.board_qna_status eq 0}">
												답변대기
											</c:when>  
											<c:otherwise>
												답변완료
											</c:otherwise> 
										</c:choose> 
										</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
						
<!-- 답변 대기 테이블 끝 -->
<br>
<!-- 답변 완료 테이블 시작 -->
<h1>답변 완료</h1>					
						<!--datatablesSimple table 템플릿 / emp-table dataPerPage 필드검색 / tblCustomers pdf 다운   -->
						<div class="flex">
							<input type="button" id="btnExport" value="PDF" class="icon_pdf" />
							<!-- pdf 버튼 -->
							<button class="icon_excel"
								onclick="exportToExcel('tblexportData', 'user-data')">Excel</button>
							<!-- excel -->
						</div>
						
						<!--datatablesSimple table 템플릿 / emp-table dataPerPage 필드검색 / tblCustomers pdf 다운   -->
						<table id=""
							class="tblCustomers tblexportData table">
							<thead>
								<tr style="background-color: #f2f2f2";>
									<th>번호</th>
									<th>분류</th>
									<th>제목</th>
									<th>내용</th>
									<th>등록일</th>
									<th>상태</th>
								</tr>
							</thead>  
							<tbody>
								<!-- for문~(c:forEach)  이 for문의 id값은 "admin"으로 정함!-->
								<c:forEach var="QnA" items="${QnAList1}">
									<!--  adminList은 컨트롤러에서 model에 저장한 "adminList" 이름임 -->
									<tr class="colored" onclick="location.href='/readQnA.mdo?board_qna_no=${QnA.board_qna_no}&board_qna_status=${QnA.board_qna_status}'">
										<td class="center">${QnA.board_qna_no}</td>
										<!--for문의 id값.컬럼명으로 값을 불러옴 -->
										<td class="center">${QnA.board_qna_type}</td>
										<td>${QnA.board_qna_title}</td>
										<td>${QnA.board_qna_content} </td>
										<td class="center">${QnA.board_qna_reg_date}</td>
										<td class="center">
										<c:choose> 
											<c:when test="${QnA.board_qna_status eq 1}">
												답변완료
											</c:when>  
											<c:otherwise>
												답변대기
											</c:otherwise> 
										</c:choose> 
										</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
<!-- 답변 완료 테이블 끝 -->						

						<!-- 내용물 end -->
					</div>
				</div>
			</main>

	<!-- pdf -->
	<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
	<script src="js/pdf.js"></script>

	<!-- excel -->
	<script src="js/excel.js"></script>
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
		
<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>
