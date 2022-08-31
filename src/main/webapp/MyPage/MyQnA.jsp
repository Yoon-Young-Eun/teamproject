<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">

<title>SEMO-MyPage</title>
<link rel="stylesheet" href="/css/MyQnA.css" />
<link rel="stylesheet" href="/common/css/header.css" />
<link rel="stylesheet" href="/common/css/footer.css" />
<link rel="stylesheet" href="/common/css/button.css" />
<link rel="stylesheet" href="/common/css/sidebar.css" />

<!-- 폰트 -->
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body>
	<div class="whole-wrapper">

		<jsp:include page="/common/header.jsp"></jsp:include>
		<div class="main">
			<div class="space_left">
			<jsp:include page="/common/mypageSide.jsp" />
			</div>
			<div class="main_text">
				<div class="MyQnA_title">
					<h1>내 문의 내역</h1>
				</div>

				<div class="MyQnA_search">
					<div class="search_condition">
						<select class="condition">
							<option>제목</option>
							<option>내용</option>
							<option>제목+내용</option>
						</select>
					</div>
					<div class="search_input">
						<input type="text" onfocus="value=''" value="검색어를 입력해주세요">
					</div>
					<div class="search_btn">
						<a href="#" class="action-button shadow animate blue" style="padding:5px 20px; margin-top:8px;">검색</a>
					</div>
				</div>

				<div class="MyQnA_body">
					<div class="MyQnA_body_title">
						<div class="title_num">번호</div>
						<div class="title_group">분류</div>
						<div class="title_subject">제목</div>
						<div class="title_date">작성일</div>
						<div class="title_answer">답변여부</div>
					</div>

					<div class="MyQnA_body_content">
						<div class="content_num">1</div>
						<div class="content_group">분류</div>
						<div class="content_subject">왜케비싸요?</div>
						<div class="content_date">2022-08-23</div>
						<div class="content_answer">X</div>
					</div>
				</div>

				<div class="end_btn">
					<a href="MyQnA_write.jsp" class="action-button shadow animate blue">글쓰기</a>
				</div>
			</div>
			<div class="space_right"></div>
		</div>

	</div>

</body>

<jsp:include page="/common/footer.jsp" />

</html>