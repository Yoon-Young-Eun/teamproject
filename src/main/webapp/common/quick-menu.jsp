<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[세모]세탁의 모든것</title>
<style>
#followquick { 
	position:absolute; 
	top:180px; 
	left : 90%;
	background : #f7f7f7;
	padding : 20px;
	border : none;
	border-radius : 40px;
	}
	
#followquick img {
	height : 60px;
}	
</style>
</head>
<body>
	<div id = "followquick">
			<a class = "booking" href = "/startOrder.do"><img alt="" src="/views/resources/img/booking.png"></a>
			<br><br>
			<a class = "going-up" href = "#"><img alt="" src="/views/resources/img/going_up.png"></a>
	</div>
	
	<script>
	//follow quick menu
	$(window).scroll(function(){
	var scrollTop = $(document).scrollTop();
	if (scrollTop < 180) {
	 scrollTop = 180;
	}
	$("#followquick").stop();
	$("#followquick").css("margin-top","300px");
	$("#followquick").animate( { "top" : scrollTop });
	});
	</script>
</body>
</html>