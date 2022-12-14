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
					<h1 class="mt-4">견적주문</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="/index.mdo">대시보드</a></li>
						<li class="breadcrumb-item active">견적상품</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							견적상품 관리 페이지 입니다. 
						</div>
					</div>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-chart-area me-1"></i> 여기는 아래 표 또는 견적상품에 대한 세부제목
						</div>

						<!--  여기부터 내용물 -->



						<!-- pdf, excel 다운  -->
						<div class="flex">
							<input type="button" id="btnExport" value="PDF" class="icon_pdf" />
							<button type="button" class="icon_excel" onclick="fnExcelReport('table','title');">Excel</button>
						</div>

						<div class="b_button">
							<!-- 테이블 행 필터 -->
							<form name="selectname" action="getEstimateList.mdo" method="get">
								<input type="hidden" name="searchCondition"
									value="${search.searchCondition}" /> <input type="hidden"
									name="searchKeyword" value="${search.searchKeyword}" />

								<div>
									<select name="selectPage" onchange="this.form.submit()">
										<option value="">선택</option>
										<option value="5">5</option>
										<option value="10">10</option>
										<option value="20">20</option>
										<option value="50">50</option>
									</select> entries per page
								</div>
							</form>

							<div class="icon_flex">
								<!-- 검색기능 -->
								<div>
									<form action="getEstimateList.mdo" method="get">
										<div class="icon_flex">
											<td><select name="searchCondition">
													<c:forEach items="${condition}" var="option">
														<div>
															<option value="${option.value}">${option.key}</option>
														</div>
													</c:forEach>
											</select> <input type="text" name="searchKeyword" />
												<div>
													<input type="submit" value="검색" />
												</div>
												<div>
													<input type="reset" value="초기화" />
												</div>
										</div>
									</form>
								</div>
							</div>

						</div>

						<!--datatablesSimple는 부트스트렙id,  table excel 다운 tblCustomers pdf 다운   -->
						<table id="" class="tblCustomers table">
							<thead>
								<tr style="background-color: #f2f2f2";>
									<th>견적코드</th>
									<th>세탁종류</th>
									<th>작성자</th>
									<th>접수일자</th>
									<th>주소</th>
									<th>견적상태</th>
								<tr>
							</thead>
							<tbody>
								<c:forEach var="est" items="${estimateList}">
									<tr class="colored"
										onclick="location.href='/getEstimate.mdo?estimate_cm_no=${est.estimate_cm_no }&customer_no=${est.customer_no}&estimate_status=${est.estimate_status}'">
										<td class="center">${est.estimate_cm_no}</td>
										<td class="center">${est.estimate_type}</td>
										<td class="center">${est.customer_name}</td>
										<td class="center">${est.estimate_date}</td>
										<td>${est.customer_address1} ${est.customer_address2}</td>
										<td class="center">${est.estimate_status}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>

						<!-- pagaing 처리 -->

						<div>
							<c:if test="${count > 0}">
								<!-- 조회된 데이터 개수가 0보다 크면 if문 실행 -->
								<div class="icon_flex">
									<div>
										<c:if test="${startPage > pageBlock}">
											<!-- 시작번호가 5보다 크면, 앞에 '이전'을 붙여줌 -->
											<a
												href="getEstimateList.mdo?pageNum=${startPage-pageBlock}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}"><div
													class="pageging2">이전</div></a>
										</c:if>
									</div>
									<div>
										<div class="icon_flex">
											<c:forEach var="i" begin="${startPage}" end="${endPage}">
												<a
													href="getEstimateList.mdo?pageNum=${i}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}"><div
														class="pageging">${i}</div></a>
											</c:forEach>
										</div>
									</div>
									<div>
										<c:if test="${endPage < pageCount}">
											<a
												href="getEstimateList.mdo?pageNum=${startPage + pageBlock}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}"><div
													class="pageging2">다음</div></a>
										</c:if>
									</div>
								</div>
							</c:if>
						</div>
						<!-- 페이징 종료 -->


						<!-- 내용물 end -->
						<div class="card-footer small text-muted"></div>
					</div>

				</div>
			</main>
	
	<!-- 테이블 Checked 되었을때 이벤트 반응 막기 -->
	<script>
		$(".checkone").click(function(event) {
			event.stopPropagation();
			// Do something
		});
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

<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>