<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("utf-8");
%>

<%@ include file="/admin/ad_header.jsp"%>

<link href="/admin/css/item_product.css" rel="stylesheet" />
<link href="/admin/css/order_detail.css" rel="stylesheet" />

</head>
<body class="sb-nav-fixed">

<%@ include file="/admin/ad_menu.jsp"%>

		<div id="layoutSidenav_content">
			<main>

				<div class="container-fluid px-4">
					<h1 class="mt-4">주문상세정보</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="/index.mdo">대시보드</a></li>
						<li class="breadcrumb-item active">주문상세정보</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">회원의 주문 상세 정보를 조회합니다.</div>
					</div>

					<!-- 상세정보 -->

					<div>
						<form action="/Ad_updateOrderInfo.mdo" method="GET" class="form"  onsubmit="return confirm('주문상태를 변경시 해당 문자가 회원에게 전송됩니다(sms허용한함). 주문사항을 수정하시겠습니까?');">
							<input type="hidden" name="customer_no" value="${order.customer_no}"/>
							<input type="hidden" name="order_customer_phone"
								value="${order.order_customer_phone}" /> <input type="hidden"
								name="order_no" value="${order.order_no}" />
							<div class="member_wrapper">
								<div class="member_popup_head">
									<h2>주문상세정보</h2>
								</div>

								<div class="member_id">구&nbsp;&nbsp;&nbsp;분 :
									${order.order_type}</div>

								<div class="member_db_id"></div>
								<div class="flex">
									<div class="member_id">
										고객이름 :
										${order.order_customer_name}(${order.customer_no})&nbsp;
										<%-- 		<a style="font-size: 5px;"
											href="/getMemberBoard.mdo?customer_no=${order.customer_no}">개인정보보기</a> --%>
									</div>
									&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;						
									&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
									<div class="member_id">
									전화번호 :
										${order.order_customer_phone}</div>
								</div>
								<div class="member_id">주 소 : ${order.order_address1}
									${order.order_address2}</div>
								<div class="member_id">주문일자 : ${order.order_date}</div>
								<div class="flex">
									<div class="member_id">픽업일시 : ${order.order_pickup_date}
										/ ${order.order_pickup_time}</div>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<div class="member_id">배송예정일자 :
										${order.order_expected_date}</div>
								</div>
								<div class="member_id">요청사항(세탁) : ${order.order_request1}</div>
								<div class="member_id">요청사항(택배) : ${order.order_request2}</div>

								<div class="flex">
									<div class="member_id">주문금액 : ${order.order_price}</div>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

									<div class="member_id">쿠폰금액 :
										${order.order_use_coupon_price}</div>

									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<div class="member_id">결제상태 : ${order.order_price_status}</div>
								</div>

								<div class="flex">
									<div class="member_state">
										주문상태(${order.order_status}) : 
										<select name="message_content">${order.order_status}
										<option value="${order.order_status}">상태수정</option>
											<c:forEach var="message" items="${message}">
												<option value="${message.message_content}">${message.message_title}</option>
											</c:forEach>
										</select>
									</div>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<div class="member_state">
										담당지점(${order.order_store_name}) : <select name="order_store_name">
											<option value="${order.order_store_name}">지점변경</option>
											<c:forEach var="store" items="${storeList}">
												<option value="${store.store_name}">${store.store_name}</option>
											</c:forEach>
										</select>
									</div>
									&nbsp;&nbsp;&nbsp;

								</div>


								<div class="member_order">
<%-- 									<a style="font-size: 10px;"
										href="/memberorderList.mdo?order_no=${order.order_no}">주문리스트</a> --%>
								</div>

								<div class="end">
									<div class="popup_btn">
										<input type="submit" value="저장" style="margin: -4px;"/>
									</div>
									<div class="popup_btn">
										<a href="/adminOrderList.mdo" onclick="self.close();">취소</a>
									</div>
								</div>
							</div>

						</form>
					</div>
			</main>
			
<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>