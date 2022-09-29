<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="/admin/ad_header.jsp"%>
<link rel="stylesheet" href="/admin/css/main_info_card.css" />
<link rel="stylesheet" href="/admin/css/chart.css"/>
</head>
<body class="sb-nav-fixed">
    
<%@ include file="/admin/ad_menu.jsp"%>
            
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">대시보드</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">세모(세탁의 모든 것) 대시보드</li>
                        </ol>
                        
                        
<!-- ----------------------------- 대쉬보드 첫째 줄 카드 시작 ----------------------------------------- -->                        
                        
                        
                        <div class="main_info_card">
                        <div class="main_info_card_head">
                        <div class="main_info_card_head_title">오늘의 할일</div>
                        </div>
                        <div class="main_info_card_body">
                        <%-- <div class="order"><div class="order_info"><a href="/adminOrderList.mdo?startDate=&endDate=&searchCondition=order_status&searchKeyword=배송완료">완료된주문</a></div><div class="red_box"><div class="order_info_print">${OrderInfoEnd}</div></div></div> --%>
                        <div class="order"><div class="order_info"><a href="/adminOrderList.mdo?startDate=&endDate=&searchCondition=order_status&searchKeyword=주문취소">주문취소</a></div><div class="red_box"><div class="order_info_print">${OrderInfoCC}</div></div></div>
                        <div class="order"><div class="order_info"><a href="/adminOrderList.mdo?startDate=&endDate=&searchCondition=order_status&searchKeyword=수거대기">신규주문</a></div><div class="red_box"><div class="order_info_print">${OrderInfo}</div></div></div>
                        <div class="order"><div class="order_info"><a href="/adminOrderList.mdo?startDate=&endDate=&searchCondition=order_status&searchKeyword=세탁중">배달예정(세탁중)</a></div><div class="red_box"><div class="order_info_print">${OrderInfoIng}</div></div></div>
                        <div class="order"><div class="order_info"><a href="/getEstimateList.mdo?searchCondition=estimate_status&searchKeyword=견적대기">견적요청</a></div><div class="red_box"><div class="order_info_print">${EstimateInfo}</div></div></div>
                        <div class="order"><div class="order_info"><a href="/QnAList.mdo">Q&A문의</a></div><div class="red_box"><div class="order_info_print">${QnAInfo}</div></div></div>
                        </div>
                        </div>
                        
                        
<!-- ----------------------------- 대쉬보드 첫째 줄 카드 끝 ----------------------------------------- -->                        
                        
                        
                        
                        
<!-- ----------------------------- 대쉬보드 둘째 줄 카드 시작 --------------------------------------- -->                        
                        
                        
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
<!--                                 <div class="card bg-primary text-white mb-4"> -->
                                <div class="card bg-transparent mb-4">
                                    <div class="card_body">
                                    <div class="card-body-wrapper"><div class="card-body">일 매출</div></div>
                                    <div class="card-body-static">\ <fmt:formatNumber value="${OrderTodaySales}" pattern="#,###"/></div></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
<!--                                         <a class="small text-white stretched-link" href="#">View Details</a> -->
                                        <a class="small text-dark stretched-link" href="/salesProductList.mdo">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
<!--                                 <div class="card bg-warning text-white mb-4"> -->
                                <div class="card bg-transparent mb-4">
                                    <div class="card_body">
                                    <div class="card-body-wrapper"><div class="card-body">월 매출</div></div>
                                    <div class="card-body-static">\ <fmt:formatNumber value="${OrderMonthSales}" pattern="#,###"/></div></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-dark stretched-link" href="/salesProductList.mdo">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
<!--                                 <div class="card bg-success text-white mb-4"> -->
                                <div class="card bg-transparent mb-4">
                                    <div class="card_body">
                                    <div class="card-body-wrapper"><div class="card-body">연 매출</div></div>
                                    <div class="card-body-static">\  <fmt:formatNumber value="${OrderYearSales}" pattern="#,###"/> </div></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-dark stretched-link" href="/salesProductList.mdo">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
<!--                                <div class="card bg-danger text-white mb-4">-->
                                <div class="card bg-transparent mb-4">
                                    <div class="card_body">
                                    <div class="card-body-wrapper"><div class="card-body">방문자</div></div>

                                    <div class="visitor_img"><img src="/admin/image/visitor.png" width="15px" height="15px"></div>&nbsp;&nbsp;
                                    <div class="card-body-static">${VcountInfo}</div></div>

                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small  text-dark stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
<!-- ----------------------------- 대쉬보드 둘째 줄 카드 끝 --------------------------------------- -->                        
                        
                        
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4 chartparent">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        기간별매출현황(Area_Chart) &nbsp;&nbsp;<a class="small text-dark stretched-link" href="/salesStoreList.mdo">View Details</a>
                                    </div>
                                    <div class="card-body chartparent">
                                    <div id="chart_area" class="chart" style="width: 600px; height: 400px;"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        품목별 매출현황(Doughnut_Chart) &nbsp;&nbsp;<a class="small text-dark stretched-link" href="/salesProductList.mdo">View Details</a>
                                    </div>
                                    <div class="card-body chartparent">
                                    <div id="donutchart" class="chart" style="width: 600px; height: 400px;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                지점별 매출현황(Bar_Chart) &nbsp;&nbsp;<a class="small text-dark stretched-link" href="/salesProductList.mdo">View Details</a>
                            </div>
                            <div class="card-body chartparent">   
                                 <div id="chart_div" class="chart" style="width: 1200px; height: 400px;"></div>     
                            </div>
                        </div>
                    </div>
                </main>


<!-- 구글차트 -->
	<script type="text/javascript"
		src="https://www.gstatic.com/charts/loader.js"></script>

<script>
google.charts.load('current', {'packages' : [ 'corechart' ]});
google.charts.setOnLoadCallback(getGraph); // bar차트  
/* google.charts.setOnLoadCallback(drawChart); //area차트  */
/* Bar */
function getGraph() {
	console.log("getGraph");
	let color = [ "#3e95cd", "#8e5ea2", "#3cba9f", "#e8c3b9",
			"#c45850", "yellow", "silver" ]
	let showgraph = [ [ 'corechart', '매출' ] ]

	$.ajax({
				url : "/getMainBoardBar.mdo",
				type : "get",
				dataType : "json",
				success : function(data) {
					console.log(data);
					if (data == null) {

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
						title : '',
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

	/* Area */
	console.log('AreaChart 차트');
	let categorys = [['Date', '매출', '영업이익', '순이익']]
	
	$.ajax({
				url : "/getMainBoardArea.mdo",
				type : "get",
				dataType : "json",
				success : function(data) {
					console.log("success" + data);

					for (let i = 0; i < data.length; i++) {
						let price = Number(data[i].order_mt_price)
						let profits = Number(data[i].productVo.product_business_profits)
						let net = Number(data[i].productVo.product_net_profit)
						let date = data[i].order_mt_date
						categorys.push([ date, price, profits, net ]);
						console.log(price);
						console.log(profits);
						console.log(net);
						console.log(date);
					}
					console.log("최종" + categorys);

					var data = google.visualization.arrayToDataTable(categorys);

					var options = {
						title : '',
						hAxis : {
							title : '',
							titleTextStyle : {
								color : '#8e5ea2'
							}
						},
						vAxis : {
							minValue : 0
						}
					};

					var chart = new google.visualization.AreaChart(
							document.getElementById('chart_area'));
					chart.draw(data, options);

				}
			});
	
	
	//도넛		
	console.log("도넛차트");
	let category = [ [ 'Task', 'Hours per Day' ] ]
	$.ajax({

		url : "/getMainBoardDoughnut.mdo",
		type : "get",
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
				title : '',
				pieHole : 0.4,
			};

			var chart = new google.visualization.PieChart(document
					.getElementById('donutchart'));
			chart.draw(data, options);

		}
	});
	
}
</script>


</script>
<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>