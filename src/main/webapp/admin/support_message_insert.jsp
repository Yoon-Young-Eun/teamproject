<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<script type="text/javascript" src="/admin/js/fileupload.js"></script>
<!-- 게시판 css -->
<link rel="stylesheet" href="/admin/css/support_message.css" />

</head>
<body class="sb-nav-fixed">

<%@ include file="/admin/ad_menu.jsp"%>

		<div id="layoutSidenav_content">
			<main>

				<div class="container-fluid px-4">
					<h1 class="mt-4">문자등록</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
						<li class="breadcrumb-item active">문자등록</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">문자 등록 화면입니다..</div>
					</div>
					<div class="dd">
						<!-- <div class="card-header">
							<i class="fas fa-chart-area me-1"></i> 여기는 아래 표 또는 게시판에 대한 세부제목
						</div> -->

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
							
							<form action="/insertmessage.mdo" method="GET"  onsubmit="return confirm('신규 문자를 등록하시겠습니까?');">	
							
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
									<li><span class="title">분류</span> <input class="title_wrap_input"  type="text" name="message_type" placeholder="문자 타입을 입력하세요"/>
									</li>
								    <li><span class="title">제목</span> <input class="title_wrap_input"  type="text" name="message_title" placeholder="문자 제목을 입력하세요"/>
									</li>	
								
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
									<textarea class="writeArea" name="message_content"></textarea>
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
									<input type="submit" value="등록">&nbsp;&nbsp;<a href="/supportmessageList.mdo" onclick="self.close();">취소</a>
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