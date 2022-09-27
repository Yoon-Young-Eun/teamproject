<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<script type="text/javascript" src="/admin/js/fileupload.js"></script>
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
								
									<li><span class="title">분류</span> <input
										class="title_wrap_input" type="text"
										value="${read.message_type}" readonly /></li>
									<div class="message_flex">
									<div><span class="title">제목</span> <input
										class="title_wrap_input" type="text"
										value="${read.message_title}" readonly /></div>
									<div>
										<input style="margin-right: 5px;" type="button" value="전체문자발송"
											onclick="sendMessage()" />
									</div>
									</div>

								</ul>
								<div class="writeWrap">
									<textarea id="content" class="writeArea"
										value="${read.message_content}" readonly>${read.message_content}</textarea>
								</div>

								<div class="end">
									<div class="popup_btn">
										<a href="/messageedit.mdo?message_no=${read.message_no}">수정</a>
									</div>
									<div class="popup_btn">
										<a href="/deletemessage.mdo?message_no=${read.message_no}"
											onclick="return confirm('해당 문자를 삭제하시겠습니까?');">삭제</a>
									</div>
									<div class="popup_btn">
										<a href="/supportmessageList.mdo" onclick="self.close();">취소</a>
									</div>
								</div>

							</div>
						</div>

					</div>

				</div>
			</main>

	<script type="text/javascript">
		function sendMessage() {
			console.log("sendMessage() 실행");
			let message = $("#content").val();
			if (confirm('해당 문자를 모든 회원에게 송부하시겠습까?(sms허용한함)')) {
				console.log("ddd");
				location.href = "/sendSMSAll.mdo?message_content=" + message;
			}
		}
	</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="/admin/js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="/admin/assets/demo/chart-area-demo.js"></script>
	<script src="/admin/assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="/admin/js/datatables-simple-demo.js"></script>

<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>