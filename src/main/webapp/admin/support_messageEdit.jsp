<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<script type="text/javascript" src="js/fileupload.js"></script>
<!-- <-게시판 css -->
<link rel="stylesheet" href="/admin/css/support_message.css" />


</head>
<body class="sb-nav-fixed">

<%@ include file="/admin/ad_menu.jsp"%>

		<div id="layoutSidenav_content">
			<main>

				<div class="container-fluid px-4">
					<h1 class="mt-4">문자상세정보</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="/index.mdo">대시보드</a></li>
						<li class="breadcrumb-item active">문자상세정보</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">문자 상세정보 화면입니다.</div>
					</div>
					<div class="dd">
						<!-- <div class="card-header">
							<i class="fas fa-chart-area me-1"></i> 여기는 아래 표 또는 게시판에 대한 세부제목
						</div> -->
	<form action = "/updatemessage.mdo" method="get" class="form" onsubmit="return confirm('수정하시겠습니까?');">
	<input type="hidden" name="message_no" value="${read.message_no}"/>
						<div id="wrap">
							<header>
								<div class="div2">
									<!--<div>
										<img
											src="https://i.etsystatic.com/14912200/r/il/7c4834/1295206612/il_570xN.1295206612_nj87.jpg"
											width=150px>
									</div> -->
									<div class="div3">
										<h1>문자 등록</h1>
									</div>
								</div>
							</header>
							<div id="content_wrap">



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
									<li><span class="title">분류</span> <input
										class="title_wrap_input" type="text" name="message_type"
										value="${read.message_type}"/></li>
									<li><span class="title">제목</span> <input
										class="title_wrap_input" type="text" name="message_title"
										value="${read.message_title}"/></li>

									<!-- 								<div class="require">
									<li><span class="title">제목</span>
										<div class="clause_select">
											<select name="terms_necessary" >
												<option value="TRUE">필수</option>
												<option value="TRUE">필수</option>
												<option value="TRUE">필수</option>
												<option value="TRUE">필수</option>
												<option value="TRUE">필수</option>
												<option value="FALSE">선택</option>
											</select>
										</div></li>
									</div> -->
								</ul>
								<div class="writeWrap">
									<textarea class="writeArea" name="message_content">${read.message_content}</textarea>
								</div>
								<!-- 								<div class="configWrap"> -->
								<!-- 									<ul> -->

								<!-- 										<li><span class="title">공개설정</span>&nbsp; <input -->
								<!-- 											type="radio" name="open" id="open_0"> <label -->
								<!-- 											for="open_0">공개</label>&nbsp;&nbsp; <input type="radio" -->
								<!-- 											name="open" id="open_1"> <label for="open_1">비공개</label>&nbsp;&nbsp; -->

								<!-- 									</ul> -->
								<!-- 								</div> -->
								<!-- <div class="end">
									<input type="submit" value="저장">&nbsp;&nbsp;<a href="#">취소</a>
								</div> -->

								<div class="end">
									<div class="popup_btn">
										<input type="submit" value="저장" id="aa">
									</div>
									<div class="popup_btn">
										<input type="button" onclick="location.href='/supportmessageList.mdo'" id="aa" value="취소">
									</div>
								</div>

							</div>
						</div>
</form>

					</div>

				</div>
			</main>
			
<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>