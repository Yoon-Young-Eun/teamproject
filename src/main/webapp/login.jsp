<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
<link rel="stylesheet" href="css/login.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<title>Insert title here</title>

</head>

<header>
   <div class = "top-menu-wrapper">
      <h1>△■</h1>
      <nav class = "top-menu">
         <ul class = "top-list">
            <li><a href = "main.jsp">메인으로</a></li>
            <li><a href = "terms.jsp">회원가입</a></li>
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
                     <li><a href="#">인삿말</a></li>
                     <li><a href="#">회사소개</a></li>
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

<div class="page-container">
        <div class="login-form-container shadow">
            <div class="login-form-right-side" style = "background-image:url(image/loginimg.png);">
                <div class="top-logo-wrap">
                    
                </div>
                <h1>세탁의 모든것</h1>
                <p></p>
            </div>
            <div class="login-form-left-side">
                <div class="login-top-wrap">
                </div>
                <div class="login-input-container">
                    <div class="login-input-wrap input-id">
                        <i class="far fa-envelope"></i>
                        <input placeholder="example@mail.com" type="text">
                    </div>
                    <div class="login-input-wrap input-password">
                        <i class="fas fa-key"></i>
                        <input placeholder="비밀번호"  type="password">
                    </div>
                </div>
                <div class="login-btn-wrap">
                    <button class="login-btn" onclick = "link.href='#'">로그인</button>
                    <span>아직 회원이 아니십니까?&nbsp;&nbsp;<a href = "terms.jsp">회원가입</a></span>
                    <span>비밀번호를 잊으셨나요? <a href="#" >&nbsp;&nbsp;비밀번호찾기</a></span>
                </div>
                <div class="social">
                	<span>소셜 로그인</span>
                </div>
            </div>
        </div>
    </div>



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