<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<link href="/admin/css/promo_coupon_insert.css" rel="stylesheet" />

</head>
<body class="sb-nav-fixed">

<%@ include file="/admin/ad_menu.jsp"%>

		<div id="layoutSidenav_content">
			<main>

				<div class="container-fluid px-4">
					<h1 class="mt-4">쿠폰관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="/index.mdo">대시보드</a></li>
						<li class="breadcrumb-item active">쿠폰등록</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">할인 쿠폰을 등록합니다.</div>
					</div>

					<div class="whole">
						<div class="popup_wrapper">
							<header>
								<div class="coupon_title">
									<h1>쿠폰</h1>
								</div>
							</header>
							<form action="/insertCoupon.mdo" method="GET"  onsubmit="return confirm('신규 쿠폰을 등록하겠습니까?');">
								<div class="content_wrap">

									<div class="popup_title_wrap">
										<div class="popup_title">
											<div class="popup_text">쿠폰명</div>
											<div class="popup_inputbox">
												<input type="text" name="coupon_title" placeholder="">

											</div>
										</div>

										<!-- 									<div class="popup_title"> -->
										<!-- 										<div class="popup_text">쿠폰번호</div> -->
										<!-- 										<div class="popup_inputbox"> -->
										<!-- 											<input type="text" placeholder=""> -->
										<!-- 										</div> -->
										<!-- 									</div> -->
									</div>

									<div class="item_infor_wrap">
										<div class="popup_title">
											<div class="popup_text">할인금액</div>
											<div class="popup_inputbox">
												<input type="text" name="coupon_sale_price" placeholder="">
											</div>
										</div>
										<div class="popup_title">
											<div class="popup_text">유효기간</div>
											<div class="popup_inputbox_date">
												<input type="date" name="coupon_start_date">
											</div>

											<div class="popup_inputbox_date2">
												<input type="date" name="coupon_end_date">
											</div>
										</div>
										<div class="popup_title">
											<div class="popup_text">발급대상</div>
											<div class="popup_inputbox">
												<select class="item_level" id="item_level1"
													name="coupon_type">
													<option value="전체">전체</option>
													<option value="신규가입">신규가입</option>
													<option value="생일">생일</option>
													<option value="리뷰">리뷰</option>
												</select>
											</div>
										</div>
										<!-- 									<div class="popup_title"> -->
										<!-- 										<div class="popup_text">발급갯수</div> -->
										<!-- 										<div class="popup_inputbox"> -->
										<!-- 											<input type="number" value="1"> -->
										<!-- 										</div> -->
										<!-- 									</div> -->
									</div>

								</div>


								<div class="end">
									<div class="popup_btn">
										<input type="submit" value="등록">
									</div>

									<div class="popup_btn">
										<a href="/CouponList.mdo">취소</a>
									</div>
								</div>
							</form>
						</div>
					</div>
			</main>

<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>
