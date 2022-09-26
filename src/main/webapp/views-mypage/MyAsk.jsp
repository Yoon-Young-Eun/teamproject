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
<link rel="stylesheet" href="/views-mypage/resources/css/MyAsk.css"/>
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

<jsp:include page="/common/logined-header.jsp"/> 

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
				<h2>문의하기</h2>
			</div>
			<!-- 소제목 -->
			<div class = "content-subtitle-wrapper">
				<p style = "color : red;">* 필수항목입니다</p>		
			</div><!-- content-subtitle-wrapper -->
			
			<!-- 글쓰기 -->
			<form action="/insertask.do" method = "get" name = "insertForm">
			<div class = "article-wrapper" style = "width : 100%;">
			<input type="hidden" name="customer_no" value="${num}"/>
			
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
					<input type="text" readonly id="textbar1">
				</div>
			</div> <!-- 작성자 -->
			
			<div class="main_text3">
				<div class="type_title1">
					휴대전화 <span id="span1" style = "color : red;">*</span>
				</div>
				<div class="name">
					<input type="text" readonly id="textbar1">
				</div>
			</div> <!-- 휴대전화 -->
			<div class="main_text3">
				<div class="type_title1">
					이메일 <span id="span1" style = "color : red;">*</span>
				</div>
				<div class="name">
					<input type="text" readonly id="textbar1">
				</div>
			</div> <!-- 이메일 -->
			<div class="main_text3">
				<div class="type_title1">
					제목 <span id="span1" style = "color : red;">*</span>
				</div>
				<div class="name">
					<input type="text" id="textbar1" style = "background:white; border : 2px solid #cdcdcd;">
				</div>
			</div> <!-- 제목 -->
			<div class="main_text4">
				<div class="type_title1">
					내용 <span id="span1" style = "color : red;">*</span>
				</div>
				<div class="name">
					<textarea id="write_area"style = "background:white; border : 2px solid #cdcdcd; padding : 10px;"></textarea>
				</div>
			</div><!-- 내용 -->
			<div class="file_wrap">
				<input type="file" name="file" accept="*" id="bizFile" />
				<div class="main_text3 mg">
					<div class="type_title1">
						<label for="bizFile" id="label1">파일 업로드</label>
					</div>
					<div class="name">
						<span id="textbar1" style="align-items: center; display: flex;">선택된 파일없음</span>
					</div>
					<div class = "btn" style = "margin-left : 20px;">
						<label for="bizFile" id="label1">파일 선택</label>
					</div>		
				</div>
			</div><!-- 첨부파일 -->
			
			<div class = "button-wrapper">
				<a href="/myasklist.do?customer_no=${num}" class="action-button shadow animate grey" style = "height : 30px;">취소</a>	
				<a type = "submit" id = "insert" class="action-button shadow animate blue" style = "height : 30px;">등록</a>	
			</div>
			</div>
			</form>
		</div> <!-- content-title-wrapper -->	
	</div>	
</div>	

	<jsp:include page="/common/footer.jsp" />

<!-------------------- 스크립트 -------------------->
<script>
	document.getElementById("bizFile").addEventListener("change",function() {
		var filename = document.getElementById("fileName");

		if (this.files[0] == undefined) {
			filename.innerText = "선택된 파일없음";
			return;
		}

		var size = this.files[0].size;
		
		if (size > 1024 * 1024 * 5) {												
			alert("첨부 파일은 5M를 초과 할 수 없습니다.");
			return false;
		}
		filename.innerText = this.files[0].name;
	});
</script>
</body>
</html>