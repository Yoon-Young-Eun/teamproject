<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="../css/MyMain.css">
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



<div class="body_wrapper">
<div class="margin_side">
<div class="side_menu">
<div class="side_menu_name"><a href="MyMain.jsp">으아아아</a></div>
<div class="side_menu_title">마이 페이지</div>
<div class="side_menu_content"><a href="MyOrderlist.jsp">내 세탁물 관리</a></div>
<div class="side_menu_content"><a href="#">내 주소지 관리</a></div>
<div class="side_menu_content"><a href="MyQnA.jsp">내 문의 내역</a></div>
<div class="side_menu_content"><a href="MyCoupon.jsp">쿠폰 관리</a></div>
<div class="side_menu_content"><a href="PassConfirm.jsp">회원 정보수정</a></div>
<div class="side_menu_content"><a href="MyDropUser.jsp">회원 탈퇴</a></div>
</div>
</div>
<div class="body_content">


<!---------- 본문 시작 ---------->




<div class="mypage_head">
<div class="mypage_info_card">
<div class="mypage_info_card_box_border">
<div class="mypage_info_card_title">최근 주문 ></div>

<div class="mypage_info_card_content">3</div>
</div>
<div class="mypage_info_card_box_border">
<div class="mypage_info_card_title">진행 중 주문 ></div>
<div class="mypage_info_card_content">1</div>
</div>
<div class="mypage_info_card_box">
<div class="mypage_info_card_title">보유 쿠폰 ></div>
<div class="mypage_info_card_content">2</div>
</div>
</div>
</div>


<div class="orderlist_head">
<div class="orderlist_head_title"><h2>최근 주문</h2></div>
<div class="orderlist_head_add"><a href="MyOrderlist.jsp">더보기 ></a></div>
</div>
<div class="orderlist_body">
	<div class="orderlist_body_title">
		<div class="title_num">주문번호</div>
		<div class="title_item">내용</div>
		<div class="title_address">주소</div>
		<div class="title_order_date">주문일자</div>
		<div class="title_pickup_date">픽업일자</div>
		<div class="title_work">주문상태</div>
		
	</div>
	
	<div class="orderlist_body_content">
		<div class="content_num">000003</div>
		<div class="content_item"><a href="MyOrder.jsp">컬러 와이셔츠/면,마 소재 외 2건asdfasdfasdfasdfasdfasd</a></div>
		<div class="content_address">서울 강북구 삼각산로 123fasdfasdfasdfasdfasdf</div>
		<div class="content_order_date">2022.07.11(월)</div>
		<div class="content_pickup_date">2022.07.15(금)</div>
		<div class="content_work"><a href="MyEstimate.jsp">견적서보기</a></div>
	</div>
	
	<div class="orderlist_body_content">
		<div class="content_num">000002</div>
		<div class="content_item">컬러 와이셔츠/면,마 소재 외 2건asdfasdfasdfasdfasdfasdf</div>
		<div class="content_address">서울 강북구 삼각산로 123</div>
		<div class="content_order_date">2022.07.11(월)</div>
		<div class="content_pickup_date">2022.07.15(금)</div>
		<div class="content_work">주문완료</div>
	</div>
	
	<div class="orderlist_body_content">
		<div class="content_num">000001</div>
		<div class="content_item">컬러 와이셔츠/면,마 소재 외 2건</div>
		<div class="content_address">서울 강북구 삼각산로 123</div>
		<div class="content_order_date">2022.07.11(월)</div>
		<div class="content_pickup_date">2022.07.15(금)</div>
		<div class="content_work">주문완료</div>
	</div>
</div>

<br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br>


<!---------- 본문 끝 ---------->


</div>
<div class="margin_side"></div>
</div>



</div>
</div>

</body>
</html>