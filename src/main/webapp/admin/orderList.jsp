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
					<h1 class="mt-4">주문/결제</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="/admin/index.jsp">Dashboard</a></li>
						<li class="breadcrumb-item active">주문/결제</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							주문/결제 페이지 입니다. <a target="_blank" href="https://datatables.net/">아무링크</a>
						</div>
					</div>
					<div class="card mb-4" style="width: 100%;">
						<div class="card-header">
							<i class="fas fa-chart-area me-1"></i> 여기는 아래 표 또는 주문/결제에 대한 세부제목
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
							<form name="selectname" action="adminOrderList.mdo" method="get">
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

								<!-- 문자 발송 -->
								<div>
									<select name="text" id="selectOption"  class="margin_auto">
										<c:forEach var="message" items="${messageList}">
											<div>
												<option style="padding: 1px;"
													value="${message.message_content}">${message.message_title}</option>
											</div>
										</c:forEach>
									</select>
								</div>
								<div>
									<input style="margin-right: 5px;" type="button" id="selectBtn"
										value="문자발송" onclick="return confirm('문자 발송을 하시겠습니까?');" />
								</div>


								<!-- 검색기능 -->
								<div>
									<form action="adminOrderList.mdo" method="get">
										<div class="icon_flex">
											<div>
												검색 조건 : <input type="date" name="startDate" />
											</div>
											<div>
												<input type="date" name="endDate" />
											</div>
											
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
											<div>
												<input type="reset" value="초기화" />
											</div>
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
										<th>주문번호</th>
										<th>고객이름</th>
										<th>핸드폰</th>
										<th>주소</th>
										<th>주문일자</th>
										<th>픽업일자</th>
										<th>픽업시간</th>
										<th>배송예정일자</th>
										<th>쿠폰사용</th>
										<th>배송금액</th>
										<th>결제금액</th>
										<th>결제상태</th>
										<th>담당지점</th>
										<th>주문상태</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="order" items="${adminOrderList}">
										<tr class="colored"
											onclick="location.href='/Ad_getReadOrderInfo.mdo?order_no=${order.order_no}&customer_no=${order.customer_no}'">
											<td id="check_td"><input type="checkbox"
												class="checkone" name="check"></td>
											<td class="center">${order.order_no}</td>
											<td class="center">${order.order_customer_name}</a></td>
											<td class="center">${order.order_customer_phone}</td>
											<td>${order.order_address1}</td>
											<td class="center">${order.order_date}</td>
											<td class="center">${order.order_pickup_date}</td>
											<td class="center">${order.order_pickup_time}</td>
											<td class="center">${order.order_expected_date}</td>
											<td class="center">${order.order_use_coupon_price}</td>
											<td class="center">${order.order_delivery_price}</td>
											<td class="center">${order.order_price}</td>
											<td class="center">${order.order_price_status}</td>
											<td class="center">${order.order_store_name}</td>
											<td class="center">${order.order_status}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>

						<!-- pagaing 처리 -->
						<div>
							<c:if test="${count > 0}">
								<div class="icon_flex">
									<div>
										<c:if test="${startPage > pageBlock}">
											<a
												href="adminOrderList.mdo?pageNum=${startPage-pageBlock}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}"><div
													class="pageging2">이전</div></a>
										</c:if>
									</div>
									<div class="icon_flex">
										<c:forEach var="i" begin="${startPage}" end="${endPage}">
											<a
												href="adminOrderList.mdo?pageNum=${i}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}"><div
													class="pageging">${i}</div></a>
										</c:forEach>
									</div>
									<div>
										<c:if test="${endPage < pageCount}">
											<a
												href="adminOrderList.mdo?pageNum=${startPage + pageBlock}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}"><div
													class="pageging2">다음</div></a>
										</c:if>
									</div>
								</div>
							</c:if>
						</div>
						<!-- 페이징 종료 -->


						<!-- 내용물 end -->

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

				var phone = td.eq(1).text() + ",";
				phone = phone.substring(0, phone.length - 1); //마지막 , 제거
				// 가져온 값을 배열에 담는다.
				tdArr.push(phone);
				//console.log("phone : " + phone);

				$.ajax({
					url : "/sendSelectedMessage.mdo",
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