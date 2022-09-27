<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<!-- font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
<!-- resources -->
<link rel="stylesheet" href="/views-mypage/resources/css/MyAddress.css"/>
<link rel="stylesheet" href="/common/css/header.css"/>
<link rel="stylesheet" href="/common/css/button.css"/>
<link rel="stylesheet" href="/common/css/footer.css"/>
<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
</head>
<body>
<div class = "page-wrapper">
	<!-- 사이드메뉴 -->
	<div class = "sidemenu">
		<jsp:include page="/common/mypageSide.jsp"/>
	</div>
	
	<!-- 본문 -->
	<div class = "content-wrapper">
		<!-- 제목 -->
		<div class = "content-title-wrapper">
			<div class = "content-title">
				<h2>내 주문 관리</h2>
			</div>
			<!-- 소제목 -->
			<div class = "content-subtitle-wrapper">
				<p>총 <b>${cnt}</b>건의 주문내역</p>
			</div><!-- content-subtitle-wrapper -->
		</div> <!-- content-title-wrapper -->	
		
		<form action="/insertask.do" method = "post" name = "insertForm" enctype="multipart/form-data">
			<div class = "article-wrapper" style = "width : 100%;">
				<input type="hidden" name="customer_no" value="${ask.customer_no}"/>
					
				<div class = "main_text3">
					<div class = "type_title1">분류<span id="span1" style = "color : red;">&nbsp;*</span></div>
					<div class = "name">
						<select name = "board_qna_type"  id="textbar1" style = "background:white; border : 2px solid #cdcdcd;">
							<option value = "배송문의">배송문의</option>
							<option value = "세탁문의">세탁문의</option>
							<option value = "기타문의">기타문의</option>
						</select>
					</div>
				</div> <!-- sort-wrapper -->
				
				<div class="main_text3">
					<div class="type_title1">
						작성자 <span id="span1" style = "color : red;">*</span>
					</div>
					<div class="name">
						<input type="text" readonly id="textbar1" value="${ask.customer_name }">
					</div>
				</div> <!-- 작성자 -->
				
				<div class="main_text3">
					<div class="type_title1">
						휴대전화 <span id="span1" style = "color : red;">*</span>
					</div>
					<div class="name">
						<input type="text" readonly id="textbar1" value="${ask.customer_phone }">
					</div>
				</div> <!-- 휴대전화 -->
				
				<div class="main_text3">
					<div class="type_title1">
						제목 <span id="span1" style = "color : red;">*</span>
					</div>
					<div class="name">
						<input type="text" id="textbar1" style = "background:white; border : 2px solid #cdcdcd;" name="board_qna_title">
					</div>
				</div> <!-- 제목 -->
				
				<div class="main_text4">
					<div class="type_title1">
						내용 <span id="span1" style = "color : red;">*</span>
					</div>
					<div class="name">
						<textarea id="write_area"style = "background:white; border : 2px solid #cdcdcd; padding : 10px;" name="board_qna_content"></textarea>
					</div>
				</div><!-- 내용 -->
				
				<div class="file_wrap">
					<input type="file" name="file" accept="*" id="bizFile" />
					<div class="main_text3 mg">
						<div class="type_title1">
							<label id="label1">파일 업로드</label>
						</div>
						<div class="name">
						<input type="text" id="textbar9" style="align-items: center; display: flex; color:red; font-weight:bold;" value="선택된 파일 없음" readonly>
							
						</div>
						<div class = "btn" style = "margin-left : 20px;">
							<label for="bizFile" id="label1">파일 선택</label>
						</div>		
					</div>
				</div><!-- 첨부파일 -->
				
				<div class = "button-wrapper" >
					<input type ="button" id = "insert1" onclick="location.href='/myasklist.do?customer_no=${num}'" class="action-button shadow animate grey" style = "height : 50px;" value="취소">	
					<input type ="submit" id = "insert" class="action-button shadow animate blue" style = "height : 50px;" value="등록">	
				</div>
			</div><!-- article-wrapper -->
		</form>
	</div>
</div>
</body>
</html>