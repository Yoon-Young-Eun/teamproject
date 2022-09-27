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
<!-- 		
				 검색창
				<div class = "searchbar-wrapper">
					 분류
					<div class = "sort">
						<select class = "select">
							<option>최근순</option>
							<option>내용</option>
							<option>제목+내용</option>
						</select>
					</div>
					검색
					<div class = "searchbar">
						<input type = "text" onfocus = "value = ''" value = "검색어를 입력해주세요.">
						<button>검색</button>
					</div>
				</div> 
				searchbar-wrapper
 -->				
			</div><!-- content-subtitle-wrapper -->
		</div> <!-- content-title-wrapper -->	
		
		<!-- 주문 상세 내용 -->
		<div class = "order-wrapper">
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
						<td class = "status-content" style = "width : 10%; text-align : center;">
							<c:choose>
								<c:when test="${orderlist.order_status eq '배송완료'}">
									${orderlist.order_status}
									<input type="button" value="리뷰작성" onclick="showPopupReview();">
								  </c:when>
								<c:otherwise>
									${orderlist.order_status}
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
	
	
</div><!-- page-wrapper -->	

<!-------------------- 스크립트 ---------------------->

<script language="javascript">
  function showPopupReview() { window.open("/views-mypage/MyReview_popup.jsp", "리뷰작성", "width=490, height=620, left=370, top=150, resizeable=none"); }
  </script>

</body>
</html>