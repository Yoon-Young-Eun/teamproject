<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="/css/serviceEventlist.css">
  <link rel="stylesheet" href="/common/css/button.css">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>[세모]세탁의 모든것</title>
</head>
<body>
<div class="wrap">
	<jsp:include page="/common/header.jsp"></jsp:include>
    <div class="wrap1">
    
    
    <div class="main">
	<div class="space_left">
	<jsp:include page="/common/centerSide.jsp"></jsp:include>
	</div>
	<div class="main_box">
	<div class="main_text">
	<div class="main_text1">
	이벤트
	</div>
	<div class="main_text2">
	
	<c:forEach var="event" items="${EventList}">
		<div class="main_text3">
		<div class="event_image">
		<a id="event1" href="getBoardEvent.do?board_event_no=${event.board_event_no}"><img src="${event.banner_filepath}"  id="image1"></a>
		
		</div>
		<div class="event_image1">
		<a id="event2" href="#">${event.board_event_title}<br><span id="span1">${event.board_event_content}</span></a>
		</div>
		</div>	
	</c:forEach>
	
	</div>
	</div>
	
	
    </div><!--main_box  -->
    <div class="space_right"></div>
    </div><!-- main -->
    
    
    </div><!-- wrap1 -->
    
    
 </div><!--wrap  -->
</body>
<jsp:include page="/common/footer.jsp" />
</html>