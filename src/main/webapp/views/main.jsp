<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>[세모]세탁의 모든것</title>
<%session.getAttribute("access_Token");%>
<!-- font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
<!-- resources -->
<link rel="stylesheet" href="/views/resources/css/main.css"/>
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

<!-- 헤더 -->
<form action="/login.do">
<div id = "header">
</div>

<!-- 배너 -->
<div class="section">
	<input type="radio" name="slide" id="slide01" checked>
	<input type="radio" name="slide" id="slide02">
	<input type="radio" name="slide" id="slide03">
	<div class="slidewrap">
		
		<ul class="slidelist">
		
		<!-- 페이징 -->
		<ul class="slide-pagelist">
			<li><label for="slide01"></label></li>
			<li><label for="slide02"></label></li>
			<li><label for="slide03"></label></li>
		</ul>
		
			<!-- 배너 슬라이드 영역 -->
			<c:forEach var="banner" items="${BannerList}">
			<li class="slideitem">
				<a href="getBoardEvent.do?board_event_no=${banner.board_event_no}">
					<img src="${banner.banner_filepath}">
				</a>
			</li>
			</c:forEach>
			
			<!-- 좌,우 슬라이드 버튼 -->
			<div class="slide-control">
				<div>
					<label for="slide03" class="left"><i class="fas fa-angle-left"></i></label>
					<label for="slide02" class="right"><i class="fas fa-angle-right"></i></label>
				</div>
				<div>
					<label for="slide02" class="left"><i class="fas fa-angle-left"></i>></label>
					<label for="slide03" class="right"><i class="fas fa-angle-right"></i></label>
				</div>
				<div>
					<label for="slide02" class="left"><i class="fas fa-angle-left"></i></label>
					<label for="slide01" class="right"><i class="fas fa-angle-right"></i></label>
				</div>
			</div>
		</ul>
	</div>	
</div>
<!-- 바로가기 버튼 -->
<div class = "button">
	<div class = "botton-list">
		<div id = "booking" class = "btn">
			<span class = "btn-title">예약하기</span><br>
			<span class = "btn-text">당신의 세탁물, <br> 지금 세모에게 맡기세요!</span><br>
			<span class = "btn-icon"><i class="far fa-calendar-check fa-5x"></i></span>
		</div>
		<div id = "tracking" class = "btn">
			<span class = "btn-title">세탁현황</span><br>
			<span class = "btn-text">맡기신 세탁물, <br>진행상황이 궁금하세요?</span><br>
			<span class = "btn-icon"><i class="fas fa-truck fa-5x"></i></span>
		</div>
	</div>
</div>

<!-- 이미지 베너 --> 
<div class = "img-banner"><img src="/views/resources/img/aal banner.png"></div>


<!-- 리뷰세션 -->
<div class="rbd-core-ui" style = "background-image:url(/views/resources/img/review-back.png);">
	<div class="rbd-review-slider" style = "padding : 50px;">
	<h2 style = "text-align:center; line-height:60px; padding : 20px; color:black;">후★기</h2>
		<div class="rbd-review-container">
		<c:forEach var="review" items="${ReviewList}">
			<div class="rbd-review review1.${review.board_review_no } rbd-curr">
				<h3 class="rbd-heading">${review.board_review_title}</h3>
				<div class ="wrap-star">
					<c:choose>
							<c:when test="${review.board_review_rating eq 5}">
							<span><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></span>
							    </c:when>
							<c:when test="${review.board_review_rating eq 4}">
							<span><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></span>
							    </c:when>
							<c:when test="${review.board_review_rating eq 3}">
							<span><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></span>
							    </c:when>
							<c:when test="${review.board_review_rating eq 2}">
							<span><i class="fas fa-star"></i><i class="fas fa-star"></i></span>
							    </c:when>
							<c:otherwise>
							<span><i class="fas fa-star"></i></span>
								</c:otherwise>
						</c:choose>
				</div>
				<div class="rbd-content">${review.board_review_content}</div>
				<div class="rbd-footing">
				</div>
				<div class="rbd-review-meta">${review.board_review_reg_date}</div>
			</div>
		</c:forEach>
		

		</div>
	</div>
</div>
<div class = "always-button">
<!-- <a href = "#"><img alt="" src="/views/resources/img/booking.png"></a> -->
<br>
<br>
<br>
<a class = "going-up" href = "#"><img alt="" src="/views/resources/img/going_up.png"></a>
</div>
<jsp:include page="/common/footer.jsp"/> 

</form>
</body>

<!---------------------- 스트립트 ---------------------->

<!-- 헤더 -->
<script type="text/javascript">
$(function(){
	
	var id = "${id}";
	
	if (id == ""){
		$('#header').load("/common/header.jsp");
	} else {
		$('#header').load("/common/logined-header.jsp");
	}
	

});
</script>

<!-- 바로가기 버튼 -->
<script type="text/javascript">
$(function() {
	$('#booking').click(function(){
		var id = "${num}";
		
		if (id == ""){
			location.href = "/login.do";
		}else {
			location.href = "/startOrder.do";
		}
	});
	
	$('#tracking').click(function(){
		var id = "${num}";
		console.log(id);
		if (id == ""){
			location.href = "/login.do";
		} else {
			location.href = "/myorderlist.do?customer_no=${num}";
		}
	})
});
</script>

<!-- 리뷰세션 -->
<script>
	let options = {
			'speed': 3000,
			'pause': true,
		}

		window.addEventListener('DOMContentLoaded', function() {
			let slider = document.querySelector('.rbd-review-slider');
			let slides = slider.querySelectorAll('.rbd-review');
			let total  = slides.length;
			let pause  = false;
			
			function pauseSlide(){
				slider.onmouseleave = function(){ pause = false; };
				slider.onmouseenter = function(){ pause = true; };
				return pause;
			}
			
			function slide(){
				if( options.pause && pauseSlide() ) return;
				
				let activeSlide = document.querySelector('.rbd-review-slider .rbd-review.rbd-curr');
				let prev, curr, next, soon;		
				
				curr = activeSlide;
				prev = activeSlide.previousElementSibling;
				next = activeSlide.nextElementSibling;
				
				if( next != null ){
					soon = next.nextElementSibling == null ? slides[0] : next.nextElementSibling;
				} else {
					next = slides[0];
					soon = slides[1];
				}
				
				if( prev != null ) prev.classList.remove('rbd-prev', 'rbd-curr', 'rbd-next');
				if( curr != null ) curr.classList.remove('rbd-prev', 'rbd-curr', 'rbd-next'); curr.classList.add('rbd-prev');
				if( next != null ) next.classList.remove('rbd-prev', 'rbd-curr', 'rbd-next'); next.classList.add('rbd-curr');
				if( soon != null ) soon.classList.remove('rbd-prev', 'rbd-curr', 'rbd-next'); soon.classList.add('rbd-next');
			}
			
			let slideTimer = setInterval(function(){
				slide();
			}, options.speed);
		}, true);
</script>


</html>