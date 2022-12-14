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
<link rel="stylesheet" href="/views-mypage/resources/css/MyOrderlist.css"/>
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
				<h2>내 주문 관리</h2>
			</div>
			<!-- 소제목 -->
			<div class = "content-subtitle-wrapper">
				<p>총 <b>${cnt}</b>건의 주문내역</p>
			</div><!-- content-subtitle-wrapper -->
		</div> <!-- content-title-wrapper -->	
		
		<!-- 주문 상세 내용 -->
		<div class = "order-wrapper">
			<table>
				<thead class = "order-body-title">
					<tr>
						<th class = "num-title" style = "width : 10%;">주문번호</th>
						<th class = "content-content-title" style = "width : 40%;">내용</th>
						<th class = "date-title" style = "width : 20%;">주문일자</th>
						<th class = "pickup-title" style = "width : 20%;">배송예정일</th>
						<th class = "status-title" style = "width : 10%;">주문상태</th>
					</tr>
				</thead>
				
				<tbody class = "order-body-content">	
					<c:forEach var="order" items="${orderlist}">
					
					<tr style = "border-bottom : 1px solid #cdcdcd;">
						<td class = "num-content" style = "width : 10%; text-align : center;">${order.order_no}</td>
						<td class = "content-content" style = "width : 40%; text-align : center;"><a href = "/orderdetail.do?order_no=${order.order_no}&customer_no=${num}&store_code=${order.store_code}">주문 자세히 보기</a></td>
						<td class = "date-content" style = "width : 20%; text-align : center;">${order.order_date}</td>
						<td class = "pickup-content" style = "width : 20%; text-align : center;">${order.order_expected_date}</td>
						<td class = "status-content" style = "width : 10%; text-align : center;">
							<c:choose>
								<c:when test="${order.order_status eq '배송완료' && order.review_status eq 0}">
									${order.order_status}
									<input class="review_btn" type="button" value="리뷰작성" onclick="showPopupReview(${order.order_no});"/>
								  </c:when>
								<c:when test="${order.order_status == '배송완료' && order.review_status == 1}">
									${order.order_status}
									</c:when>
									<c:otherwise>
									${order.order_status}
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
									<a href="/myorderlist.do?pageNum=${startPage-pageBlock}&customer_no=${num}"><i class="fas fa-chevron-left"></i></a>
								</c:if>
								</div>
								<div class="paging-num">
								<c:forEach var="i" begin="${startPage}" end="${endPage}">
										<a href="/myorderlist.do?pageNum=${i}&customer_no=${num}">${i}</a>
								</c:forEach>
								</div>							
								<div class="paging-text">
								<c:if test="${endPage < pageCount}">
									<a href="/myorderlist.do?pageNum=${startPage + pageBlock}&customer_no=${num}"><i class="fas fa-chevron-right"></i></a>
								</c:if>
								</div>
								</div>
							</c:if>
						</div><!-- 페이징 종료 -->
			
		</div><!-- order-wrapper -->
	</div><!-- content-wrapper -->
	<div id="chse" style="display: none">1</div>
	
</div><!-- page-wrapper -->	

<!-------------------- 스크립트 ---------------------->

<script language="javascript">
var a;
   function showPopupReview(r) { 
	   var url = "/getReadReviewPop.do?order_no="+r;
	   let a=window.open(url, "리뷰작성", "width=490, height=620, left=370, top=150");
	   console.log(a);

	   $("#chse").on("DOMSubtreeModified",function(){
	      console.log("d1");
	      console.log(a);
	

	      
	      setTimeout(() => {
	         console.log("d2");
	         location.reload();
	         }, 800);
	      window.open("","_self").close();
	      
	   })
	      
   }
   
  
   
</script>
<jsp:include page="/common/footer.jsp" />
</body>
</html>