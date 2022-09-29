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
<link rel="stylesheet" href="/views-mypage/resources/css/MyAskDetail.css"/>
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
	<jsp:include page = "/common/quick-menu.jsp"/>
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
		
		<!-- 문의 내용 -->
		<div class = "ask-wrapper">
			<div class = "article-wrapper">
				<h3>문의 내용</h3>
				<form action = "/myaskedit.do">
				<div class = "article-title-wrapper">
					<div class = "article-title" >제목</div>
					<div class = "article-title-text"> [${askdetail.board_qna_type }] <b>${askdetail.board_qna_title}</b></div>
				</div>
				<div class = "article-content-wrapper">
					<div class = "article-content">내용</div>
					<div class = "article-content-text">${askdetail.board_qna_content}</div>
				</div>
				<c:choose>
					<c:when test = "${askdetail.board_qna_status eq 0}">
						<div style = "display : flex; justify-content : center; margin-top : 50px;"class = "article-btn-wrapper">
							<a href="/myasklist.do?customer_no=${num}" class="action-button shadow animate grey" style = "height : 30px;">닫기</a>	
							<a href = "/myaskedit.do?board_qna_no=${askdetail.board_qna_no }&customer_no=${num}" id = "insert" class="action-button shadow animate blue" style = "height : 30px;">수정</a>	
						</div>
					</c:when>
				</c:choose>
				</form>
			</div>
			<!-- 답변 내용 -->
			<c:choose>
				<c:when test = "${askdetail.board_qna_status eq 0}">

				</c:when>
				<c:otherwise>
									<div class = "answer-wrapper">
						<h3>답변 내용</h3>
						<div class = "article-title-wrapper">
							<div class = "article-title">제목</div>
							<div class = "article-title-text">[문의답변] <b>${askdetail.admin_qna_title}</b></div>
						</div>
						<div class = "article-content-wrapper">
							<div class = "article-content">내용</div>
							<div class = "article-content-text">${askdetail.admin_qna_content}</div>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
		
	</div>
</div>	
	<jsp:include page="/common/footer.jsp" />
</body>
</html>