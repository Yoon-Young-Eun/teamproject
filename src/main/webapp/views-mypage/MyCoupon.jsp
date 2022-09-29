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
	<jsp:include page = "/common/quick-menu.jsp"/>
	<!-- 본문 -->
	<div class = "content-wrapper">
		<!-- 제목 -->
		<div class = "content-title-wrapper">
			<div class = "content-title">
				<h2>할인쿠폰</h2>
			</div>
			<!-- 소제목 -->
			<div class = "content-subtitle-wrapper">
				<p>총 <b>${cnt2}</b>개의 쿠폰</p>		
				<!-- 검색창 --> 
				<a href="#" class="tip">쿠폰 이용안내&nbsp;<i class="far fa-question-circle"></i>
				<span>
					*쿠폰 1개당 1회 적용할 수 있습니다.<br>
					*할인쿠폰별 적용대상이 다를 수 있습니다.<br>
					*최소결제금액 조건에 맞는 쿠폰이 있을 수 있습니다.<br>
					*결제 취소 시 사용된 쿠폰은 환불되지 않습니다.
				</span></a>
			</div><!-- content-subtitle-wrapper -->
			</div> <!-- content-title-wrapper -->	
		
		<!-- 주문 상세 내용 -->
		<div class = "order-wrapper">
			<table>
				<thead class = "order-body-title">
					<tr>
						<th class = "num-title" style = "width : 30%;">쿠폰명</th>
						<th class = "content-content-title" style = "width : 20%;">할인금액</th>
						<th class = "address-title" style = "width : 50%;">유효기간</th>
					</tr>
				</thead>
				
				<tbody class = "order-body-content">	
					<c:forEach var="couponlist" items="${couponlist}">
					<tr style = "border-bottom : 1px solid #cdcdcd;">
						<td class = "num-content" style = "width : 30%; text-align : center;">${couponlist.coupon_management_name}</td>
						<td class = "content-content" style = "width : 20%; text-align : center;">${couponlist.coupon_management_price}</td>
						<td class = "address-content" style = "width : 50%; text-align : center;">${couponlist.coupon_management_start_date} - ${couponlist.coupon_management_end_date}</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div><!-- order-wrapper -->
	</div><!-- content-title-wrapper -->
</div><!-- content-wrapper -->	

<jsp:include page="/common/footer.jsp"/> 

</body>
</html>