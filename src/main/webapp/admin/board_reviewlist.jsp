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
					<h1 class="mt-4">리뷰</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.mdo">대시보드</a></li>
						<li class="breadcrumb-item active">리뷰</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							리뷰 관리 페이지 입니다. 
						</div>
					
					<div class="card mb-4">
					
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

						<!--datatablesSimple table 템플릿 / emp-table dataPerPage 필드검색 / tblCustomers pdf 다운   -->
						<table id=""
							class="emp-table dataPerPage tblCustomers tblexportData table">
							<thead>
								<tr style="background-color: #f2f2f2";>
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
									<tr class="colored"
											onclick="location.href='/readReviewBoard.mdo?board_review_no=${review.board_review_no}'">
										<td id="check_td"><input type="checkbox" name="check"></td>
										<td class="center">${review.board_review_no}</td>
										<td class="center">
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
										<td class="center">${review.board_review_name}</td>  
										<td>${review.board_review_title}</td>
										<td>${review.board_review_content}</td>
										<td class="center">${review.board_review_reg_date}</td>
										<td class="center">
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
								<input id="delBtn" type="button" value="삭제" />
							</div>
						</div>	
					</div>
				</div>
			</main>
			
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
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>
