<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

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

		<div id="layoutSidenav_content">
			<main>

				<div class="container-fluid px-4">
					<h1 class="mt-4">notice</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="/admin/index.jsp">Dashboard</a></li>
						<li class="breadcrumb-item active">notice</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							notice 페이지 입니다. <a target="_blank" href="https://datatables.net/">아무링크</a>
							.
						</div>
					</div>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-chart-area me-1"></i> 여기는 아래 표 또는 notice에 대한
							세부제목
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
							<form name="selectname" action="ReviewBoardList.mdo" method="get">
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
								<form action="ReviewBoardList.mdo" method="get">
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
											<div></div> <input type="reset"  value="초기화" />
									</div>
								</form>
							</div>
							</div>
							
						</div>


						<!--datatablesSimple table 템플릿 / emp-table dataPerPage 필드검색 / tblCustomers pdf 다운   -->
						<table id=""
							class="tblCustomers tblexportData table"
							border="5">
							<thead>
								<tr>
									<th width="50" id="check_td"><input type="checkbox"
										name="check" class="allcheck"></th>
									<th>No</th>
									<th>평점</th>
									<th>작성자</th>
									<th>제목</th>
									<th>내용</th>
									<th>작성일</th>
									<th>상태</th>
									
								</tr>
							</thead>
							<tbody>
								<c:forEach var="review" items="${ReviewList}">
									<tr>
										<td id="check_td"><input type="checkbox" name="check"></td>
										<td>${review.board_review_no}</td>
										<td>
										<c:choose>
											<c:when test="${review.board_review_rating eq 5}">
										★ ★ ★ ★ ★
										    </c:when>
											<c:when test="${review.board_review_rating eq 4}">
										★ ★ ★ ★ ☆
										    </c:when>
										    <c:when test="${review.board_review_rating eq 3}">
										★ ★ ★ ☆ ☆
										    </c:when>
										    <c:when test="${review.board_review_rating eq 2}">
										★ ★ ☆ ☆ ☆
										    </c:when>
											<c:otherwise>
												★ ☆ ☆ ☆ ☆
											</c:otherwise>
										</c:choose>    ${review.board_review_rating}
										</td>
										<td>${review.board_review_name}</td>  
										<td><a href="readReviewBoard.mdo?board_review_no=${review.board_review_no}">${review.board_review_title}</a></td>
										<td><a href="readReviewBoard.mdo?board_review_no=${review.board_review_no}">${review.board_review_content}</a></td>
										<td>${review.board_review_reg_date}</td>
										<td>
										<c:choose> 
											<c:when test="${review.board_review_status eq 1}">
												활성
											</c:when>  
											<c:otherwise>
												비활성
											</c:otherwise> 
										</c:choose> 
										</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
						<div class="flex">
<!-- 							<div> -->
<!-- 								<input id="button" type="button" value="등록" -->
<!-- 									onclick="window.location='/admin/board_review_insert.jsp'" /> -->
<!-- 							</div> -->
							<div>
								<input id="delBtn" type="button" value="삭제" onclick="return confirm('선택한 리뷰정보를 삭제하시겠습니까?');" />
							</div>
						</div>
						
						
<!-- pagaing 처리 -->
						<div >					
							<c:if test="${count > 0}"> <!-- 조회된 데이터 개수가 0보다 크면 if문 실행 -->
								<div class="icon_flex">
								<div>
								<c:if test="${startPage > pageBlock}"> <!-- 시작번호가 5보다 크면, 앞에 '이전'을 붙여줌 -->
									<a href="ReviewBoardList.mdo?pageNum=${startPage-pageBlock}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}"><div class="pageging2">이전</div></a>
								</c:if>
								</div>
								<div class="icon_flex">
								<c:forEach var="i" begin="${startPage}" end="${endPage}">
										<a href="ReviewBoardList.mdo?pageNum=${i}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}"><div class="pageging">${i}</div></a>
								</c:forEach>
								</div>							
								
								<div>
								<c:if test="${endPage < pageCount}">
									<a href="ReviewBoardList.mdo?pageNum=${startPage + pageBlock}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}"><div class="pageging2">다음</div></a>
								</c:if>
								</div>
								</div>
							</c:if>
						</div><!-- 페이징 종료 -->						
						
						
						
						
						<script type="text/javascript">
							//체크삭제
							$("#delBtn")
									.click(
											function() {
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
																		url : "deleteReviewBoardCheck.mdo",
																		type : "get",
																		traditional : true,
																		data : {
																			tdArr : tdArr,
																		},
																		dataType : 'text',
																		success : function(data) {
																			location.href = "ReviewBoardList.mdo";
																			console
																					.log(data);
																		}
																	});
														});
											});
						</script>


						<!-- 내용물 end -->

				</div>
			</main>

<%@ include file="/admin/ad_footer.jsp"%>
			
	<script>
		getUniqueValuesFromColumn()
	</script>

	<!-- pdf -->
	<script type="/admin/text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script type="/admin/text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
	<script type="/admin/text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
	<script src="/admin/js/pdf.js"></script>

	<!-- excel -->
	<script src="/admin/js/excel.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<%@ include file="/admin/ad_end.jsp"%>
<%-- <jsp:include page="/admin/ad_end.jsp" /> --%>