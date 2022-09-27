<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<!-- table & hover css -->
<link href="/admin/css/table_Sales.css" rel="stylesheet" />

<!-- chart css -->
<link href="/admin/css/chart.css" rel="stylesheet" />

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
					<h1 class="mt-4">매출현황</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="/index.mdo">대시보드</a></li>
						<li class="breadcrumb-item active">지점별 매출현황</li>
					</ol>
					<div class="card mb-4" style="width: 100%; overflow-x: auto;">
						<div class="card-body">
							지점별 매출현황 페이지 입니다. 

						</div>

						<div class="card mb-4">
						
							
							<!--Chart -->
							<div class="chartparent">
								
									<!-- <div id="chart_div" style="width: 300px; height: 300px;"></div> -->
									<div id="chart_div" style="width: 950px; height: 400px;"></div>

						
								<div class="chart">
								<div id="donutchart" style="width: 650px; height: 400px;"></div>
								</div>
							</div>
									<form id="ChartData">
										<div class="chart_flex">
											<div>
												<input type="date" name="startDate" />
											</div>
											<div>
												<input type="date" name="endDate" />
											</div>
											<div>
												<input type="button" value="검색" onClick="getGraph()" />
											</div>
											<div>
												<input type="reset" value="초기화" onChange="getGraph()" />
											</div>
										</div>
									</form>

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
								<form name="selectname" action="salesStoreList.mdo" method="get">
									<input type="hidden" name="searchKeyword1"
										value="${search.searchKeyword1}" /> <input type="hidden"
										name="searchKeyword2" value="${search.searchKeyword2}" /> <input
										type="hidden" name="searchKeyword3"
										value="${search.searchKeyword3}" /> <input type="hidden"
										name="startDate" value="${search.startDate}" /> <input
										type="hidden" name="endDate" value="${search.endDate}" />
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

								<!-- 검색기능 -->
								<div>
									<form action="salesStoreList.mdo" method="get">
										<div class="icon_flex">
											<div>
												검색 조건 : <input type="date" name="startDate" />
											</div>
											<div>
												<input type="date" name="endDate" />
											</div>
											<div>
												<select name="searchKeyword1" class="margin_auto">
													<option style="justify-content: center" value="">구분</option>
													<option value="일반세탁">일반세탁</option>
													<option value="특수세탁">특수세탁</option>
												</select>
											</div>
											<div>
												<select name="searchKeyword2" class="margin_auto">
													<option style="justify-content: center" value="">매장명</option>
													<c:forEach items="${search2}" var="search2">
														<div>
															<option value="${search2.order_store_name}">${search2.order_store_name}</option>
														</div>
													</c:forEach>
												</select>
											</div>
											<div>
												<select name="searchKeyword3" class="margin_auto">
													<option style="justify-content: center" value="">지역</option>
													<c:forEach items="${search3}" var="search3">
														<div>
															<option value="${search3.order_address1}">${search3.order_address1}</option>
														</div>
													</c:forEach>
												</select>
											</div>

											<div>
												<input type="submit" id="se_submit" value="검색"  />
											</div>

										</div>
									</form>
								</div>

							</div>

							<!--datatablesSimple table 템플릿 / emp-table dataPerPage 필드검색 / tblCustomers pdf 다운   -->

							<table id=""
								class="tblCustomers tblexportData table">
								<thead>
									<tr style="background-color: #f2f2f2";>
										<th>주문일자</th>
										<th>구분</th>
										<th>매장명</th>
										<th>지역</th>
										<th>결제방식</th>
										<th>결제금액</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="sales" items="${storeSalesList}">
										<tr class="colored">
											<td class="center">${sales.order_date}</td>
											<td class="center" >${sales.order_type}</a></td>
											<td class="center">${sales.order_store_name}</td>
											<td class="center">${sales.order_address1}</td>
											<td class="center">${sales.order_price_method}</td>
											<td class="center">${sales.order_price}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>


							<!-- pagaing 처리 -->
							<div>
								<c:if test="${count > 0}">
									<div class="icon_flex">
										<div>
											<c:if test="${startPage > pageBlock}">
												<a
													href="salesStoreList.mdo?pageNum=${startPage-pageBlock}&endDate=${search.endDate}&startDate=${search.startDate}&selectPage=${search.selectPage}&searchKeyword1=${search.searchKeyword1}&searchKeyword2=${search.searchKeyword2}&searchKeyword3=${search.searchKeyword3}"><div
														class="pageging2">이전</div></a>
											</c:if>
										</div>
										<div>
											<div class="icon_flex">
												<c:forEach var="i" begin="${startPage}" end="${endPage}">
													<a
														href="salesStoreList.mdo?pageNum=${i}&endDate=${search.endDate}&startDate=${search.startDate}&selectPage=${search.selectPage}&searchKeyword1=${search.searchKeyword1}&searchKeyword2=${search.searchKeyword2}&searchKeyword3=${search.searchKeyword3}"><div
															class="pageging">${i}</div></a>
												</c:forEach>
											</div>
										</div>
										<div>
											<c:if test="${endPage < pageCount}">
												<a
													href="salesStoreList.mdo?pageNum=${startPage + pageBlock}&endDate=${search.endDate}&startDate=${search.startDate}&selectPage=${search.selectPage}&searchKeyword1=${search.searchKeyword1}&searchKeyword2=${search.searchKeyword2}&searchKeyword3=${search.searchKeyword3}"><div
														class="pageging2">다음</div></a>
											</c:if>
										</div>
									</div>
								</c:if>
							</div>
							<!-- 페이징 종료 -->


						</div>



						<!-- 내용물 end -->

					</div>

				</div>
			</main>

	<!-- 구글차트 -->
	<script type="text/javascript"
		src="https://www.gstatic.com/charts/loader.js"></script>

	<script>
		google.charts.load('current', {packages : [ 'corechart', 'bar' ]});
		google.charts.setOnLoadCallback(getGraph);
		google.charts.load('current', {'packages' : [ 'corechart' ] });
		 google.charts.setOnLoadCallback(drawChart); 

		/* 	google.charts.setOnLoadCallback(getGraph);  // bar차트  */

		/* Bar */

		function getGraph() {
			
			//바차트
			console.log("바차트");
			let color = [ "#3e95cd", "#8e5ea2", "#3cba9f", "#e8c3b9",
					"#c45850", "yellow", "silver" ]
			let showgraph = [ [ 'corechart', '매출' ] ]
			$.ajax({
						url : "/getBarChart.mdo",
						type : "get",
						data : $("#ChartData").serialize(),
						dataType : "json",
						success : function(data) {
							console.log(data);
 							if(data == null){
 								
 							}
							for (let i = 0; i < data.length; i++) {
								let price = Number(data[i].order_price)
								let store = data[i].order_store_name
								showgraph.push([ store,	price ])
								console.log(data[i].order_store_name);
								console.log(price);
							}
							console.log(showgraph);

							var data = google.visualization
									.arrayToDataTable(showgraph);

							var options = {
								title : '지점별 매출현황',
								chartArea : {
									width : '50%'
								},
								hAxis : {
									title : '',
									minValue : 0
								},
								vAxis : {
									title : ''
								}
							};

							var chart = new google.visualization.BarChart(
									document.getElementById('chart_div'));

							chart.draw(data, options);

						}, //success:function
						error : function() {
							alert("실패");
						}
					});//ajax	
		
		//도넛		
		console.log("도넛차트");
		let category = [ [ 'Task', 'Hours per Day' ] ]
		$.ajax({

			url : "/getDoughnutChart.mdo",
			type : "get",
			data : $("#ChartData").serialize(),
			dataType : "json",
			success : function(data) {
				console.log("success" + data);

				for (let i = 0; i < data.length; i++) {
					let num = Number(data[i].order_mt_price);
					category.push([ data[i].order_mt_category1, num ]);
				}
				console.log(category);

				var data = google.visualization.arrayToDataTable(category);

				var options = {
					title : '품목별 매출현황',
					pieHole : 0.4,
				};

				var chart = new google.visualization.PieChart(document
						.getElementById('donutchart'));
				chart.draw(data, options);

			}
		});	
				
	}//get그래프
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