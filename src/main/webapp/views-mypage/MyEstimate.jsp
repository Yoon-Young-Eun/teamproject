<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>SEMO</title>

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
				<p>견적내역서</p>
			</div>
		</div><!-- content-title-wrapper -->
		
		<!-- 내용 -->
		<!-- 주문상세 -->
			<div class = "estimate-wrapper">
				<!-- 접수한 견적서 정보 -->
				<div class = "order-item-title">
					<h3>접수내역</h3>
				</div>
				<div class = "order-item-list">
					<div class = "order-item-name" name="estimate_cm_no">접수번호</div>
					<div class = "order-item-cnt" name="estimate_reg_date">접수일자</div>
					<div class = "order-item-price" name="estimate_content">내용</div>	
					<div class = "order-item-img" name="estimate_img">첨부이미지</div>
				</div>
				<!-- 답변 정보 -->
				<div class = "order-customer-wrapper">
					<div class = "order-customer-title">
						<h3>견적내역</h3>
					</div>
					<div class = "order-customer-detail">
						<div class = "order-customer-name" style = "display : flex;">
							<p class = "customer-title">견적일자</p>
							<span class = "cutomer-content"></span>
						</div>
						<div class = "order-customer-phone" style = "display : flex;">
							<p class = "customer-title">내용</p>
							<span class = "cutomer-content"></span>
						</div>
						<div class = "order-customer-address" style = "display : flex;"> 
							<p class = "customer-title">금액</p>						
							<span class = "cutomer-content"></span>
						</div>
					</div>
				</div>
								
			</div><!-- order-item-wrapper -->
	</div> <!-- content-wrapper -->
</div>	<!-- page-wrapper -->	

</body>
</html>