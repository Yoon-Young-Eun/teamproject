<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SEMO-MyPage</title>
<link rel="stylesheet" href="../css/MyQnA.css" />

</head>
<body>
<div class="wrapper">
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
			<a href="#" class="action-button shadow animate blue">검색</a>
		</div>
	</div>

	<div class="MyQnA_body">
		<div class="MyQnA_body_title">
			<div class="title_num">번호</div>
			<div class="title_subject">제목</div>
			<div class="title_date">작성일</div>
			<div class="title_answer">답변여부</div>
		</div>
		
		<div class="MyQnA_body_content">
			<div class="content_num">1</div>
			<div class="content_subject">왜케비싸요?</div>
			<div class="content_date">2022-08-23</div>
			<div class="content_answer">X</div>
		</div>
	</div>
	
	<div class="end_btn">
			<a href="#" class="action-button shadow animate blue">글쓰기</a>
		</div>
</div>
</body>
</html>