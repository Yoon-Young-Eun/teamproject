<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<link href="/admin/css/estimate_detail.css" rel="stylesheet" />
<link href="/admin/css/estimate_reply.css" rel="stylesheet" />
<script type="text/javascript" src="/admin/js/fileupload.js"></script>
<script type="text/javascript" src="/admin/js/estimate.js"></script>

</head>

<body class="sb-nav-fixed">

<%@ include file="/admin/ad_menu.jsp"%>

		<div id="layoutSidenav_content">
			<main>
				<div class="whole">
					<div class="popup_wrapper">

						<div class="popup_title">
							<h1>견적상품</h1>
						</div>
						<div class="estimate_wrapper">
							<div class="estimate_request">
								<div class="estimate_request_title">견적코드</div>
								<div class="estimate_request_value">${getEstimate.estimate_cm_no }</div>
							</div>
							<div class="estimate_request">
								<div class="estimate_request_title">세탁종류</div>
								<div class="estimate_request_value" name="estimate_type">${getEstimate.estimate_type }</div>
							</div>
							<div class="estimate_request">
								<div class="estimate_request_title">작성자</div>
								<div class="estimate_request_value" name="customer_name">${getEstimate.customer_name }</div>
							</div>
							<div class="estimate_request">
								<div class="estimate_request_title">연락처</div>
								<div class="estimate_request_value" name="customer_phone">${getEstimate.customer_phone }</div>
							</div>
							<div class="estimate_request">
								<div class="estimate_request_title">접수일자</div>
								<div class="estimate_request_value" name="estimate_date">${getEstimate.estimate_date}</div>
							</div>
							<div class="estimate_request">
								<div class="estimate_request_title">주소</div>
								<div class="estimate_request_value" name="customer_address1">${getEstimate.customer_address1}${getEstimate.customer_address2}</div>
							</div>
							<div class="estimate_request">
								<div class="estimate_request_title">내용</div>
								<div class="estimate_request_content" name="estimate_content">
									${getEstimate.estimate_content }</div>
							</div>
							<div class="estimate_request">
								<div class="estimate_request_title">첨부파일</div>
								<div class="estimate_request_file" name="estiimg">
									<c:forEach var="est_img" items="${estiimg}">
										<img onclick="window.open(this.src)" hspace="0" src="${est_img.estimate_filepath}">
									</c:forEach>
								</div>
							</div>
							
							<script type="text/javascript">
							function detailView(src) {
								   $("#detail_img").attr("src", src);
								   $("#product_popup").show();
								}
								 
								$(function(){
								   $("#pop_close").click(function(){
								      $("#detail_imgt_pop").hide();
								   });
								});
							</script>

							<div class="end">
								<div id="layer_reply_btn">
									<a href="#">답변</a>
								</div>
								<div id="layer_cancel_btn">
									<a href="/getEstimateList.mdo">목록</a>
								</div>
							</div>
						</div>
					</div>

					<form id="insert" action="/insertEstimate.mdo?customer_phone=${getEstimate.customer_phone }" method="post" onsubmit="return confirm('견적을 발송하시겠습니까? 발송시 회원에게 안내 문자가 발송됩니다.(주문상태를 변경시 해당 문자가 회원에게 전송됩니다(sms허용한함).)');">
					<input type="hidden" name="customer_no" value="${getEstimate.customer_no}"/>
						<div class="layer" id="layer_reply">
							<div class="popup_wrapper2">
								<div class="estimate_reply_wrapper">
									<div class="estimate_reply_head">
										<h1>견적서</h1>
									</div>
									<div class="estimate_reply_conwrap">
										<div class="estimate_reply">
											<input type="hidden" name="estimate_cm_no"
												value="${getEstimate.estimate_cm_no}" />
											<div class="estimate_reply_title">견적금액</div>
											<div class="estimate_reply_body">
												<input type="number" name="estimate_price">
											</div>
										</div>
										<div class="estimate_reply">
											<div class="estimate_reply_body" name="estimate_reply_date">
											</div>
										</div>
										<div class="estimate_reply">
											<div class="estimate_reply_title">이유</div>
											<div class="estimate_reply_body">
												<select name="estimate_type_content" id="selectOption">
													<c:forEach var="type" items="${estitype}">
														<div>
															<option value="${type.estimate_type_content}">${type.estimate_type_title }</option>
														</div>
													</c:forEach>
												</select>
											</div>
										</div>
									</div>
								</div>

								<div class="end" style="padding-top: 465px;">
									<div class="board_btn">
										<input type="submit" value="발송">
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</main>

<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>