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
						<li class="breadcrumb-item active">매출현황</li>
					</ol>
					<div class="card mb-4" style="width: 100%; overflow-x: auto;">
						<div class="card-body">
							기간별 매출현황 페이지 입니다. 
					</div>
					</div>
					<div class="card mb-4">
						

						<!--  여기부터 내용물 -->


						<!--Chart -->
						<div class="chartparent">
							<!-- <div class="chart chart_flex"> -->
								<!-- <div id="chart_div" style="width: 300px; height: 300px;"></div> -->
								<div id="donutchart" style="width: 700px; height: 400px;"></div>
								<div id="chart_div" style="width: 700px; height: 400px;"></div>
								
							<!-- </div> -->
						</div>
						<div class="chart_flex">
						<div>
							<form id="barChart">
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
						</div>
						<div>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<select id=AreaChart name="chartDate" onChange="drawChart()" class="margin_auto" >
							<option value="week">기간선택</option>
							<option value="day">일일</option>
							<option value="week">주간</option>
							<option value="month">월별</option>
							<option value="year">년간</option>
						</select>
						</div>
						</div>			
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
							<form name="selectname" action="salesProductList.mdo"
								method="get">
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
								<form action="salesProductList.mdo" method="get">
									<div class="icon_flex">
										<div>
											검색 조건 : <input type="date" name="startDate" />
										</div>
										<div>
											<input type="date" name="endDate" />
										</div>


										<div>
											<div class="searchBtn">
												<input type="text" id="se_input" name="searchKeyword1"
													placeholder="대분류" />
											</div>
										</div>
										<div>
											<div class="searchBtn">
												<input type="text" id="se_input" name="searchKeyword2"
													placeholder="중분류" />
											</div>
										</div>
										<div>
											<div class="searchBtn">
												<input type="text" id="se_input" name="searchKeyword3"
													placeholder="상품명" />
											</div>
										</div>

										<div>
											<input type="submit" id="se_submit" value="검색" />
										</div>
										<div>
											<input type="reset" id="se_reset" value="초기화" />
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
									<th style="width:20%;">주문일자</th>
									<th>대분류</th>
									<th>중분류</th>
									<th>상품명</th>
									<th>수량</th>
									<th>결제금액</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="sales" items="${productSalesList}">
									<tr class="colored">
										<td class="center">${sales.order_mt_date}</td>
										<td class="center">${sales.order_mt_category1}</a></td>
										<td class="center">${sales.order_mt_category2}</td>
										<td class="center">${sales.order_mt_product}</td>
										<td class="center">${sales.order_mt_count}</td>
										<td class="center">${sales.order_mt_price}</td>
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
												href="salesProductList.mdo?pageNum=${startPage-pageBlock}&endDate=${search.endDate}&startDate=${search.startDate}&selectPage=${search.selectPage}&searchKeyword1=${search.searchKeyword1}&searchKeyword2=${search.searchKeyword2}&searchKeyword3=${search.searchKeyword3}"><div
													class="pageging2">이전</div></a>
										</c:if>
									</div>
									<div>
										<div class="icon_flex">
											<c:forEach var="i" begin="${startPage}" end="${endPage}">
												<a
													href="salesProductList.mdo?pageNum=${i}&endDate=${search.endDate}&startDate=${search.startDate}&selectPage=${search.selectPage}&searchKeyword1=${search.searchKeyword1}&searchKeyword2=${search.searchKeyword2}&searchKeyword3=${search.searchKeyword3}"><div
														class="pageging">${i}</div></a>
											</c:forEach>
										</div>
									</div>
									<div>
										<c:if test="${endPage < pageCount}">
											<a
												href="salesProductList.mdo?pageNum=${startPage + pageBlock}&endDate=${search.endDate}&startDate=${search.startDate}&selectPage=${search.selectPage}&searchKeyword1=${search.searchKeyword1}&searchKeyword2=${search.searchKeyword2}&searchKeyword3=${search.searchKeyword3}"><div
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

	<!-- 구글차트 -->
	<script type="text/javascript"
		src="https://www.gstatic.com/charts/loader.js"></script>

	<script>
		google.charts.load('current', {	'packages' : [ 'corechart' ]});
		google.charts.setOnLoadCallback(getGraph); // bar차트  
		google.charts.setOnLoadCallback(drawChart); //area차트 
		/* Bar */
		function getGraph() {
			console.log("getGraph");
			let color = [ "#3e95cd", "#8e5ea2", "#3cba9f", "#e8c3b9",
					"#c45850", "yellow", "silver" ]
			let showgraph = [ [ 'corechart', '매출' ] ]

			$
					.ajax({
						url : "/getMainBarChart.mdo",
						type : "get",
						data : $("#barChart").serialize(),
						dataType : "json",
						success : function(data) {
							console.log(data);
							if (data == null) {

							}

							for (let i = 0; i < data.length; i++) {
								let date = String(data[i].order_date);
								let price = Number(data[i].order_price)
								showgraph.push([ date, price ])
								console.log(date);
								console.log(price);
							}
							console.log(showgraph);

							var data = google.visualization
									.arrayToDataTable(showgraph);

							var options = {
								title : '기간별매출현황(Bar_Chart)',
								vAxis : {
									title : ''
								},
								hAxis : {
									title : ''
								},
								seriesType : 'bars',
								series : {
									5 : {
										type : 'line'
									}
								}
							};

							var chart = new google.visualization.ComboChart(
									document.getElementById('chart_div'));
							chart.draw(data, options);

						}, //success:function
						error : function() {
							alert("실패");
						}
					});//ajax	

			console.log("도넛차트");
			let category = [ [ 'Task', 'Hours per Day' ] ]
			$.ajax({

				url : "/getDoughnutChart.mdo",
				type : "get",
				data : $("#barChart").serialize(),
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
		}
	</script>
	
	<script>
	function drawChart() {
		console.log("getGraph");
		let color = [ "#3e95cd", "#8e5ea2", "#3cba9f", "#e8c3b9",
				"#c45850", "yellow", "silver" ]
		let showgraph = [ [ 'corechart', '매출' ] ]

		$
				.ajax({
					url : "/getMainBarChart.mdo",
					type : "get",
					data : $("#AreaChart").serialize(),
					dataType : "json",
					success : function(data) {
						console.log(data);
						if (data == null) {

						}

						for (let i = 0; i < data.length; i++) {
							let date = String(data[i].order_date);
							let price = Number(data[i].order_price)
							showgraph.push([ date, price ])
							console.log(date);
							console.log(price);
						}
						console.log(showgraph);

						var data = google.visualization
								.arrayToDataTable(showgraph);

						var options = {
							title : '기간별매출현황(Bar_Chart)',
							vAxis : {
								title : ''
							},
							hAxis : {
								title : ''
							},
							seriesType : 'bars',
							series : {
								5 : {
									type : 'line'
								}
							}
						};

						var chart = new google.visualization.ComboChart(
								document.getElementById('chart_div'));
						chart.draw(data, options);

					}, //success:function
					error : function() {
						alert("실패");
					}
				});
}
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