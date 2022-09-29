<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%session.getAttribute("access_Token");  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>[세모]세탁의 모든것</title>

<!-- font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
<!-- resources -->
<link rel="stylesheet" href="/common/css/header.css"/>
<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

</head>

<body>


<header id = "header">
   <div class = "top-menu-wrapper" >
      <h1><a href = "/index.do"><img alt="" src="/common/img/logo_color.png" style = "height : 55px; margin-top : 15px;"></a></h1>
      <form action="/logout.do" name = "logoutForm" method = "post">
      <nav class = "top-menu">
         <ul class = "top-list">
         	<li><a href = "/index.do">메인으로</a></li>
            <li><button id = "logout" class = "logout" type="submit">로그아웃</button></li>
            <li><a href = "/mypage.do?customer_no=${num}">마이페이지</a></li>
            <li><a href = "/service/serviceMain.jsp">고객센터</a></li>
         </ul>
      </nav>
      </form>
   </div>
   <script>
   		$(document).ready(function(){
   			$('#logout').click(function(){
   				var result = confirm("로그아웃 하시겠습니까?");
   				var logoutForm = document.logoutForm;
   				
   				if(result == true){
   					logoutForm.submit();
   				} else{
   					return false;
   				}
   			});
   			
   		});
   </script>
</header>

<nav id="cbp-hrmenu" class="cbp-hrmenu">
   <ul>
      <li>
         <a href="#">처음이세야?</a>
         <div class = "cbp-hrsub">
            <div class="cbp-hrsub-inner">
               <div>
                  <h4>이용방법</h4>
                  <ul>
                     <li><a href="/views-menu/how_to.jsp#howto">주문방법</a></li>
                     <li><a href="/views-menu/how_to.jsp#delivery">수거방법</a></li>
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
                     <li><a href="/views-menu/location.jsp">서울</a></li>
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
                     <li><a href="/views-menu/cleaning-service-normal.jsp">일반의류</a></li>
                     <li><a href="/views-menu/cleaning-service-shirts.jsp">와이셔츠</a></li>
                     <li><a href="/views-menu/cleaning-service-bedding.jsp">이불</a></li>        
                  </ul>
                  <h4>특수 클리닝</h4>
                  <ul>
                     <li><a href="/views-menu/cleaning-service#royal">로얄 클리닝</a></li>
                     <li><a href="/views-menu/cleaning-service#special">특수 클리닝</a></li>
                  </ul>
               </div>
               <div>
                  <h4>　</h4>
                  <ul>
                     <li><a href="/views/cleaning-service#outdoor">아웃도어</a></li>
                      <li><a href="/views/cleaning-service#shoes">운동화</a></li>
                     <li><a href="/views/cleaning-service#acc">모자/인형/가방</a></li>
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
                     <li><a href="/views/company-info.jsp#hello">인삿말</a></li>
                     <li><a href="/views/company-info.jsp#info">회사소개</a></li>
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

</body>

</html>
