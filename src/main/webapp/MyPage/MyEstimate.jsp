<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- <html style="position:absolute; z-index:1;"> -->
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="../css/MyEstimate.css">
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




<div class="special_box">

<div class="special_title"><h1>견적내역서</h1></div>
<div class="speical_margin_space"></div>
<div class="speical_margin_space"></div>

<div class="special_row">
<div class="special_sub_title"><h2>접수내역</h2></div>

<div class="special_sub_content_box">
<div class="special_row">
<div class="special_body_title">접수번호</div>
<div class="special_body_content">001</div>
</div>
<div class="special_row">
<div class="special_body_title">접수일자</div>
<div class="special_body_content">2022/08/26(금) 17:14:32</div>
</div>

<div class="special_row">
<div class="special_body_title pd_btm">내용</div>
<div class="special_body_content">더러워요 깨끗하게 세탁 해주세요</div>
</div>

<div class="special_row">
<div class="special_body_title">첨부이미지</div>
<div class="special_body_img"><img src="../image/oh_whale.jpg"></div>
</div>

</div>
</div>

<div class="speical_margin_space"></div>
<div class="speical_margin_space"></div>
<div class="speical_margin_space"></div>
<div class="speical_margin_space"></div>
<div class="speical_margin_space"></div>
<div class="speical_margin_space"></div>
<div class="speical_margin_space"></div>
<div class="speical_margin_space"></div>
<div class="speical_margin_space"></div>
<div class="speical_margin_space"></div>
<div class="speical_margin_space"></div>

<div class="special_row">
<div class="special_sub_title"><h2>견적내역</h2></div>
<div class="speical_margin_space"></div>

<div class="special_sub_content_box">
<div class="special_row">
<div class="special_body_title">견적일자</div>
<div class="special_body_content">2022/08/26(금) 17:14:32</div>
</div>
<div class="special_row">
<div class="special_head_title pd_btm">내용</div>
<div class="special_body_content">기름때 제거</div>
</div>
<div class="special_row">
<div class="special_head_title pd_top">금액</div>
<div class="special_head_content">10,000</div>
</div>
</div>
</div>


</div>
<div class="special_btn">

	<div class="end">
		<div class="action-button shadow animate blue" onclick="location.href='#'">결제</div>
		<div class="action-button shadow animate blue" onclick="location.href='MyOrderlist.jsp'">취소</div>
	</div>

</div>




<!---------- 본문 끝 ---------->


</div>
<div class="margin_side"></div>
</div>



</div>
</div>

</body>
</html>