<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<link href="/admin/css/item_insert.css" rel="stylesheet" />

</head>
<body class="sb-nav-fixed">

<%@ include file="/admin/ad_menu.jsp"%>

		<div id="layoutSidenav_content">
			<main>

				<div class="container-fluid px-4">
					<h1 class="mt-4">상품 등록</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="/index.mdo">대시보드</a></li>
						<li class="breadcrumb-item active">상품 등록</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">상품을 등록합니다.</div>
					</div>
					
<form action="/insertProduct.mdo" method="GET" onsubmit="return confirm('신규 상품을 등록하시겠습니까?');">			
<div class="pop_flex">
<div class="popup_wrapper">
<div class="popup_head"><h1>상품 등록</h1>
<div class="popup_head_index">
분류를 구분하여 상품을 등록합니다
</div>
</div>

<div class="popup_title_wrap">
<div class="popup_title">
<div class="popup_title_text">
대분류
</div>
<div class="popup_title_select">
<select class="item_level" name="product_category_parent"><option value="0">대분류</option>
	<option value="상의">상의</option>
	<option value="하의">하의</option>
	<option value="신발">신발</option>
	<option value="외투">외투</option>
	<option value="기타">기타</option>
	<option value="침구류">침구류</option>
</select>
</div>
</div>

<div class="popup_title">
<div class="popup_title_text">
소분류
</div>
<div class="popup_title_select">
<select class="item_level" name="product_category_median"><option value="0">소분류</option>
	<option value="남자">남자</option>
	<option value="여자">여자</option>
	<option value="공용">공용</option>
</select>
</div>
</div>
</div>

<div class="item_infor_wrap">
<div class="item_infor">
<div class="popup_text">상품명</div>&nbsp;<div class="popup_inputbox"><input type="text" name="product_name" placeholder=""></div>
</div>
<div class="item_infor">
<div class="popup_text">디테일</div>&nbsp;<div class="popup_inputbox"><input type="text" name="product_detail" placeholder=""></div>
</div>
<div class="item_infor">
<div class="popup_text">가격</div>&nbsp;<div class="popup_inputbox"><input type="text" name="product_price" placeholder=""></div>
</div>
<div class="item_infor">
<div class="popup_text">영업이익</div>&nbsp;<div class="popup_inputbox"><input type="text" name="product_business_profits" placeholder=""></div>
</div>
<div class="item_infor">
<div class="popup_text">순이익</div>&nbsp;<div class="popup_inputbox"><input type="text" name="product_net_profit" placeholder=""></div>
</div>

</div>

<div class="end">
	<div class="popup_btn">
		<input type="submit" value="저장">
	</div>
	<div class="popup_btn">
		<a href="/ProductList.mdo">취소</a>
	</div>
</div>

</div>
</div>
</form>

</main>

<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>