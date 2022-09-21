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
<link rel="stylesheet" href="/views-mypage/resources/css/MyCoupon.css"/>
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
				<p>총 <b>${cnt2}</b>개의 리뷰</p>		
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
						<th class = "num-title" style = "width : 33%;">번호</th>
						<th class = "num-title" style = "width : 33%;">제목</th>
						<th class = "content-content-title" style = "width : 33%;">날짜</th>
						<th class = "address-title" style = "width : 33%;">비고</th>
					</tr>
				</thead>
				
				<tbody class = "order-body-content">	
					<c:forEach var="couponlist" items="${couponlist}">
					<tr style = "border-bottom : 1px solid #cdcdcd;">
						<td class = "num-content" style = "width : 33%; text-align : center;">${couponlist.coupon_management_name}</td>
						<td class = "content-content" style = "width : 33%; text-align : center;">${couponlist.coupon_management_price}</td>
						<td class = "address-content" style = "width : 33%; text-align : center;">${couponlist.coupon_management_start_date} - ${couponlist.coupon_management_end_date}</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div><!-- order-wrapper -->
	</div><!-- content-title-wrapper -->
	
	
</div><!-- content-wrapper -->	
</div>

</body>
</html>