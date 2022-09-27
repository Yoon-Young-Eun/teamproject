<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<!-- 게시판 css -->
<link rel="stylesheet" href="/admin/css/support_clause2.css" />

</head>
<body class="sb-nav-fixed">

<%@ include file="/admin/ad_menu.jsp"%>

		<div id="layoutSidenav_content">
			<main>



				<div class="container-fluid px-4">
					<h1 class="mt-4">약관 조회</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="/index.mdo">대시보드</a></li>
						<li class="breadcrumb-item active">약관 조회</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">약관 내용을 조회 합니다</div>
					</div>
					<div class="dd">

						<div id="wrap">
							<header>
								<div class="div2">
									<!--<div>
										<img
											src="https://i.etsystatic.com/14912200/r/il/7c4834/1295206612/il_570xN.1295206612_nj87.jpg"
											width=150px>
									</div> -->
									<div class="div3">
										<h1>약관</h1>
									</div>
								</div>
							</header>
							<div id="content_wrap">
							
							<form action="/insertTerms.mdo" method="GET">	
							
								<ul class="title_wrap">
<!-- 									<li><span class="title">약관번호</span> <input class="title_wrap_input" type="text" -->
<!-- 										onfocus="value=''" value="약관번호를 입력"/> -->
<!-- 									</li> -->
											<!--
            <input type="checkBox" id="chkNotice1" name="chkB1">
            <label for="chkNotice1">공지사항으로 게시글쓰기</label>
            <input type="checkBox" id="chkNotice2" name="chkB2">
            <label for="chkNotice2">일반글로 게시글쓰기</label>
            -->
									<li><span class="title">약관번호</span>
									${TermsInfo.terms_no} 
									</li>
									<li><span class="title">약관분류</span>
									${TermsInfo.terms_type} 
									</li>
									<li><span class="title">약관이름</span>
									${TermsInfo.terms_title} 
									</li>
									<li><span class="title">필수여부</span>
										${TermsResult} 
										</li>
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
										<a href="/TermsList.mdo">목록</a>
									</div>
									<div class="popup_btn">
										<a href="updateTermsPage.mdo?terms_no=${TermsInfo.terms_no}">수정</a>
									</div>
									<div class="popup_btn">
										<a href="deleteTerms.mdo?terms_no=${TermsInfo.terms_no}"  onclick="return confirm('약관을 삭제하시겠습니까?');">삭제</a>
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