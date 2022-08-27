<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="../css/MyOrder.css">
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



<div class="wrapper">
<div class="order_row_title">
<div class="order_title"><h1>주문상세</h1></div>
<div class="order_box_btn">
<div class="order_cancle_btn action-button shadow animate red">주문취소</div>
</div>
</div>
<div class="order_box_top">
<div class="order_row">
<div class="order_box_title">주문번호</div>
<div class="order_box_content">001</div></div>
<div class="order_row">
<div class="order_box_title">수거예약일</div>
<div class="order_box_content">7월15일(금) 오전 8시</div>
<div class="order_box_title">배송예정일</div>
<div class="order_box_content">7월20일(수)~7월21일(목) 배송예정</div></div>
</div>

<div class="order_navi_bar">
<div class="order_navi_bar_img"><img src="../image/delivery-progress-1.png"></div>
<div class="order_navi_bar_content">
<div class="condition">주문접수</div>
<div class="condition">수거 중</div>
<div class="condition">세탁 중</div>
<div class="condition">배송 중</div>
<div class="condition">배송완료</div>
</div>
<!-- <div class="order_navi_bg_round">주문접수</div> -->
<!-- <div class="order_navi_arrow"></div> -->
<!-- <div class="order_navi_bg_round">수거 중</div> -->
<!-- <div class="order_navi_arrow"></div> -->
<!-- <div class="order_navi_bg_round">세탁 중</div> -->
<!-- <div class="order_navi_arrow"></div> -->
<!-- <div class="order_navi_bg_round">배송 중</div> -->
<!-- <div class="order_navi_arrow"></div> -->
<!-- <div class="order_navi_bg_round">배송완료</div> -->
</div>

<div class="order_map">
<div id="map" class="map"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	02e5f2db16b1888a0191b2bbe1098628"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.5131019, 126.9399366),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		
		// 마커가 표시될 위치입니다 
		var position  = new kakao.maps.LatLng(37.5131019, 126.9399366); 

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		  position: position,
		  clickable: true // 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정합니다
		});

		// 아래 코드는 위의 마커를 생성하는 코드에서 clickable: true 와 같이
		// 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정합니다
		// marker.setClickable(true);

		// 마커를 지도에 표시합니다.
		marker.setMap(map);

		// 마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
		var iwContent = '<div style="padding:5px;">Hello World!</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
		    iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

		// 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
		    content : iwContent,
		    removable : iwRemoveable
		});

		// 마커에 클릭이벤트를 등록합니다
		kakao.maps.event.addListener(marker, 'click', function() {
			
        // 마커 위에 인포윈도우를 표시합니다
        infowindow.open(map, marker);    
		      
		});
	</script>
<div class="map_store_list">


<div class="chart">
<div class="chart_item_mg"><img src=../image/blue_85.png width=35px height=43px></div>
<div class="chart_item">
<span class="chart_title">
2001아울렛(분당점)
</span>
<br>
<span class="chart_icon">
<img src=../image/icon_store01.png>&nbsp;<img src=../image/icon_store02.png>&nbsp;<img src=../image/icon_store03.png>&nbsp;<img src=../image/icon_store05.png>&nbsp;<img src=../image/icon_store06.png>&nbsp;
</span>
<br>
<span class="chart_body">
경기도 성남시 분당구 미금일로154번길<br>
20(구미동) 2001아울렛분당점 지하2층<br>
031-786-2929<br>
</span>
</div>
<div class="chart_item_mg_r"></div>
</div>
<hr>



<div class="chart">
<div class="chart_item_mg"><img src=../image/blue_85.png width=35px height=43px></div>
<div class="chart_item">
<span class="chart_title">
2001아울렛(분당점)
</span>
<br>
<span class="chart_icon">
<img src=../image/icon_store01.png>&nbsp;<img src=../image/icon_store02.png>&nbsp;<img src=../image/icon_store03.png>&nbsp;<img src=../image/icon_store05.png>&nbsp;<img src=../image/icon_store06.png>&nbsp;
</span>
<br>
<span class="chart_body">
경기도 성남시 분당구 미금일로154번길<br>
20(구미동) 2001아울렛분당점 지하2층<br>
031-786-2929<br>
</span>
</div>
<div class="chart_item_mg_r"></div>
</div>
<hr>





<div class="chart">
<div class="chart_item_mg"><img src=../image/blue_85.png width=35px height=43px></div>
<div class="chart_item">
<span class="chart_title">
2001아울렛(분당점)
</span>
<br>
<span class="chart_icon">
<img src=../image/icon_store01.png>&nbsp;<img src=../image/icon_store02.png>&nbsp;<img src=../image/icon_store03.png>&nbsp;<img src=../image/icon_store05.png>&nbsp;<img src=../image/icon_store06.png>&nbsp;
</span>
<br>
<span class="chart_body">
경기도 성남시 분당구 미금일로154번길<br>
20(구미동) 2001아울렛분당점 지하2층<br>
031-786-2929<br>
</span>
</div>
<div class="chart_item_mg_r"></div>
</div>
<hr>





<div class="chart">
<div class="chart_item_mg"><img src=../image/blue_85.png width=35px height=43px></div>
<div class="chart_item">
<span class="chart_title">
2001아울렛(분당점)
</span>
<br>
<span class="chart_icon">
<img src=../image/icon_store01.png>&nbsp;<img src=../image/icon_store02.png>&nbsp;<img src=../image/icon_store03.png>&nbsp;<img src=../image/icon_store05.png>&nbsp;<img src=../image/icon_store06.png>&nbsp;
</span>
<br>
<span class="chart_body">
경기도 성남시 분당구 미금일로154번길<br>
20(구미동) 2001아울렛분당점 지하2층<br>
031-786-2929<br>
</span>
</div>
<div class="chart_item_mg_r"></div>
</div>
<hr>




</div>
</div>


<div class="order_sub_title">주문품목정보</div>

<div class="order_box_item">
<div class="order_row">
<div class="order_item_name_data">양복/교복상의</div>
<div class="order_item_count_data">1</div>
<div class="order_item_price_data">1,800원</div></div>
<div class="order_row">
<div class="order_item_name_data">흰색 와이셔츠</div>
<div class="order_item_count_data">2</div>
<div class="order_item_price_data">4,200원</div></div>
<div class="order_row">
<div class="order_item_name_data">컬러 와이셔츠</div>
<div class="order_item_count_data">1</div>
<div class="order_item_price_data">1,200원</div></div>
</div>

<div class="order_sub_title">예약자정보</div>

<div class="order_box_user">
<div class="order_row">
<div class="order_box_title">이름</div>
<div class="order_box_content">홍길동</div></div>
<div class="order_row">
<div class="order_box_title">연락처</div>
<div class="order_box_content">010-1234-5678</div></div>
<div class="order_row">
<div class="order_box_title">주소</div>
<div class="order_box_content">서울시 강북구 삼각산로 123-3 501호</div></div>
<div class="order_row">
<div class="order_box_title">출입</div>
<div class="order_box_content">현관0000</div></div>
</div>

<div class="order_sub_title">요청메세지</div>

<div class="order_box_req">
<div class="order_row">
<div class="order_box_title">세탁소</div>
<div class="order_box_content">특수오염 제거요청</div></div>
<div class="order_row">
<div class="order_box_title">기사님</div>
<div class="order_box_content">배송 전에 전화주세요</div></div>
</div>

<div class="order_sub_title">결제정보</div>

<div class="order_row">
<div class="order_box_pay">
<div class="order_row order_row_a">
<div class="order_box_title">결제수단</div>
<div class="order_box_content">신한카드/일시불</div></div>
</div>
<div class="order_box order_box_a">
<div class="order_row">
<div class="order_box_title">총상품가격</div>
<div class="order_box_content">29,800</div></div>
<div class="order_row">
<div class="order_box_title">배송비</div>
<div class="order_box_content">3,000</div></div>
<div class="order_row">
<div class="order_box_title">카드/일시불</div>
<div class="order_box_content">29,800</div></div>
<div class="order_row order_row">
<div class="order_box_title">총 결제금액</div>
<div class="order_box_content order_box_content_r">29,800</div></div>
</div>
</div>
<div class="margin_end"></div>
</div>





<!---------- 본문 끝 ---------->


</div>
<div class="margin_side"></div>
</div>



</div>
</div>

</body>
</html>