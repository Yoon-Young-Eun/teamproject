<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<script type="text/javascript" src="js/fileupload.js"></script>

<!-- 게시판 css -->
<link rel="stylesheet" href="/admin/css/support_clause2.css" />

</head>
<body class="sb-nav-fixed">

<%@ include file="/admin/ad_menu.jsp"%>

		<div id="layoutSidenav_content">
			<main>



				<div class="container-fluid px-4">
					<h1 class="mt-4">약관 수정</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
						<li class="breadcrumb-item active">약관 수정</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">약관을 수정합니다</div>
					</div>
					<div class="dd">
						<!-- <div class="card-header">
							<i class="fas fa-chart-area me-1"></i> 여기는 아래 표 또는 게시판에 대한 세부제목
						</div> -->

						<div id="wrap">
							<header>
								<div class="div2">
									<div class="div3">
										<h1>약관 수정</h1>
									</div>
								</div>
							</header>
							<div id="content_wrap">

							<form action = "/updateTerms.mdo" method="get"  onsubmit="return confirm('약관을 수정하시겠습니까?');">
							
								<ul class="title_wrap">
		
									<input type="hidden" name="terms_no" value="${TermsInfo.terms_no}">
									<input type="hidden" name="terms_reg_date" value="${TermsInfo.terms_reg_date}">
									<li><span class="title">약관번호</span>
									${TermsInfo.terms_no} 
									</li>
									<li><span class="title">약관분류</span>
										<div class="clause_select">
											<select name="terms_type" >
												<option value="회원가입">회원가입</option>
												<option value="결제">결제</option>
											</select>
										</div></li>
									<li><span class="title">약관이름</span> <input class="title_wrap_input"  type="text" name="terms_title" value="${TermsInfo.terms_title}" />
									</li>
									<div class="require">
									<li><span class="title">필수여부</span>
										<div class="clause_select">
											<select name="terms_necessary" >
												<c:choose> 
											<c:when test="${TermsInfo.terms_necessary == true}">
												<option value="TRUE">필수</option>
												<option value="FALSE">선택</option>
											</c:when>  
											<c:otherwise>
												<option value="FALSE">선택</option>
												<option value="TRUE">필수</option>
											</c:otherwise> 
										</c:choose>
											</select>
										</div></li>
									</div>
									<li><span class="title">등록일</span>
									${TermsInfo.terms_reg_date}
									</li>
								</ul>
								<div class="writeWrap">
									<textarea class="writeArea" name="terms_content">${TermsInfo.terms_content}</textarea>
								</div>
<!-- 								<div class="configWrap"> -->
<!-- 									<ul> -->

<!-- 										<li><span class="title">공개설정</span>&nbsp; <input -->
<!-- 											type="radio" name="open" id="open_0"> <label -->
<!-- 											for="open_0">공개</label>&nbsp;&nbsp; <input type="radio" -->
<!-- 											name="open" id="open_1"> <label for="open_1">비공개</label>&nbsp;&nbsp; -->
										
<!-- 									</ul> -->
<!-- 								</div> -->
								<div class="end">
									<div class="popup_btn">
										<input type="submit" value="저장" id="aa">
									</div>

									<div class="popup_btn">
										<input type="button" onclick="location.href='/TermsList.mdo'" value="취소" id="aa">
									</div>
								</div>
							</form>
							</div>
						</div>

						<!-- <div class="card-footer small text-muted">Updated yesterday
							at 11:59 PM</div> -->
					</div>

				</div>
			</main>

<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>