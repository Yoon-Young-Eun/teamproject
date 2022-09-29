<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="/service/css/getNotice.css">
  <link rel="stylesheet" href="/common/css/button.css">
   <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>[세모]세탁의 모든것</title>

<!-- summernote -->
<script src="/admin/js/summernote/summernote-lite.js"></script>
<script src="/admin/js/summernote/lang/summernote-ko-KR.js"></script>
</head>

<body>

<<<<<<< HEAD
<form action="/login.do">
	<div id="header">
	<script>
		$(function() {
			var id = "${id}";
			if (id == "") {
				$('#header').load("/common/header.jsp");
			} else {
				$('#header').load("/common/logined-header.jsp");
			}
		});
	</script>
	</div>
</form>

<div class = "page-wrapper">
	<!-- 사이드메뉴 -->
	<div class = "sidemenu">
		<jsp:include page="/common/centerSide.jsp"></jsp:include>
	</div>

	<!-- 본문 -->
	<jsp:include page = "/common/quick-menu.jsp"/>
	<div class = "content-wrapper">
	<!-- 제목 -->
		<div class = "content-title-wrapper">
			<div class = "content-title">
				<h2>고객센터</h2>
			</div>
			<!-- 소제목 -->
			<div class = "content-subtitle-wrapper">
				<p>세모의 고객, 당신을 위한 공간입니다.</p>		
			</div><!-- content-subtitle-wrapper -->
		</div> <!-- content-title-wrapper -->	
		
		<div class = "main-wrapper">
		
			<div class="main_text">
=======
<div class="wrap">
	
			<!-- 헤더 : 로그인 유무에 따라 달라짐 -->
			<form action="/login.do">
				<div id="header">
					<script>
						$(function() {
							var id = "${id}";

							if (id == "") {
								$('#header').load("/common/header.jsp");
							} else {
								$('#header').load("/common/logined-header.jsp");
							}
						});
					</script>
				</div>
			</form>
<div class="wrap1">
			<div class="main">
				<div class="space_left">
					<jsp:include page="/common/centerSide.jsp"></jsp:include>
				</div>
				<div class="main_box">
					<div class="main_text">
					<div class="main_text1">공지사항</div>
>>>>>>> main
					<div class="title">
						<div class="sub">제목</div>
						<div class="con">${board.notice_title }</div>
					</div>
					
					<div class="content">
					<div id="summer" class="writeWrap">
						<div class="sub">내용</div>
						<div id="summernote" class="writeArea" name="notice_content">${board.notice_content }</div>
					</div>
					</div>
					
					<div class="title">
									<div class="sub">첨부파일</div>
											<div class="filebox">
												<c:choose>
													<c:when
														test="${board.notice_filepath eq 'https://semoproject.s3.ap-northeast-2.amazonaws.com/board/'}">
                                    파일없음
                                 </c:when>
													<c:otherwise>
														<a href="${board.notice_filepath}" target="_blank">파일보기(${filename})</a>
													</c:otherwise>
												</c:choose>
											</div>
								</div>
				</div>		</div>
	</div>
</div>		

</body>
<jsp:include page="/common/footer.jsp" />
</html>