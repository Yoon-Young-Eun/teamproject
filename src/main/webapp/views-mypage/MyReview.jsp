<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<!-- font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
<!-- resources -->
<link rel="stylesheet" href="/views-mypage/resources/css/MyreviewList.css"/>
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

<div class = "page-wrapper">
	<!-- 사이드메뉴 -->
	<div class = "sidemenu">
		<jsp:include page="/common/mypageSide.jsp"/>
	</div>
	
	<!-- 본문 -->
	<div class = "content-wrapper">
		<!-- 제목 -->
		<div class = "content-title-wrapper">
			<div class = "content-title">
				<h2>리뷰</h2>
			</div>
			<!-- 소제목 -->
			<div class = "content-subtitle-wrapper">
				<p>총 <b>${count}</b>개의 리뷰</p>		
				<!-- 검색창 --> 
				<div class = "searchbar-wrapper">
					 <!-- 분류 -->
					<div class = "sort">
					</div>	
				</div><!-- content-subtitle-wrapper -->
			</div> <!-- content-title-wrapper -->	
		
		<!-- 주문 상세 내용 -->
		<div class = "order-wrapper">
			<table>
				<thead class = "order-body-title">
					<tr>
						<th class = "num-title" style = "width : 25%;">별점</th>
						<th class = "num-title" style = "width : 25%;">제목</th>
						<th class = "num-title" style = "width : 25%;">내용</th>
						<th class = "content-content-title" style = "width : 25%;">날짜</th>
					
					</tr>
				</thead>
				
				<tbody class = "order-body-content">	
					<c:forEach var="myreviewList" items="${myReviewList}">
					<tr style = "border-bottom : 1px solid #cdcdcd;">
						<td class = "num-content" id="star" style = "width : 33%; text-align : center;">${myreviewList.board_review_rating}</td>
						<td class = "num-content" style = "width : 33%; text-align : center;">${myreviewList.board_review_title}</td>
						<td class = "content-content" style = "width : 33%; text-align : center;">${myreviewList.board_review_content}</td>
						<td class = "address-content" style = "width : 33%; text-align : center;">${myreviewList.board_review_reg_date }</td>
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
									<a href="/myReview.do?pageNum=${startPage-pageBlock}&customer_no=${num}"><i class="fas fa-chevron-left"></i></a>
								</c:if>
								</div>
								<div class="paging-num">
								<c:forEach var="i" begin="${startPage}" end="${endPage}">
										<a href="/myReview.do?pageNum=${i}&customer_no=${num}">${i}</a>
								</c:forEach>
								</div>							
								<div class="paging-text">
								<c:if test="${endPage < pageCount}">
									<a href="/myReview.do?pageNum=${startPage + pageBlock}&customer_no=${num}"><i class="fas fa-chevron-right"></i></a>
								</c:if>
								</div>
								</div>
							</c:if>
						</div>
						<!-- 페이징 종료 -->
			
		</div><!-- order-wrapper -->
	</div><!-- content-title-wrapper -->
	
	
</div><!-- content-wrapper -->	
</div>




</body>
</html>