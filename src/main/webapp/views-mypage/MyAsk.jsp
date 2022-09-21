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
<link rel="stylesheet" href="/views-mypage/resources/css/MyAsk.css"/>
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
				<h2>문의하기</h2>
			</div>
			<!-- 소제목 -->
			<div class = "content-subtitle-wrapper">
				<p>당신의 목소리에 귀기울이겠습니다.</p>		
			</div><!-- content-subtitle-wrapper -->
		</div> <!-- content-title-wrapper -->	
		
		<!-- 글쓰기 -->
		<div class = "article-wrapper">
			<div class = "sort-wrapper">
				<div class = "sort-title">분류</div>
				<div class = "sort-content">
					<select>
						<option>배송문의</option>
						<option>세탁문의</option>
						<option>기타문의</option>
					</select>
				</div>
			</div>
			<div class = "article-title-wrapper">
				<div class = "article-title-title">제목</div>
				<input class = "artice-title-content" type = "text" placeholder = "제목을 입력해주세요.">
			</div>
			<div class = "article-content-wrapper">
				<div class = "article-content-title">내용</div>
				<textarea class = "artice-content-content" placeholder = "내용을 입력해주세요."></textarea>
			</div>
			<div></div>
		</div>
		<div class = "button-wrapper">
			<a href="#" class="action-button shadow animate grey" style = "height : 30px;">취소</a>	
			<a href="/insertask.do" class="action-button shadow animate blue" style = "height : 30px;">등록</a>	
		</div>
	
	</div><!-- content-wrapper -->	
</div><!-- page-wrapper -->

</body>
</html>