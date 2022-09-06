<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>estimate_detail</title>
<link href="/css/styles.css" rel="stylesheet" />
<link href="/admin/css/estimate_detail.css" rel="stylesheet" />
<link href="/admin/css/estimate_reply.css" rel="stylesheet" />
<script src="js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="js/fileupload.js"></script>
<script type="text/javascript" src="js/estimate.js"></script>
</head>

<body>

	<div class="popup_wrapper">

		<div class="popup_title">
			<h1>견적상품</h1>
		</div>
		<div class="estimate_wrapper">
			<div class="estimate_request">
				<div class="estimate_request_title">견적코드</div>
				<div class="estimate_request_num">sb635</div>
			</div>
			<div class="estimate_request">
				<div class="estimate_request_title">세탁종류</div>
				<div class="estimate_request_type">
					<select>
						<option>황변</option>
						<option>땀,얼룩 제거</option>
						<option>특수오염</option>
					</select>
				</div>
			</div>
			<div class="estimate_request">
				<div class="estimate_request_title_row">작성자</div>
				<div class="estimate_request_name">기맬</div>
			</div>
			<div class="estimate_request">
				<div class="estimate_request_title_row">접수일자</div>
				<div class="estimate_request_date">2022-08-10</div>
			</div>
			<div class="estimate_request">
				<div class="estimate_request_title_row">주소</div>
				<div class="estimate_request_address">서울시 부자동네</div>
			</div>
			<div class="estimate_request">
				<div class="estimate_request_title">내용</div>
				<div class="estimate_request_content">
					안녕하세요 팔쪽에 양꼬치기름묻었어요ㅠㅠ<br>지워주셈..
				</div>
			</div>
			<div class="estimate_request">
				<div class="estimate_request_title">첨부파일</div>
				<div class="estimate_request_file">
					<img src="image/oh_whale.jpg">
				</div>
			</div>

			<!-- <div class="popup_btn">
				<div class="estimate_btn">
					<a href="#">답변</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">숨기기</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
						href="#">취소</a>
				</div>
			</div> -->
			<div class="end">
				<div id="layer_reply_btn" class="board_btn">
					<a href="#">답변</a>
				</div>
				<div id="layer_cancel_btn" class="board_btn">
					<a href="estimate.jsp">목록</a>
				</div>
			</div>
		</div>
	</div>
	<div class="layer" id="layer_reply">
		<div class="popup_wrapper2">

			<div class="estimate_reply_wrapper">
				<div class="estimate_reply_head">
					<h2>견적서</h2>
				</div>
				<div class="estimate_reply_conwrap">
					<div class="estimate_reply">
						<div class="estimate_reply_title">견적금액</div>
						<div class="estimate_reply_title_body">
							<input type="text"
								placeholder="                                  원">
						</div>
					</div>
					<div class="estimate_reply">
						<div class="estimate_reply_title">견적일자</div>
						<div class="estimate_reply_date_body">2022-08-10</div>
					</div>
					<div class="estimate_reply">
						<div class="estimate_reply_title">이유</div>
						<div class="estimate_reply_content_body">
							<select>
								<option>특수세탁1단계</option>
								<option>특수세탁2단계</option>
								<option>특수세탁3단계</option>
								<option>특수세탁4단계</option>
							</select>
						</div>
					</div>
				</div>
			</div>

			<!-- 			<div class="popup_btn"> -->
			<!-- 				<div class="estimate_btn"> -->
			<!-- 					<a href="#">저장</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">취소</a> -->
			<!-- 				</div> -->

			<!-- 			</div> -->
			<div class="end">
				<div class="board_btn">
					<a href="#">저장</a>
				</div>
				<div class="board_btn">
					<a href="#">취소</a>
				</div>
			</div>
		</div>
	</div>
	<!-- <div class="popup_img"><img src="image/oh_whale.jpg" width="360px" height="360px"><br><br></div> -->

</body>
</html>