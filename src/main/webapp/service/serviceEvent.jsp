<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<!-- font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
<!-- resources -->
<link rel="stylesheet" href="/service/css/serviceEvent.css"/>
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
				<h2>이벤트</h2>
			</div>
			<!-- 소제목 -->
			<div class = "content-subtitle-wrapper">
				<p>세모의 다양한 이벤트를 만나보세요</p>		
			</div><!-- content-subtitle-wrapper -->
		</div> <!-- content-title-wrapper -->	
    <div class="main-wrapper">
		<div class="main_box">
			<div class="main_text">
				<div class="main_reg_date">
					<div class = "title">등록일</div> 
					<div class = "con">${event.board_event_reg_date}</div>
				</div>
				<div class="main_content">
					<div class="main_img">
						<img src="${event.board_event_filepath}"><br>
					</div>
					${event.board_event_content}
				</div>
				
				<div class="right">
					<div class = "title">파일명</div>
					<span class="mg_left"><a href="${event.board_event_filepath}" target="_blank">${filename}</a></span>
				</div><br>
				
				
				<br><br>
				<div class="event_btn"><input type="button" id="button2" value="목록" onclick="location.href='/getBoardEventList.do'" class="action-button shadow animate blue" ></div>
				<br><br>
			
				
	   		</div>
		</div><!--main_box  -->
    </div><!-- main -->
    </div>
    </div>
    
    
</body>
<jsp:include page="/common/footer.jsp" />
</html>