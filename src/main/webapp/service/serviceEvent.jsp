<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="/css/serviceEvent.css">
  <link rel="stylesheet" href="/common/css/button.css">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>[세모]세탁의 모든것</title>
</head>
<body>
<div class="wrap">
    <div class="wrap1">
      <!-- 헤더 : 로그인 유무에 따라 달라짐 -->  
    <form action="/login.do">
		<div id = "header">
			<script>
				$(function(){
					var id = "${id}";
	
					if (id == ""){
						$('#header').load("/common/header.jsp");
					} else {
						$('#header').load("/common/logined-header.jsp");
					}
				});
			</script>
		</div>
	</form>
    
    <div class="main">
	<div class="space_left">
	<jsp:include page="/common/centerSide.jsp"></jsp:include>
	</div>
	<div class="main_box">
	<div class="main_text">
	<div class="main_text1">
	이벤트
	</div>
	<div class="main_reg_date">
	등록일: ${event.board_event_reg_date}
	</div>
	<div class="main_content">
	${event.board_event_content}
	</div>
	<div class="main_img">
	<img src="${event.board_event_filepath}"><br>
	${filename}<br>
	<img src="/image/220829_01.jpg"><br>
	<img src="/image/220829_02.jpg"><br>
	<img src="/image/220829_03.jpg"><br>
	<img src="/image/220829_04.jpg"><br>
	
	<br><br>
	<div class="event_btn"><input type="button" id="button2" value="목록" onclick="location.href='/getBoardEventList.do'" class="action-button shadow animate blue" ></div>
	<br><br>
	
	</div>
    </div><!--main_box  -->
    <div class="space_right"></div>
    </div><!-- main -->
    
    
    </div><!-- wrap1 -->
    
    
 </div><!--wrap  -->
</body>
<jsp:include page="/common/footer.jsp" />
</html>