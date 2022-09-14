<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<p>총 <b>1</b>건의 주문내역</p>
				<!-- 검색창 -->
				<div class = "searchbar-wrapper">
					<!-- 분류 -->
					<div class = "sort">
						<select class = "select">
							<option>제목</option>
							<option>내용</option>
							<option>제목+내용</option>
						</select>
					</div>
					<!-- 검색 -->
					<div class = "searchbar">
						<input type = "text" onfocus = "value = ''" value = "검색어를 입력해주세요.">
						<button>검색</button>
					</div>
				</div> <!-- searchbar-wrapper -->
			</div><!-- content-subtitle-wrapper -->
		</div> <!-- content-title-wrapper -->	
		
		<!-- 주문 상세 내용 -->
		<div class = "order-wrapper">
			
			<div class = "order-body-title">
				<div class = "num-title" style = "width : 10%; text-align : center;">주문번호</div>
				<div class = "content-title" style = "width : 25%; text-align : center;">내용</div>
				<div class = "address-title" style = "width : 25%; text-align : center;">주소</div>
				<div class = "date-title" style = "width : 20%; text-align : center;">주문일자</div>
				<div class = "pickup-title" style = "width : 20%; text-align : center;">배송예정일</div>
				<div class = "status-title" style = "width : 10%; text-align : center;">주문상태</div>
			</div>
			
			<div class = "order-body-content">
				<div class = "num-content" style = "width : 10%; text-align : center;">1</div>
				<div class = "content-content" style = "width : 25%; text-align : center;"><a href = "/views-mypage/MyOrder.jsp">와이셔츠, 모자 외 3건</a></div>
				<div class = "address-content" style = "width : 25%; text-align : center;">서울 강북구 삼각산로 123</div>
				<div class = "date-content" style = "width : 20%; text-align : center;">2022.07.11(월)</div>
				<div class = "pickup-content" style = "width : 20%; text-align : center;">2022.07.15(월)</div>
				<div class = "status-content" style = "width : 10%; text-align : center;">세탁 중</div>
			</div>
		</div><!-- order-wrapper -->
	</div><!-- content-wrapper -->
	
	
</div><!-- page-wrapper -->	

</body>
</html>