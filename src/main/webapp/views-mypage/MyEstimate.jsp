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
<link rel="stylesheet" href="/views-mypage/resources/css/Estimate.css"/>
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
<form action="/OrderSpecial1.do?customer_no=${getEstimate.customer_no}&order_estimate_cm_no=${getEstimate.estimate_cm_no}">
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
				<h2>접수내역</h2>
			</div>
			<!-- 소제목 -->
			<div class = "content-subtitle-wrapper">
				
			</div>
		</div><!-- content-title-wrapper -->
		
		<!-- 내용 -->
		<!-- 주문상세 -->
			<div class = "estimate-wrapper">
				<!-- 접수한 견적서 정보 -->
<!-- 				<div class = "order-item-title"> -->
<!-- 					<h3>접수내역</h3> -->
<!-- 				</div> -->
				<div class = "order-customer-detail">
						<div class = "order-customer-name" style = "display : flex;">
							<p class = "customer-title">접수번호</p>
							<input type="text" class = "cutomer-content" value="${getEstimate.estimate_cm_no }" name="estimate_cm_no" readonly>
						</div>
						<div class = "order-customer-phone" style = "display : flex;">
							<p class = "customer-title">접수일자</p>
							<input type="text" class = "cutomer-content" value="${getEstimate.estimate_date }" name="estimate_date" readonly>
						</div>
						<div class = "order-customer-phone" style = "display : flex;">
							<p class = "customer-title">세탁종류</p>
							<input type="text" class = "cutomer-content" value="${getEstimate.estimate_type }" name="estimate_type" readonly>
						</div>
						<div class = "order-customer-phone" style = "display : flex;">
							<p class = "customer-title">연락처</p>
							<input type="text" class = "cutomer-content" value="${getEstimate.customer_phone }" name="customer_phone" readonly>
						</div>
						<div class = "order-customer-phone" style = "display : flex;"> 
							<p class = "customer-title">주소</p>						
							<input type="text" class = "cutomer-content" value="${getEstimate.customer_address1}" name="customer_address1" readonly>
							<input type="text" class = "adad" value="${getEstimate.customer_address2}" name="customer_address2" readonly>
						</div>
						<div class = "order-customer-phone" style = "display : flex;"> 
							<p class = "customer-title">출입비밀번호</p>						
							<input type="text" class = "cutomer-content" name="cm_gate_passwd" placeholder="ex ) #0000">
						</div>
						<div class = "order-customer-phone" style = "display : flex;"> 
							<p class = "customer-title">내용</p>						
							<input type="text" class = "cutomer-content" value="${getEstimate.estimate_content }" name="" readonly>
						</div>
						<div class = "order-customer-address"> 
							<p class = "customer-title">첨부이미지</p>						
							<span class = "cutomer-content" id="im">
							<c:forEach var="est_img" items="${estiimg}">
									<div class="imgcon"><img onclick="window.open(this.src)" hspace="0" src="${est_img.estimate_filepath }"></div>
							</c:forEach>
							</span>
						</div>
					</div>
				<!-- 답변 정보 -->
				<div class = "order-customer-wrapper">
					<div class = "order-customer-title">
						<h3>견적내역</h3>
					</div>
					<div class = "order-customer-detail">
						<div class = "order-customer-name" style = "display : flex;">
							<p class = "customer-title">견적일자</p>
							<input type="text" class = "cutomer-content" value="${getAd.estimate_reply_date }" name="" readonly>
						</div>
						<div class = "order-customer-phone" style = "display : flex;">
							<p class = "customer-title">내용</p>
							<input type="text" class = "cutomer-content" value="${getAd.estimate_type_content }" name="estimate_content" readonly>
						</div>
						<div class = "order-customer-address" style = "display : flex;"> 
							<p class = "customer-title">금액</p>						
							<input type="text" class = "cutomer-content" value="${getAd.estimate_price }" name="estimate_price" readonly>
						</div>
					</div>
				</div>
								
			</div><!-- order-item-wrapper -->
		<div class="btn">
			<input type="submit" id="btn" class="action-button shadow animate blue" value="결제">
			<input type="button" id="btn_c" class="action-button shadow animate red" onclick="location.href='/updateEstimate.do?customer_no=${getEstimate.customer_no}&estimate_cm_no=${getEstimate.estimate_cm_no }'" value="취소">
		</div>
	</div> <!-- content-wrapper -->
	
</div>	<!-- page-wrapper -->	
</form>
<jsp:include page="/common/footer.jsp" />
</body>
</html>