<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<style>
.table .ellipsis {
	position: relative;
	min-width: 200px;
	width: 850px;
}

.table .ellipsis span {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	position: absolute;
	left: 9px;
	right: 9px;
}

.ellipsis:before {
	content: '';
	display: inline-block;
}
</style>

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
					<h1 class="mt-4">약관관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="/index.mdo">대시보드</a></li>
						<li class="breadcrumb-item active">약관관리</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							약관관리 페이지 입니다.
						</div>
					</div>
					<div class="card mb-4">
						

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
							<form name="selectname" action="TermsList.mdo" method="get">
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
									<form action="TermsList.mdo" method="get">
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
												<div><input type="reset" value="초기화" /></div>
										</div>
									</form>
								</div>
							</div>
						</div>

						<!--datatablesSimple table 템플릿 / emp-table dataPerPage 필드검색 / tblCustomers pdf 다운   -->
						<div style="width: 100%; overflow-x: auto;">
						<table id="" class="tblCustomers tblexportData table">
							<thead>
								<tr style="background-color: #f2f2f2";>
									<th width="50" id="check_td"><input type="checkbox"
										name="check" class="allcheck"></th>
									<th>약관번호</th>
									<th>약관분류</th>
									<th>약관이름</th>
									<th>약관내용</th>
									<th>필수여부</th>
									<th>등록일</th>
								</tr>
							</thead>
							<tbody>
								<!-- for문~(c:forEach)  이 for문의 id값은 "admin"으로 정함!-->
								<c:forEach var="terms" items="${TermsList}">
									<!--  adminList은 컨트롤러에서 model에 저장한 "adminList" 이름임 -->
									<tr class="colored"
										onclick="location.href='readTerms.mdo?terms_no=${terms.terms_no}'">
										<td id="check_td"><input type="checkbox" class="checkone" name="check"></td>
										<td class="center">${terms.terms_no}</td>
										<!--for문의 id값.컬럼명으로 값을 불러옴 -->
										<td class="center">${terms.terms_type}</td>
										<td>${terms.terms_title}</td>
										<td style="width:400px;" class="ellipsis"><span>${terms.terms_content}</span></td>

										<td class="center"><c:choose>
												<c:when test="${terms.terms_necessary == true}">
												필수
											</c:when>
												<c:otherwise>
												선택
											</c:otherwise>
											</c:choose></td>
										<td class="center">${terms.terms_reg_date}</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
						
						</div>
						<div class="flex">
							<div>
								<input id="button" type="button" value="등록"
									onclick="window.location='/admin/support_terms_insert.jsp'" />
							</div>
							<div>
<input id="delBtn" type="button" value="삭제" onclick="deleteA();" />
							</div>

						</div>
						<!-- pagaing 처리 -->

						<div>
							<c:if test="${count > 0}">
								<!-- 조회된 데이터 개수가 0보다 크면 if문 실행 -->
								<div class="icon_flex">
									<div>
										<c:if test="${startPage > pageBlock}">
											<!-- 시작번호가 5보다 크면, 앞에 '이전'을 붙여줌 -->
											<a
												href="TermsList.mdo?pageNum=${startPage-pageBlock}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}">
												<div class="pageging2">이전</div></a>
										</c:if>
									</div>
									<div>
										<div class="icon_flex">
											<c:forEach var="i" begin="${startPage}" end="${endPage}">
												<a
													href="TermsList.mdo?pageNum=${i}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}">
													<div class="pageging">${i}</div></a>
											</c:forEach>
										</div>
									</div>
									<div>
										<c:if test="${endPage < pageCount}">
											<a
												href="TermsList.mdo?pageNum=${startPage + pageBlock}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}">
												<div class="pageging2">다음</div></a>
										</c:if>
									</div>
								</div>
							</c:if>
						</div>
						<!-- 페이징 종료 -->
						
						<script type="text/javascript">
						   function deleteA(){
							   console.log("delete())");
							   if(confirm("선택한 약관을 삭제하시겠습니까?")){
								   deleteAll();
								   return true;
							   }else{
								   return false;
							   }
						   }
						      //체크삭제
						      function deleteAll() {
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
																		url : "deleteTermsCheck.mdo",
																		type : "get",
																		traditional : true,
																		data : {
																			tdArr : tdArr,
																		},
																		dataType : 'text',
																		success : function(
																				data) {
																			location.href = "/TermsList.mdo";
																			console
																					.log(data);
																		}
																	});
														});
											};
						</script>

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
	<script src="js/pdf.js"></script>

	<!-- excel -->
	<script src="js/excel.js"></script>
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
		
<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>