<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<!-- table & hover css -->
<link href="/admin/css/table_Sales.css" rel="stylesheet" />

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
					<h1 class="mt-4">개별주문이력</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="/index.mdo">대시보드</a></li>
						<li class="breadcrumb-item active">개별주문이력</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							회원의 개별 주문 이력 페이지 입니다. 
						</div>
					</div>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-chart-area me-1"></i> 여기는 아래 표 또는 게시판에 대한 세부제목
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
							<form name="selectname" action="memberorderList.mdo" method="get">
							   <input type="hidden" name="customer_no" value="${search.customer_no}"/>
							   <input type="hidden" name="searchCondition" value="${search.searchCondition}"/>
							   <input type="hidden" name="searchKeyword" value="${search.searchKeyword}"/>
						
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


							
							<div class="icon_flex">
							

							<!-- 검색기능 -->
							<div>
								<form action="memberorderList.mdo" method="get">
									<div class="icon_flex">

										<select name="searchCondition" class="margin_auto" >
												<c:forEach items="${conditionMap}" var="option">
													<div>
														<option value="${option.value}">${option.key}</option>
													</div>
												</c:forEach>
										</select> <input type="text" name="searchKeyword" />
											<div>
												<input type="submit" value="검색" />
											</div>
											<div> <input type="reset" value="초기화" /></div>
									</div>
								</form>
							</div>
							</div>
							
						</div>


						<!--datatablesSimple table 템플릿 / emp-table dataPerPage 필드검색 / tblCustomers pdf 다운   -->
						
						<table id=""
							class="tblCustomers tblexportData table">
							<thead>
								<tr style="background-color: #f2f2f2";>
									<th>주문번호</th>
									<th>회원번호</th>
									<th>회원이름(이메일)</th>
									<th>대분류</th>
									<th>중분류</th>
									<th>상품명</th>
									<th>가격</th>
									<th>수량</th>
									<th>주문일자</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="orderList" items="${userOrderList}">
									<tr class="colored">
										<td class="center">${orderList.order_no}</td>
										<td class="center">${orderList.customer_no}</td>
										<td class="center">${orderList.customer_name}</a></td>
										<td class="center">${orderList.order_mt_category1}</td>
										<td class="center">${orderList.order_mt_category2}</td>
										<td class="center">${orderList.order_mt_product}</td>
										<td class="center">${orderList.order_mt_price}</td>
										<td class="center">${orderList.order_mt_count}</td>
										<td class="center">${orderList.order_mt_date}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						
						
						<!-- pagaing 처리 -->
						<div >					
							<c:if test="${count > 0}">
							<div class="icon_flex">
							 <div>
								<c:if test="${startPage > pageBlock}">
									<a href="memberorderList.mdo?pageNum=${startPage-pageBlock}&selectPage=${search.selectPage}&customer_no=${search.customer_no}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}"><div class="pageging2">이전</div></a>
								</c:if>
								</div>
								<div class="icon_flex">
								<c:forEach var="i" begin="${startPage}" end="${endPage}">
										<a href="memberorderList.mdo?pageNum=${i}&selectPage=${search.selectPage}&customer_no=${search.customer_no}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}"><div class="pageging">${i}</div></a>
								</c:forEach>
								</div>							
								<div>
								<c:if test="${endPage < pageCount}">                           
									<a href="memberorderList.mdo?pageNum=${startPage + pageBlock}&selectPage=${search.selectPage}&customer_no=${search.customer_no}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}"><div class="pageging2">다음</div></a>
								</c:if>
								</div>
								</div>
							</c:if>
						</div><!-- 페이징 종료 -->

						<!-- 내용물 end -->
						<div class="card-footer small text-muted"></div>
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
	<script src="/admin/js/pdf.js"></script>

	<!-- excel -->
	<script src="/admin/js/excel.js"></script>
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>