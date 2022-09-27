<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<link href="/admin/css/board_QnA.css" rel="stylesheet" />
<script type="text/javascript" src="/admin/js/estimate.js"></script>
<script type="text/javascript" src="js/fileupload.js"></script>

</head>
<body class="sb-nav-fixed">

<%@ include file="/admin/ad_menu.jsp"%>

		<div id="layoutSidenav_content_wrapper">
			<main>

				<div class="container-fluid px-4">
						<h1 class="mt-4">Q&A답변 조회</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
						<li class="breadcrumb-item active">Q&A답변 조회</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							Q&A답변 조회 페이지 입니다.
						</div>
					</div>

<div class="wrapper">

<!---------- 본문내용 시작 ---------->

<div class="popup_reply_wrapper">
<div class="customer_reply_wrapper">
<div class="popup_title"><h1>답변</h1>
</div>
<div class="customer_reply mg_top mg_btm">
<div class="customer_reply_title">제목</div><div class="customer_reply_title_body">${QnAInfo_a.admin_qna_title}</div>
</div>
<div class="customer_reply mg_btm">
<div class="customer_reply_title">내용</div><div class="customer_reply_content_body">${QnAInfo_a.admin_qna_content}</div>
</div>
</div>
<div class="end">
	<div class="board_btn">
		<a href="/QnAList.mdo">목록</a>
	</div>
</div>								
</div>

<div class="popup_wrapper">

<div class="popup_title"><h1>1:1문의</h1>
</div>
<div class="customer_question_wrapper">
<div class="customer_question">
<div class="customer_question_title">제목</div>
<div class="customer_question_title_body">${QnAInfo_a.board_qna_title}</div>
</div>
<div class="customer_question">
<div class="customer_question_title_row">작성자</div>
<div class="customer_question_name_body">${QnAInfo_a.customer_no}</div>
<!-- </div> -->
<!-- <div class="customer_question"> -->
<div class="customer_question_title_row">작성일</div>
<div class="customer_question_date_body">${QnAInfo_a.board_qna_reg_date}</div>
</div>
<div class="customer_question">
<div class="customer_question_title">내용</div>
<div class="customer_question_content_body">
${QnAInfo_a.board_qna_content}
</div>
</div>
<div class="customer_question">
<div class="customer_question_title">첨부파일</div>
<div class="customer_question_file_body"><img src="${QnAInfo_a.board_qna_filepath}"></div>
</div>
</div>

</div>

<!---------- 본문내용 끝 ---------->

</div>

</main>

<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>
