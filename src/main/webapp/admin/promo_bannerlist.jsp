<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<!-- table & hover css -->
<link href="/admin/css/table.css" rel="stylesheet" />

<!-- icon 버튼 css -->
<link href="/admin/css/icon.css" rel="stylesheet"/>

<!--  테이블 필터(중요) -->
<link href="/admin/css/filter.css"rel="stylesheet" />
<script src="/admin/js/filter.js"crossorigin="anonymous"></script>

<!-- 체크박스 js -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="/admin/js/checkbox.js"></script>

</head>
<body class="sb-nav-fixed">

<%@ include file="/admin/ad_menu.jsp"%>

		<div id="layoutSidenav_content">
			<main>

				<div class="container-fluid px-4">
						<h1 class="mt-4">배너관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
						<li class="breadcrumb-item active">배너관리</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							배너관리 페이지 입니다. <a target="_blank"
								href="https://datatables.net/">아무링크</a> .
						</div>
					</div>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-chart-area me-1"></i> 여기는 아래 표 또는 배너관리에 대한 세부제목
						</div>
						
						<!--  여기부터 내용물 -->
					

  
     <!--datatablesSimple table 템플릿 / emp-table dataPerPage 필드검색 / tblCustomers pdf 다운   -->
     <div class="flex" > 
      <input type="button" id="btnExport" value="PDF" class="icon_pdf"/><!-- pdf 버튼 -->
	  <button class="icon_excel" onclick="exportToExcel('tblexportData', 'user-data')">Excel</button><!-- excel -->
	 </div>
	  
	 
	  
	  <!--datatablesSimple table 템플릿 / emp-table dataPerPage 필드검색 / tblCustomers pdf 다운   -->  
    <table id="" class="tblCustomers tblexportData table">
        <thead>
								<tr style="background-color: #f2f2f2";>
									<th width="50" id="check_td"><input type="checkbox"
										name="check" class="allcheck"></th>
									<th>배너번호</th>
									<th>배너이름</th>
									<th>첨부파일</th>
									<th>내용</th>								
									<th>등록일</th>
								</tr>
							</thead>  
							<tbody>
								<!-- for문~(c:forEach)  이 for문의 id값은 "admin"으로 정함!-->
								<c:forEach var="banner" items="${BannerList}">
									<!--  adminList은 컨트롤러에서 model에 저장한 "adminList" 이름임 -->
									<tr class="colored"
										onclick="location.href='readBanner.mdo?banner_no=${banner.banner_no}'">
										<td id="check_td"><input type="checkbox" class="checkone" name="check"></td>
										<td class="center">${banner.banner_no}</td>
										<!--for문의 id값.컬럼명으로 값을 불러옴 -->
										<td>${banner.banner_title}</td>
										<td><img src="${banner.banner_filepath}" width="340px", height="100px"></td>
										<td>${banner.banner_content}</td>										
										<td class="center">${banner.banner_reg_date}</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
<div class="flex">
						<div> <input id="button" type="button" value="등록" onclick="location.href='/insertBanner.mdo'" /> </div>
<!-- 						<div> <input  id="button" type="button"  value="수정" /> </div> -->
						<div> <input id="delBtn" type="button" value="삭제"  onclick="return confirm('선택한 배너를 삭제하시겠습니까?');" /> </div>
						
						</div>

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
												url : "deleteBannerCheck.mdo",
												type : "get",
												traditional : true,
												data : {
													tdArr : tdArr,
												},
												dataType : 'text',
												success : function(data) {
													location.href = "/BannerList.mdo";
													console.log(data);
												}
											});
								});
					});
</script>

						<!-- 내용물 end -->
						<div class="card-footer small text-muted">Updated yesterday
							at 11:59 PM</div>
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
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
    <script src="js/pdf.js"></script>
    
    <!-- excel -->	
    <script src="js/excel.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >	

<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>