<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>[세모]세탁의 모든것</title>

<!-- font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
<!-- resources -->
<link rel="stylesheet" href="/views-mypage/resources/css/MyEstimatelist.css"/>
<link rel="stylesheet" href="/common/css/header.css"/>
<link rel="stylesheet" href="/common/css/button.css"/>
<link rel="stylesheet" href="/common/css/footer.css"/>
<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
</head>
<body>

<jsp:include page="/common/logined-header.jsp"/>

	<div class="page-wrapper">
		<!-- 사이드메뉴 -->
		<div class="sidemenu">
			<jsp:include page="/common/mypageSide.jsp" />
		</div>
<jsp:include page = "/common/quick-menu.jsp"/>
		<!-- 본문 -->
		<div class="content-wrapper">
			<!-- 제목 -->
			<div class="content-title-wrapper">
				<div class="content-title">
					<h2>내 견적 관리</h2>
				</div>
				<!-- 소제목 -->
				<div class="content-subtitle-wrapper">
						<p>총 <b>${cnt4}</b>건의 주문내역</p>
				</div>

			</div>
		
	
			<!-- 주문 상세 내용 -->
		<div class = "order-wrapper">
			
			<table>
					<thead class = "order-body-title">
						<tr>
							<th class = "num-title" style = "width : 10%;">견적번호</th>
							<th class = "content-content-title" style = "width : 30%;">세탁분류</th>
							<th class = "address-title" style = "width : 30%;">내용</th>
							<th class = "date-title" style = "width : 30%;">요청날짜</th>
							<th class = "status-title" style = "width : 10%;">주문상태</th>
					</thead>
					<tbody class="order-body-content">
						<c:forEach var="e" items="${elist}">
						<tr style = "border-bottom : 1px solid #cdcdcd;">
							<td class = "address-content" style ="width : 10%; text-align : center;">${e.estimate_cm_no}</a></td>
							<td class = "address-content" style = "width : 30%; text-align : center;">${e.estimate_type}</td>
							<td class = "address-content" style ="width : 30%; text-align : center;"><a href = "/myestimate.do?customer_no=${e.customer_no}&estimate_cm_no=${e.estimate_cm_no}">주문 자세히 보기</a></td>
							<td class = "address-content" style = "width : 30%; text-align : center;">${e.estimate_date}</td>
							<td class = "address-content" style = "width : 10%; text-align : center;">
							<c:choose>
								<c:when test="${e.estimate_status eq '견적대기'}">
									견적대기
								</c:when>
								<c:when test="${e.estimate_status eq '결제완료'}">
									결제완료
								</c:when>
								<c:when test="${e.estimate_status eq '견적발송'}">
									<p style = "height :30px;">견적완료</p>
									<button onclick ="location.href='/myestimate.do?customer_no=${e.customer_no}&estimate_cm_no=${e.estimate_cm_no}'">견적서보기</button>
								</c:when>
								<c:otherwise>
									주문취소
								</c:otherwise>
							</c:choose>
						</td>
						</tr>
						</c:forEach>
					</tbody>
						</table>

			<!-- pagaing 처리 -->
				
						<div class = "paging-wrapper">					
							<c:if test="${count > 0}">
								<div class="paging">
							    <div class="paging-text">
								<c:if test="${startPage > pageBlock}"> <!-- 시작번호가 5보다 크면, 앞에 '이전'을 붙여줌 -->
									<a href="/getmyEstimate.do?pageNum=${startPage-pageBlock}&customer_no=${num}"><i class="fas fa-chevron-left"></i></a>
								</c:if>
								</div>
								<div class="paging-num">
								<c:forEach var="i" begin="${startPage}" end="${endPage}">
										<a href="/getmyEstimate.do?pageNum=${i}&customer_no=${num}">${i}</a>
								</c:forEach>
								</div>							
								<div class="paging-text">
								<c:if test="${endPage < pageCount}">
									<a href="/getmyEstimate.do?pageNum=${startPage + pageBlock}&customer_no=${num}"><i class="fas fa-chevron-right"></i></a>
								</c:if>
								</div>
								</div>
							</c:if>
						</div><!-- 페이징 종료 -->
				</div><!-- order-wrapper -->		
			</div><!-- content-subtitle-wrapper -->
	</div><!-- page-wrapper -->
<jsp:include page="/common/footer.jsp" />
</body>
</html>