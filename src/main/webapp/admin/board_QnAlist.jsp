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
						<li class="breadcrumb-item"><a href="index.mdo">대시보드</a></li>
						<li class="breadcrumb-item active">1:1문의 관리</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							1:1문의 관리 페이지 입니다. 
						</div>
					</div>
					<div class="card mb-4">
						

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
							
							
							
					<div class="b_button">
							<!-- 테이블 행 필터 -->
							<form name="selectname" action="QnAList.mdo" method="get">
							   <input type="hidden" name="searchCondition4" value="${search2.searchCondition4}"/>
							   <input type="hidden" name="searchKeyword4" value="${search2.searchKeyword4}"/>
								<div col-index=8>
									<select name="selectPage2" onchange="this.form.submit()">
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
								<form action="QnAList.mdo" method="get">
									<div class="icon_flex">

										<select name="searchCondition4" class="margin_auto" >
												<c:forEach items="${conditionMap2}" var="option">
													<div>
														<option value="${option.value}">${option.key}</option>
													</div>
												</c:forEach>
										</select> 
										<input type="text" id="se_input" name="searchKeyword4" />
											<div>
												<input type="submit" id="se_submit" value="검색" />
											</div>
											<div> <input type="reset" id="se_reset" value="초기화" /></div>
									</div>
								</form>
							</div>
						</div>
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
			
			<!-- pagaing 처리 -->
						<div >					
							<c:if test="${count2 > 0}">
								<div class="icon_flex">
								<div>
								<c:if test="${startPage2 > pageBlock2}">
									    <a href="QnAList.mdo?pageNum2=${startPage2-pageBlock2}&selectPage4=${search2.selectPage4}&searchKeyword4=${search2.searchKeyword4}&searchCondition4=${search2.searchCondition4}&pageNum=${startPage-pageBlock}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}"><div class="pageging2">이전</div></a>
								</c:if>
								</div>
								<div class="icon_flex">
								<c:forEach var="i" begin="${startPage2}" end="${endPage2}">
										<a href="QnAList.mdo?pageNum2=${i}&selectPage2=${search2.selectPage2}&searchKeyword4=${search2.searchKeyword4}&searchCondition4=${search2.searchCondition4}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}"><div class="pageging">${i}</div></a>
								
								</c:forEach>
								</div>							
								<div>
								<c:if test="${endPage2 < pageCount2}">
								    	<a href="QnAList.mdo?pageNum2=${startPage2 + pageBlock2}&selectPage2=${search2.selectPage2}&searchKeyword4=${search2.searchKeyword4}&searchCondition4=${search2.searchCondition4}&pageNum=${startPage + pageBlock}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}"><div class="pageging2">다음</div></a>
								</c:if>                 
								</div>
								</div>
							</c:if>
						</div><!-- 페이징 종료 -->
						
						
			
			
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
						
						<div class="b_button">
							<!-- 테이블 행 필터 -->
							<form name="selectname" action="QnAList.mdo" method="get">
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
								<form action="QnAList.mdo" method="get">
									<div class="icon_flex">

										<select name="searchCondition" class="margin_auto" >
												<c:forEach items="${conditionMap}" var="option">
													<div>
														<option value="${option.value}">${option.key}</option>
													</div>
												</c:forEach>
										</select> 
										<input type="text" id="se_input" name="searchKeyword" />
											<div>
												<input type="submit" id="se_submit" value="검색" />
											</div>
											<div> <input type="reset" id="se_reset" value="초기화" /></div>
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
						
						<!-- pagaing 처리 -->
						<div >					
							<c:if test="${count > 0}">
								<div class="icon_flex">
								<div>
								<c:if test="${startPage > pageBlock}">
									    <a href="QnAList.mdo?pageNum=${startPage-pageBlock}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}&pageNum2=${startPage2-pageBlock2}&selectPage4=${search2.selectPage4}&searchKeyword4=${search2.searchKeyword4}&searchCondition4=${search2.searchCondition4}"><div class="pageging2">이전</div></a>
								</c:if>
								</div>
								<div class="icon_flex">
								<c:forEach var="i" begin="${startPage}" end="${endPage}">
										<a href="QnAList.mdo?pageNum=${i}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}&selectPage2=${search2.selectPage2}&searchKeyword4=${search2.searchKeyword4}&searchCondition4=${search2.searchCondition4}"><div class="pageging">${i}</div></a>
									
								</c:forEach>
								</div>							
								<div>
								<c:if test="${endPage < pageCount}">
									    <a href="QnAList.mdo?pageNum=${startPage + pageBlock}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}&pageNum2=${startPage2 + pageBlock2}&selectPage2=${search2.selectPage2}&searchKeyword4=${search2.searchKeyword4}&searchCondition4=${search2.searchCondition4}"><div class="pageging2">다음</div></a>
								</c:if>
								</div>
								</div>
							</c:if>
						</div><!-- 페이징 종료 -->
						
						
<!-- 답변 완료 테이블 끝 -->						

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
	<script src="js/pdf.js"></script>

	<!-- excel -->
	<script src="js/excel.js"></script>
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
		
<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>
