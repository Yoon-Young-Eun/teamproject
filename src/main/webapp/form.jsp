<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
<link rel="stylesheet" href="css/form.css"/>
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

<div class = "progress-bar">
	<div class = "progress-img"><img src="image/progress-3.png"></div>
	<div class = "progress-text">
		<ul>
			<li>이용약관</li>
			<li>본인인증</li>
			<li><b>회원정보</b></li>
			<li>가입완료</li>
		</ul>
	</div>
</div>

   <div class="wrapper">
      <div class="sectionInner container">
         <div class="content">
            <table class="tableWrap">
               <tbody class="personalInfo">
            <!--
                  <tr>
                     <th class="tableNumber">아이디</th>
                     <td class="tableTitle"><label for="checkId"><input
                           type="text" id="checkId" class="inputBox" /></label> <a href="#"
                        class="#">중복확인</a> <span class="text">6~12자의 영문만
                           가능합니다.</span></td>
                  </tr>
             -->
                  <tr>
                     <th class="tableNumber">아이디</th>
                     <td class="tableTitle"><label for="checkId"> <input
                           class="inputBox" id="email1" type="text" class="box" style="width : 25%;"> @  <input
                           class="inputBox" id="email2" type="text" class="box" style="width : 25%;"> <select
                           id="emailSelection" name="emailSelection" style="width : 19%;">
                              <option value="1" selected="selected">직접입력</option>
                              <option value="gmail.com">gmail.com</option>
                              <option value="naver.com">naver.com</option>
                              <option value="hanmail.net">hanmail.net</option>
                        </select> <script>
                           $(function() {
                              $(document).ready(function() {
                                 $('select[name=emailSelection]').change(function() {
                                    if ($(this).val() == "1") {
                                       $('#email2').val("");
                                 } else {
                                    $('#email2').val($(this).val());
                                       $("#email2").attr("readonly",true);
                                 }
                              });
                           });
                        });
                        </script>
                     </label> &nbsp; <a href="#" class="#">중복확인</a> 
                     <span class="text">예) example@mail.com</span>
                     </td>
                  </tr>
                  <tr>
                     <th class="tableNumber">비밀번호</th>
                     <td class="tableTitle"><label for="insertPw"><input
                           type="password" id="insertPw" class="inputBox" /></label> <span
                        class="text">비밀번호는 8자리 이상이며, 숫자영문 혼용은 필수입니다.</span></td>
                  </tr>
                  <tr>
                     <th class="tableNumber">비밀번호 확인</th>
                     <td class="tableTitle"><label for="checkPw"><input
                           type="password" id="checkPw" class="inputBox" /></label> <span
                        class="text">입력하신 비밀번호를 확인합니다.</span></td>
                  </tr>
                  <tr>
                     <th class="tableNumber">이름</th>
                     <td class="tableTitle"><label for="name"><input
                           type="text" id="name" class="inputBox" /></label>
                     <td>
                  </tr>

                  <tr>
                     <th class="tableNumber">생년월일</th>
                     <td class="tableTitle"><label for="date"><input
                           type="date" id="date" class = "inputBox"></label></td>
                  </tr>
                  <tr>
                     <th class="tableNumber">휴대폰</th>
                     <td class="tableTitle"><label for="phone"> <input
                           type="tel" class="inputBox" name="tel" id="telInput" required
                           pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}" maxlength="13"
                           placeholder="예) 010-1234-5678" /> <script>
                              function autoHypenTel(str) {
                                 str = str.replace(/[^0-9]/g, '');
                                 var tmp = '';

                                 if (str.substring(0, 2) == 02) {
                                    // 서울 전화번호일 경우 10자리까지만 나타나고 그 이상의 자리수는 자동삭제
                                    if (str.length < 3) {
                                       return str;
                                    } else if (str.length < 6) {
                                       tmp += str.substr(0, 2);
                                       tmp += '-';
                                       tmp += str.substr(2);
                                       return tmp;
                                    } else if (str.length < 10) {
                                       tmp += str.substr(0, 2);
                                       tmp += '-';
                                       tmp += str.substr(2, 3);
                                       tmp += '-';
                                       tmp += str.substr(5);
                                       return tmp;
                                    } else {
                                       tmp += str.substr(0, 2);
                                       tmp += '-';
                                       tmp += str.substr(2, 4);
                                       tmp += '-';
                                       tmp += str.substr(6, 4);
                                       return tmp;
                                    }
                                 } else {
                                    // 핸드폰 및 다른 지역 전화번호 일 경우
                                    if (str.length < 4) {
                                       return str;
                                    } else if (str.length < 7) {
                                       tmp += str.substr(0, 3);
                                       tmp += '-';
                                       tmp += str.substr(3);
                                       return tmp;
                                    } else if (str.length < 11) {
                                       tmp += str.substr(0, 3);
                                       tmp += '-';
                                       tmp += str.substr(3, 3);
                                       tmp += '-';
                                       tmp += str.substr(6);
                                       return tmp;
                                    } else {
                                       tmp += str.substr(0, 3);
                                       tmp += '-';
                                       tmp += str.substr(3, 4);
                                       tmp += '-';
                                       tmp += str.substr(7);
                                       return tmp;
                                    }
                                 }

                                 return str;
                              }

                              $('#telInput').keyup(function(event) {
                                 event = event || window.event;
                                 var _val = this.value.trim();
                                 this.value = autoHypenTel(_val);
                              });
                           </script></label>
                           <span style = "margin-left : 25px; margin-right:10px;">이벤트 수신</span>
                           <input type="radio" id="r1" name="rr" /><label for="r1"><span></span>동의</label>
                           <input type="radio" id="r1" name="rr" /><label for="r1"><span></span>비동의</label>
                           </td>
                 
                  </tr>
                  <tr>
                     <th class="tableNumber">우편번호</th>
                     <td class="tableTitle"><label for="PostalCode"><input
                           type="text" id="PostalCode" class="inputBox"
                           style="width: 30%;" /></label> <a href="#" class="btn01">우편번호 검색</a></td>
                  </tr>
                  <tr class="address">
                     <th class="tableNumber">주소</th>
                     <td class="tableTitle"><label for="address1"><input
                           type="text" id="address1" class="inputBox" style="width: 70%;" /></label>
                        <label for="address2"><input type="text" id="address2"
                           class="inputBox" style="width: 70%;"
                           placeholder="나머지 주소를 입력해주세요" /></label></td>
                  </tr>
                  

               </tbody>
            </table>
         </div>
      </div>
   </div>



<div class = "btn">
   <a href="certificate.jsp" class="action-button shadow animate blue">이전</a>
   <a href="complete.jsp" class="action-button shadow animate blue">다음</a>
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