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
					<h1 class="mt-4">회원관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
						<li class="breadcrumb-item active">회원관리</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							회원관리 페이지 입니다. <a target="_blank" href="https://datatables.net/">아무링크</a>
						</div>
					</div>
					<div class="card mb-4" style="width:100%;">
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
							<form name="selectname" action="member.mdo" method="get">
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
							
<%-- 							<!-- 문자 발송 -->
							<div>
							<select name="text" id="selectOption">
								<c:forEach var="message" items="${messageList}">
									<div>
										<option style="padding:1px;" value="${message.message_content}">${message.message_title }</option>
									</div>
								</c:forEach>
							</select>
							</div>
							<div><input style="margin-right: 5px;" type="button" id="selectBtn" value="문자발송" /></div>
							 --%>

							<!-- 검색기능 -->
							<div>
								<form action="member.mdo" method="get">
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
						<div style= "width:100%; overflow-x:auto;">
						<table id="#example-table-1"
							class="tblCustomers tblexportData table">
							<thead>
								<tr style="background-color: #f2f2f2";>
									<th >회원코드</th>
									<th>아이디(이메일)</th>
									<th>이름</th>
									<th>핸드폰</th>
									<th>주소</th>
									<th>SMS수신</th>
									<th>회원상태</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="board" items="${articleList}">
									<tr class="colored" onclick="location.href='/getMemberBoard.mdo?customer_no=${board.customer_no}&customer_status=${board.customer_status}'">
										<td class="center">${board.customer_no}</td>
										<td>${board.customer_id}</a></td>
										<td>${board.customer_name}</td>
										<td class="center">${board.customer_phone}</td>
										<td>${board.customer_address1}</td>
										<td class="center">${board.customer_sms_permit}</td>
										<td class="center">${board.customer_status}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						</div>
						
						<!-- pagaing 처리 -->
						<div >					
							<c:if test="${count > 0}">
								<div class="icon_flex">
								<div>
								<c:if test="${startPage > pageBlock}">
									<a href="member.mdo?pageNum=${startPage-pageBlock}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}"><div class="pageging2">이전</div></a>
								</c:if>
								</div>
								<div class="icon_flex">
								<c:forEach var="i" begin="${startPage}" end="${endPage}">
										<a href="member.mdo?pageNum=${i}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}"><div class="pageging">${i}</div></a>
								</c:forEach>
								</div>							
								<div>
								<c:if test="${endPage < pageCount}">
									<a href="member.mdo?pageNum=${startPage + pageBlock}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}"><div class="pageging2">다음</div></a>
								</c:if>
								</div>
								</div>
							</c:if>
						</div><!-- 페이징 종료 -->

						<!-- 내용물 end -->
							<div class="card-footer small text-muted">The Semo is king of world of best of universal</div>
						</div>

				</div>
			</main>

	<!--체크박스 문자전송용 -->
	<script>
		// 상단 선택버튼 클릭시 체크된 Row의 값을 가져온다.
		$("#selectBtn").click(function() {
			console.log("1");
			var rowData = new Array();
			var tdArr = new Array();
			var checkbox = $("tbody input[name=check]:checked");
			var message = $("#selectOption option:selected").val();
			/* var message = $("select[name='text' option:selected").val(); */
			// 체크된 체크박스 값을 가져온다
			checkbox.each(function(i) {
				// checkbox.parent() : checkbox의 부모는 <td>이다.
				// checkbox.parent().parent() : <td>의 부모이므로 <tr>이다.
				var tr = checkbox.parent().parent().eq(i);
				var td = tr.children();
				rowData.push(tr.text());
				// td.eq(0)은 체크박스 이므로  td.eq(4)=전화번호 의 값을 가져온다.

				var phone = td.eq(4).text() + ",";
				phone = phone.substring(0, phone.length - 1); //마지막 , 제거
				// 가져온 값을 배열에 담는다.
				tdArr.push(phone);
				//console.log("phone : " + phone);

				$.ajax({
					url : "/sendSMSAll.mdo",
					type : "get",
					traditional : true,
					data : {
						tdArr : tdArr,
						message : message
					},
					dataType : 'text',
					success : function(data) {
						console.log(data);
					}
				});
			});
			$("#ex3_Result2").html(tdArr);
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
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>