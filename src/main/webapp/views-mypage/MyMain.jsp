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
<link rel="stylesheet" href="/views-mypage/resources/css/MyMain.css"/>
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
		<!-- 요약 박스 -->
		<div class = "top-item-wrapper">
			
			<div class = "top-order" onclick = "location.href = '/myorderlist.do?customer_no=${num}'">
				<h3>MY 주문 <i class="fas fa-chevron-right"></i></h3>
				<p class = "num">${cnt}</p>
			</div>
			<div class = "top-coupon">
				<h3>MY 쿠폰 <i class="fas fa-chevron-right"></i></h3>
				<p class = "num">${cnt2}</p>
			</div>
			<div class = "top-ask">
				<h3>MY 문의 <i class="fas fa-chevron-right"></i></h3>
				<p class = "num">5</p>
			</div>
		</div>
		<!-- 최근 주문 -->

		<div class = "order-wrapper">
			<div class = "order-title">
				<h2>최근 주문</h2>
				<a href = "/myorderlist.do?customer_no=${num}">더보기<i class="fas fa-chevron-right"></i></a>
			</div>
			
			<table>
				<thead class = "order-body-title">
					<tr>
						<th class = "num-title" style = "width : 10%;">주문번호</th>
						<th class = "content-content-title" style = "width : 20%;">내용</th>
						<th class = "address-title" style = "width : 20%;">주소</th>
						<th class = "date-title" style = "width : 20%;">주문일자</th>
						<th class = "pickup-title" style = "width : 20%;">배송예정일</th>
						<th class = "status-title" style = "width : 10%;">주문상태</th>
					</tr>
				</thead>
				
				<tbody class = "order-body-content">
					<c:forEach var="orderlist" items="${orderlist}">
					<tr style = "border-bottom : 1px solid #cdcdcd;">
						<td class = "num-content" style = "width : 10%; text-align : center;">${orderlist.order_no}</td>
						<td class = "content-content" style = "width : 20%; text-align : center;"><a href = "/orderdetail.do?order_no=${orderlist.order_no}&customer_no=${num}&store_code=${orderlist.store_code}">주문 자세히 보기</a></td>
						<td class = "address-content" style = "width : 20%; text-align : center;">${orderlist.order_address1}</td>
						<td class = "date-content" style = "width : 20%; text-align : center;">${orderlist.order_date}</td>
						<td class = "pickup-content" style = "width : 20%; text-align : center;">${orderlist.order_expected_date}</td>
						<td class = "status-content" style = "width : 10%; text-align : center;">${orderlist.order_status}</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div><!-- content-wrapper -->
</div><!-- page-wrapper -->

</body>
</html>