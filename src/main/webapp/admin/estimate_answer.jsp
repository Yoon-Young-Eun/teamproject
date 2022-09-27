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
								<div class="estimate_request_value">${getestimate.estimate_cm_no }</div>
							</div>
							<div class="estimate_request">
								<div class="estimate_request_title">세탁종류</div>
								<div class="estimate_request_value" name="estimate_type">${getestimate.estimate_type }</div>
							</div>
							<div class="estimate_request">
								<div class="estimate_request_title">작성자</div>
								<div class="estimate_request_value" name="customer_name">${getestimate.customer_name }</div>
							</div>
							<div class="estimate_request">
								<div class="estimate_request_title">연락처</div>
								<div class="estimate_request_value" name="customer_phone">${getestimate.customer_phone }</div>
							</div>
							<div class="estimate_request">
								<div class="estimate_request_title">접수일자</div>
								<div class="estimate_request_value" name="estimate_date">${getestimate.estimate_date}</div>
							</div>
							<div class="estimate_request">
								<div class="estimate_request_title">주소</div>
								<div class="estimate_request_value" name="customer_address1">${getestimate.customer_address1}${getestimate.customer_address2}</div>
							</div>
							<div class="estimate_request">
								<div class="estimate_request_title">내용</div>
								<div class="estimate_request_content" name="estimate_content">
									${getestimate.estimate_content }</div>
							</div>
							<div class="estimate_request">
								<div class="estimate_request_title">첨부파일</div>
<!-- 								<div class="estimate_request_file" name="filepath"> -->
<%-- 									<img src="${getestimate.estimate_filepath }"> --%>
<!-- 								</div> -->
									<div class="estimate_request_file" name="estiimg">
									<c:forEach var="est_img" items="${estiimg}">
										<img onclick="window.open(this.src)" hspace="0" src="${est_img.estimate_filepath }">
									</c:forEach>
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
							
							</div>
						</div>
					</div>

						<div class="layer">
							<div class="popup_wrapper2">

								<div class="estimate_reply_wrapper">
									<div class="estimate_reply_head">
										<h1>견적서</h1>
									</div>
									<div class="estimate_reply_conwrap">
										<div class="estimate_reply">
											<input type="hidden" value="${getAd_Estimate.estimate_cm_no }">
											<div class="estimate_reply_title">견적금액</div>
											<div class="estimate_reply_body">
												${getAd_Estimate.estimate_price }</div>
										</div>
										<div class="estimate_reply">
											<div class="estimate_reply_title">견적일자</div>
											<div class="estimate_reply_body" name="estimate_reply_date">${getAd_Estimate.estimate_reply_date }</div>
										</div>
										<div class="estimate_reply">
											<div class="estimate_reply_title">이유</div>
											<div class="estimate_reply_content_body">
												${getAd_Estimate.estimate_type_title }<br>
												<hr>
												${getAd_Estimate.estimate_type_content }
											</div>
										</div>
									</div>
								</div>

								<div class="end">
									<div class="board_btn">
										<a href="/getEstimateList.mdo">목록</a>
									</div>
								</div>
							</div>
						</div>
				</div>

			</main>

<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>