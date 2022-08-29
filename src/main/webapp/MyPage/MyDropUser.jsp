<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="../css/MyDropUser.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
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




<div class="delete_title">
<h1>회원탈퇴</h1></div>
<div class="delete_title_wrapper">
<div class="delete_title_name">홍길동</div><div class="delete_title_name_add">(</div>
<div class="delete_title_id">hong1234</div><div class="delete_title_name_add">) 님</div>
</div>

<div class="delete_sub_title">
</div>
<!-- <div class="delete_info_form"> -->
<!-- <div class="delete_info_form_title">아이디</div> -->
<!-- <div class="delete_info_form_content"> -->
<!-- <input type="text"> -->
<!-- </div> -->
<!-- </div> -->

<div class="delete_pw_check_notice">계속하려면 본인임을 인증하세요</div>
<div class="delete_info_form">
<div class="delete_info_form_title">비밀번호 입력</div>
<div class="delete_info_form_content">
<input type="text">
</div>
</div>

<div class="write_btn">

	<div class="end">
		<div class="action-button shadow animate blue" onclick="location.href='#'">취소</div>
		<div class="action-button shadow animate blue" onclick="location.href='#'">탈퇴</div>
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