<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<link href="/admin/css/item_product.css" rel="stylesheet" />

</head>
<body class="sb-nav-fixed">

<%@ include file="/admin/ad_menu.jsp"%>

		<div id="layoutSidenav_content">
			<main>

				<div class="container-fluid px-4">
					<h1 class="mt-4">상품 조회</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="/index.mdo">대시보드</a></li>
						<li class="breadcrumb-item active">상품 조회</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">상품을 조회합니다.</div>
					</div>
					
					
<!-- <form action="/insertProduct.mdo" method="GET">			 -->
<div class="pop_flex">
<div class="popup_wrapper">
<!-- <div class="popup_head"><h1>상품 조회</h1> -->

<!-- </div> -->

<div class="popup_title_wrap">
<div class="popup_title">
<div class="popup_title_text">
대분류
</div>
<div class="popup_title_select">
${ProductInfo.product_category_parent}
</div>
</div>

<div class="popup_title">
<div class="popup_title_text">
소분류
</div>
<div class="popup_title_select">
${ProductInfo.product_category_median}
</div>
</div>
</div>



<div class="item_infor_wrap">
<div class="item_infor">
<div class="popup_text">상품명</div>&nbsp;<div class="popup_inputbox">
${ProductInfo.product_name}</div>
</div>
<div class="item_infor">
<div class="popup_text">디테일</div>&nbsp;<div class="popup_inputbox">
${ProductInfo.product_detail}</div>
</div>
<div class="item_infor">
<div class="popup_text">등록일</div>&nbsp;<div class="popup_inputbox">
${ProductInfo.product_reg_date}</div>
</div>
<div class="item_infor">
<div class="popup_text">가격</div>&nbsp;<div class="popup_inputbox">
${ProductInfo.product_price}</div>
</div>
<div class="item_infor">
<div class="popup_text">영업이익</div>&nbsp;<div class="popup_inputbox">
${ProductInfo.product_business_profits}</div>
</div>
<div class="item_infor">
<div class="popup_text">순이익</div>&nbsp;<div class="popup_inputbox">
${ProductInfo.product_net_profit}</div>
</div>

</div>



<div class="end">
	<div class="popup_btn">
		<a href="/ProductList.mdo">목록</a>
	</div>
	<div class="popup_btn">
		<a href="updateProductPage.mdo?product_code=${ProductInfo.product_code}">수정</a>
	</div>
	<div class="popup_btn">
		<a href="deleteProduct.mdo?product_code=${ProductInfo.product_code}"  onclick="return confirm('해당 상품을 삭제하시겠습니까?');" >삭제</a>
	</div>
</div>

</div>
</div>
<!-- </form> -->

</main>

<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>