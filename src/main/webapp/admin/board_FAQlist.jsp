<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
					<h1 class="mt-4">자주하는 질문</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="/index.mdo">대시보드</a></li>
						<li class="breadcrumb-item active">자주하는 질문</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							자주하는 질문 관리 페이지 입니다. 
						</div>
					</div>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-chart-area me-1"></i> 여기는 아래 표 또는 자주하는 질문에 대한 세부항목
						</div>

						<!--  여기부터 내용물 -->



						<!--datatablesSimple table 템플릿 / emp-table dataPerPage 필드검색 / tblCustomers pdf 다운   -->
						<div class="flex">
							<input type="button" id="btnExport" value="PDF" class="icon_pdf" />
							<button type="button" class="icon_excel" onclick="fnExcelReport('table','title');">Excel</button>
						</div>


						<div class="b_button">
							<!-- 테이블 행 필터 -->
							<form name="selectname" action="FAQList.mdo" method="get">
								<input type="hidden" name="searchCondition"
									value="${search.searchCondition}" /> <input type="hidden"
									name="searchKeyword" value="${search.searchKeyword}" />

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
									<form action="FAQList.mdo" method="get">
										<div class="icon_flex">
											<td><select name="searchCondition">
													<c:forEach items="${conditionMap}" var="option">
														<div>
															<option value="${option.value}">${option.key}</option>
														</div>
													</c:forEach>
											</select> <input type="text" name="searchKeyword" />
												<div>
													<input type="submit" value="검색" />
												</div>
												<div></div> <input type="reset" value="초기화" />
										</div>
									</form>
								</div>
							</div>

						</div>


						<!--datatablesSimple는 부트스트렙id,  table excel 다운 tblCustomers pdf 다운   -->
							<div style= "width:100%; overflow-x:auto;">
						<table id="" class="tblCustomers table">
							<thead>
								<tr style="background-color: #f2f2f2";>
									<th width="50" id="check_td"><input type="checkbox"
										name="check" class="allcheck"></th>
									<th>번호</th>
									<th>분류</th>
									<th>제목</th>
									<th>내용</th>
									<th>등록일</th>

								</tr>
							</thead>
							<tbody>

								<c:forEach var="FAQ" items="${FAQList}">
									<tr class="colored"
											onclick="location.href='readFAQ.mdo?board_faq_no=${FAQ.board_faq_no}'">
										<td id="check_td"><input type="checkbox" class="checkone" name="check"></td>
										<td class="center">${FAQ.board_faq_no}</td>
										<!--for문의 id값.컬럼명으로 값을 불러옴 -->
										<td class="center">${FAQ.board_faq_type}</td>
										<td>${FAQ.board_faq_title}</td>
										<td class="ellipsis" style="width:800px"><span>${FAQ.board_faq_content}</span></td>
										<td class="center">${FAQ.board_faq_reg_date}</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
						</div>

						<div class="flex">
							<div>
								<input id="button" type="button" value="등록"
									onclick="window.location='/admin/board_FAQ_insert.jsp'" />
							</div>
							<!-- 						<div> <input  id="button" type="button"  value="수정" /> </div> -->
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
												href="FAQList.mdo?pageNum=${startPage-pageBlock}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}"><div
													class="pageging2">이전</div></a>
										</c:if>
									</div>
									<div class="icon_flex">
										<c:forEach var="i" begin="${startPage}" end="${endPage}">
											<a
												href="FAQList.mdo?pageNum=${i}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}"><div
													class="pageging">${i}</div></a>
										</c:forEach>
									</div>

									<div>
										<c:if test="${endPage < pageCount}">
											<a
												href="FAQList.mdo?pageNum=${startPage + pageBlock}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}"><div
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

<script type="text/javascript">
function deleteA(){
	   console.log("delete())");
	   if(confirm("선택한 게시글을 삭제하시겠습니까?")){
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
																		url : "deleteFAQCheck.mdo",
																		type : "get",
																		traditional : true,
																		data : {
																			tdArr : tdArr,
																		},
																		dataType : 'text',
																		success : function(
																				data) {
																			location.href = "/FAQList.mdo";
																			console
																					.log(data);
																		}
																	});
														});
											};
						</script>


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