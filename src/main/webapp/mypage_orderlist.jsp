<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SEMO-MyPage</title>
<link rel="stylesheet" href="css/mypage_orderlist.css" />

</head>
<body>
<div class="wrapper">
	<div class="orderlist_title">
		<h1>주문 내역</h1>
	</div>

	<div class="orderlist_search">
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

	<div class="orderlist_body">
		<div class="orderlist_body_title">
			<div class="title_work">주문상태</div>
			<div class="title_item">내용</div>
			<div class="title_address">주소</div>
			<div class="title_order_date">주문일자</div>
			<div class="title_pickup_date">픽업일자</div>
			
		</div>
		
		<div class="orderlist_body_content">
			<div class="content_work">주문완료</div>
			<div class="content_item">컬러 와이셔츠/면,마 소재 외 2건asdfasdfasdfasdfasdfasd</div>
			<div class="content_address">서울 강북구 삼각산로 123fasdfasdfasdfasdfasdf</div>
			<div class="content_order_date">2022.07.11(월)</div>
			<div class="content_pickup_date">2022.07.15(금)</div>
		</div>
		
		<div class="orderlist_body_content">
			<div class="content_work">주문완료</div>
			<div class="content_item">컬러 와이셔츠/면,마 소재 외 2건asdfasdfasdfasdfasdfasdf</div>
			<div class="content_address">서울 강북구 삼각산로 123</div>
			<div class="content_order_date">2022.07.11(월)</div>
			<div class="content_pickup_date">2022.07.15(금)</div>
		</div>
		
		<div class="orderlist_body_content">
			<div class="content_work">주문완료</div>
			<div class="content_item">컬러 와이셔츠/면,마 소재 외 2건</div>
			<div class="content_address">서울 강북구 삼각산로 123</div>
			<div class="content_order_date">2022.07.11(월)</div>
			<div class="content_pickup_date">2022.07.15(금)</div>
		</div>
	</div>
	
	<div class="end_btn">
			<a href="#" class="action-button shadow animate blue">글쓰기</a>
		</div>
	</div>

</body>
</html>