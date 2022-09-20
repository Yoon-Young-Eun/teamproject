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
<link rel="stylesheet" href="/views-mypage/resources/css/MyAsklist.css"/>
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
				<h2>문의내역</h2>
			</div>
			<!-- 소제목 -->
			<div class = "content-subtitle-wrapper">
				<p>총 <b>5</b>개의 글</p>		
				<!-- 검색창 --> 
				<div class = "searchbar-wrapper">
					 <!-- 분류 -->
					<div class = "sort">
						<select class = "select">
							<option>제목</option>
							<option>내용</option>
							<option>제목+내용</option>
						</select>
						<button>검색</button>
					</div>	
				</div><!-- content-subtitle-wrapper -->
			</div> <!-- content-title-wrapper -->	
		
		<!-- 주문 상세 내용 -->
		<div class = "order-wrapper">
			<table>
				<thead class = "order-body-title">
					<tr>
						<th class = "check-title" style = "width : 10%; text-align : center;"><input type = "checkbox" /></th>
						<th class = "num-title" style = "width : 10%;">번호</th>
						<th class = "content-content-title" style = "width : 30%;">제목</th>
						<th class = "address-title" style = "width : 20%;">날짜</th>
						<th class = "address-title" style = "width : 20%;">비고</th>
					</tr>
				</thead>
				
				<tbody class = "order-body-content">	
					<tr style = "border-bottom : 1px solid #cdcdcd;">
						<td class = "check-title" style = "width : 10%; text-align : center;"><input type = "checkbox" /></td>
						<td class = "num-content" style = "width : 10%; text-align : center;">1</td>
						<td class = "num-content" style = "width : 30%; text-align : center;"><a href = "#">장난하세요?</a></td>
						<td class = "content-content" style = "width : 20%; text-align : center;">2022-09-20</td>
						<td class = "address-content" style = "width : 20%; text-align : center;">세탁문의</td>
					</tr>
				</tbody>
			</table>
		</div><!-- order-wrapper -->
	</div><!-- content-title-wrapper -->
	
	
</div><!-- content-wrapper -->	
</div>

</body>
</html>