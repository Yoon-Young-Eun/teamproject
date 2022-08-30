<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="../css/pay1.css">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <title>Document</title>


  <script language="javascript">
   
    function agreeCheck(frm)
    {
       if (frm.button1.disabled==true)
        frm.button1.disabled=false
        
       else
        frm.button1.disabled=true
       
    }
    
    </script>
  
</head>
<body>

  <div class="wrap">
    <div class="wrap1">
<!-- haeder 시작 -->
<header>
   
  <div class = "top-menu-wrapper">
   
     <h1>△■</h1>
     <nav class = "top-menu">
        <ul class = "top-list"> 
           <li><a href = "#">로그인</a></li>
           <li><a href = "#">회원가입</a></li>
           <li><a href = "#">마이페이지</a></li>
           <li><a href = "#">고객센터</a></li>
        </ul>
     </nav>
  
</div>
</header>
<!-- haeder 끝 -->
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
                  <li><a href="#">일반 클리닝</a></li>
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

<div class="main">
  <div class="space_left"></div>
  <div class="paymainBox">
    <div class="paymain_text">
      세탁 서비스 예약하기
    </div>
    
    <div class="paymain_text1">
      유의사항
    </div>
    <div class="paymain_text2">
      <ol id="ol1">
        <li>선택하신 <span id="text_1">날짜는 선택 이후 변동이 불가능</span>합니다.</li>
        <li>선택하신 수거일에 맞춰 기사님이 방문하시니 <span id="text_2">잊지말고
          세탁물을 내놓아주세요!</span></li>
        <li>세탁 상황에 따라 1~2일 조기에 배송되거나 지연될 수 있는 점
          양해부탁드립니다.</li>
        <li>주말 및 공휴일에는 세탁서비스가 운영되지 않으며 ,
          수거,배송 업무 또한 진행되지 않는 점 유의 부탁드립니다.</li>
        <li>세탁물이 수거된 이후에는 <span id="text_3">취소/환불</span>이 불가능합니다.</li>
        </ol>
    </div>
    
    <div class="paymain_text3">
      특수세탁
    </div>
    <div class="paymain_text4">
      특수세탁이란 ?<br>
      땀이나 오염물질로 인해 누렇게 변한 얼룩 드라이크리닝으로도 제거가 안되는 땀 성분<br>
      곰팡이,핏물,잉크 등과 같이 일반세탁으로 쉽게 빠지지 않는 오염들을 특수작업을 통해서<br>
      제거해 드리는 세탁 서비스 입니다.
    </div>
    <div class="paymain_text5">
      <span id="text_4">특수세탁의 경우 일반세탁과 다르게 세탁물을 먼저 수거 후 세탁요금에 대한 견적을<br>
      받아 보신 후 세탁을 진행하셔야 합니다.</span>
    </div>
    <div class="paymain_link1">
      <a href="#" id="a_link">[자세히]</a>
    </div>
    
    <div class="paymain_text6">
      일반세탁
    </div>
    <div class="paymain_text7">
      일반세탁이란 ?<br>
      소재 및 세탁방법에 따라 분류 후 오염제거 및 세탁물 손상보호<br>
      세탁물 건조 /오염제거정도 체크/ 다림질 과정을 거치는 세탁서비스 입니다.
      
    </div>
    <div class="paymain_text8">
      <span id="text_5">일반세탁의 경우 소재/세탁물의 종류에 따라 정해진 금액에
        맞춰서 금액이 책정되며 ,<br>
         특수세탁과 다르게 견적을 받지 않으셔도 됩니다.
      </span>
    </div>
    <div class="paymain_link2">
      <a href="#" id="a_link">[자세히]</a>
    </div>
    
    <form name="form">
    <div class="paymain_text9">
      <input type="checkbox" id="checkbox1" onClick="agreeCheck(this.form)">
       <span id="span123">※유의사항을 숙지하였고 서비스를 신청합니다.</span>
    </div>
    
    <div class="paymain_button">
      <div class="paymain_button1">
      <input type="button" id="button1" value="확인" onclick="location.href='pay2.html'" disabled></input>
    </div>
    <div class="paymain_button1">
      <input type="button" id="button2" onclick="location.href='main.html'" value="취소">
    </div>
    </div>
  </form>
  
  </div>
  <div class="space_right"></div>
  </div> 


</div>
</div> 


<!-- 컨텐츠 시작 -->




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