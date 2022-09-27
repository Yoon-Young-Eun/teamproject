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
					<h1 class="mt-4">약관관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
						<li class="breadcrumb-item active">약관등록</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">약관을 등록해주세요.</div>
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
										<h1>약관 등록</h1>
									</div>
								</div>
							</header>
							<div id="content_wrap">
							
							<form action="/insertTerms.mdo" method="post"  onsubmit="return confirm('신규 약관을 등록하겠습니까?');">	
							
								<ul class="title_wrap">

									<li><span class="title">약관이름</span> <input class="title_wrap_input"  type="text" name="terms_title" placeholder="게시글 제목을 입력하세요"/>
									</li>

									<li><span class="title">약관분류</span>
										<div class="clause_select">
											<select name="terms_type" >
												<option value="회원가입">회원가입</option>
												<option value="2">결제</option>
											</select>
										</div></li>
				
									
									<div class="require">
									<li><span class="title">필수여부</span>
										<div class="clause_select">
											<select name="terms_necessary" >
												<option value="TRUE">필수</option>
												<option value="FALSE">선택</option>
											</select>
										</div></li>
									</div>
								</ul>
								<div class="writeWrap">
									<textarea class="writeArea" name="terms_content"></textarea>
								</div>
								<div class="end">
									<input type="submit" value="등록">&nbsp;&nbsp;<a href="/TermsList.mdo">목록</a>
								</div>
							</form>
							</div>
						</div>

					</div>

				</div>
			</main>
			
<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>