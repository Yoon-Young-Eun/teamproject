<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
<link rel="stylesheet" href="css/main.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<title>Insert title here</title>

</head>
   
<header>
   <div class = "top-menu-wrapper" >
      <h1>△■</h1>
      <nav class = "top-menu">
         <ul class = "top-list">
         	<li style = "line-height : 68px; padding-right:30px;">반갑습니다, <b>김애링</b>님!</li>
            <li><a href = "main.jsp">로그아웃</a></li>
            <li><a href = "#">마이페이지</a></li>
            <li><a href = "#">고객센터</a></li>
         </ul>
      </nav>
   </div>
</header>

<body>

<nav id="cbp-hrmenu" class="cbp-hrmenu">
   <ul>
      <li>
         <a href="#">처음이세야?</a>
         <div class = "cbp-hrsub">
            <div class="cbp-hrsub-inner">
               <div>
                  <h4>이용방법</h4>
                  <ul>
                     <li><a href="#">주문방법</a></li>
                     <li><a href="#">수거방법</a></li>
                  </ul>
               </div>
            </div><!-- hrsub inner -->
         </div><!-- hrsub -->
      </li>
      <li>
         <a href="#">서비스 지역</a>
         <div class = "cbp-hrsub">
            <div class="cbp-hrsub-inner">
               <div>
                  <h4>서비스 지역</h4>
                  <ul>
                     <li><a href="#">서울</a></li>
                  </ul>
               </div>
            </div><!-- hrsub inner -->
         </div><!-- hrsub -->
      </li>
      <li>
         <a href="#">세탁서비스</a>
         <div class = "cbp-hrsub">
            <div class="cbp-hrsub-inner">
               <div>
                  <h4>일반 클리닝</h4>
                  <ul>
                     <li><a href="#">일반의류</a></li>
                     <li><a href="#">와이셔츠</a></li>
                     <li><a href="#">이불</a></li>
                     <li><a href="#">운동화</a></li>
                  </ul>
                  <h4>특수 클리닝</h4>
                  <ul>
                     <li><a href="#">로얄 클리닝</a></li>
                     <li><a href="#">특수 클리닝</a></li>
                  </ul>
               </div>
               <div>
                  <h4>　</h4>
                  <ul>
                     <li><a href="#">아웃도어</a></li>
                     <li><a href="#">교복</a></li>
                     <li><a href="#">모자/인형/가방</a></li>
                  </ul>
               </div>
               
            </div><!-- hrsub inner -->
         </div><!-- hrsub -->
      </li>
      <li>
         <a href="#">회사 소개</a>
         <div class = "cbp-hrsub">
            <div class="cbp-hrsub-inner">
               <div>
                  <h4>어서오세야</h4>
                  <ul>
                     <li><a href="company-info.jsp#hello">인삿말</a></li>
                     <li><a href="company-info.jsp#info">회사소개</a></li>
                  </ul>
               </div>
            </div><!-- hrsub inner -->
         </div><!-- hrsub -->
      </li>
   </ul>
<script>
var cbpHorizontalMenu = (function() {
    
    var $listItems = $( '#cbp-hrmenu > ul > li' ),
        $menuItems = $listItems.children( 'a' ),
        $body = $( 'body' ),
        current = -1;
 
    function init() {
        $menuItems.on( 'click', open );
        $listItems.on( 'click', function( event ) { event.stopPropagation(); } );
    }
 
    function open( event ) {
 
        if( current !== -1 ) {
            $listItems.eq( current ).removeClass( 'cbp-hropen' );
        }
 
        var $item = $( event.currentTarget ).parent( 'li' ),
            idx = $item.index();
 
        if( current === idx ) {
            $item.removeClass( 'cbp-hropen' );
            current = -1;
        }
        else {
            $item.addClass( 'cbp-hropen' );
            current = idx;
            $body.off( 'click' ).on( 'click', close );
        }
 
        return false;
 
    }
 
    function close( event ) {
        $listItems.eq( current ).removeClass( 'cbp-hropen' );
        current = -1;
    }
 
    return { init : init };
 
})();

$(function() {
            cbpHorizontalMenu.init();
});
</script>
</nav>

<div class="section">
	<input type="radio" name="slide" id="slide01" checked>
	<input type="radio" name="slide" id="slide02">
	<input type="radio" name="slide" id="slide03">
	<div class="slidewrap">
		
		<ul class="slidelist">
			<!-- 슬라이드 영역 -->
			<li class="slideitem">
				<a>
					<img src="http://www.clean-aid.co.kr/uploads/banner/20220302670190.jpg">
				</a>
			</li>
			<li class="slideitem">
				<a>
					<img src="http://www.clean-aid.co.kr/uploads/banner/20180403575555.jpg">
				</a>
			</li>
			<li class="slideitem">
				<a>
					<img src="http://www.clean-aid.co.kr/uploads/banner/20190131807498.jpg">
				</a>
			</li>

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
		<!-- 페이징 -->
		<ul class="slide-pagelist">
			<li><label for="slide01"></label></li>
			<li><label for="slide02"></label></li>
			<li><label for="slide03"></label></li>
		</ul>
	</div>

	
</div>

<div class = "img-banner"><img src="image/aal banner.png"></div>

<div class = "button">
	<div class = "botton-list">
		<div class = "btn" onclick = "location.href='#'">
			<span class = "btn-title">예약하기</span><br>
			<span class = "btn-text">당신의 세탁물, <br> 지금 세모에게 맡기세요!</span><br>
			<span class = "btn-icon"><i class="far fa-calendar-check fa-5x"></i></span>
		</div>
		<div class = "btn" onclick = "location.href='#'">
			<span class = "btn-title">세탁현황</span><br>
			<span class = "btn-text">맡기신 세탁물, <br>진행상황이 궁금하세요?</span><br>
			<span class = "btn-icon"><i class="fas fa-truck fa-5x"></i></span>
		</div>
	</div>
</div>



<div class="rbd-core-ui" style = "background-image:url(image/review-back.png);">
	<div class="rbd-review-slider" style = "padding : 50px;">
	<h2 style = "text-align:center; line-height:60px; padding : 20px; color:black;">후★기</h2>
		<div class="rbd-review-container">
			<div class="rbd-review review1.1 rbd-curr">
				<h3 class="rbd-heading">이 집 세탁 잘하네</h3>
				<div class ="wrap-star">
					<span><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></span>
				</div>
				<div class="rbd-content">돈세탁도 해주나요?</div>
				<div class="rbd-footing">
					<a class="rbd-button rbd-small" href="#">더보기</a>
				</div>
				<div class="rbd-review-meta">2022.08.29</div>
			</div>
			<div class="rbd-review review1.2 rbd-next">
				<h3 class="rbd-heading">바지 세탁 맡겼는데 앞구르기 하다가 찢어졌어요</h3>
				<div class ="wrap-star">
					<span><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i></span>
				</div>
				<div class="rbd-content">내 바지 돌려줘요</div>
				<div class="rbd-footing">
					<a class="rbd-button rbd-small" href="#">더보기</a>
				</div>
				<div class="rbd-review-meta">2022.06.30</div>
			</div>
			<div class="rbd-review review1.3">
				<h3 class="rbd-heading">왜 세탁소 연결을 대전에다 해주세요</h3>
				<div class ="wrap-star">
					<span><i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i></span>
				</div>
				<div class="rbd-content">난 서울 사는디</div>
				<div class="rbd-footing">
					<a class="rbd-button rbd-small" href="#">더보기</a>
				</div>
				<div class="rbd-review-meta">2022.10.11</div>
			</div>
		</div>
	</div>
	
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
</div>


</body>

<footer>
	<div class = "bottom-menu">
		<ul>
			<li><a href="#">개인정보처리방침</a></li>
			<li><a href="#">이용약관</a></li>
			<li><a href="#">의류보관 이용약관</a></li>
		</ul>
	</div>
	<div class = "bottom-info">
		<h2>△■</h2>
		<div class = "bottom-info-list">
			<span>상호명 : 세탁의 모든것</span>
			<span>대표전화 : 02-000-0000</span>
			<span>사업자 번호 : no.00000000000</span>	
		</div>
	</div>
</footer>
</html>