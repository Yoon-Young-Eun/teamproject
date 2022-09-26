<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="/css/paySpecialComplete.css">
  <link rel="stylesheet" href="/common/css/button.css">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>[세모]세탁의 모든것</title>

</head>
<body>

 <div class="wrap">
    <div class="wrap1">
    
    <jsp:include page="/common/logined-header.jsp"></jsp:include>
    
    <div class="main">
  <div class="space_left"></div>
  <div class="content_box">
    <div class="main_text1">
      견척요청이 완료되었습니다.
    </div>
    <div class="main_text2">
    <div class="main_text3">
      견적서 발송 소요기간은 1일 ~ 2일 입니다.
    </div>
    <div class="main_text4">
      세탁서비스에 대한 견적금액 책정완료시 회원님의 휴대폰으로 SMS 문자가 발송 될 예정입니다.
    </div>
    <div class="main_text5">
      발송된 견적서는 <span id="span1">[ 마이페이지 -> 나의 주문 ]</span> 에서 확인이 가능합니다.
    </div>
    <div class="main_text6">
      견적서 금액 확인 후 세탁서비스를 원하시는 경우 견적서 아래쪽 세탁진행을 눌러주세요
    </div>
    <div class="main_text7">
      이용해주셔서 감사합니다.
    </div>
  </div>
    
    <div class="main_text8">
      <input type="button" value="주문확인" id="button1" onclick="location.href='/myorderlist.do?customer_no=${num}'" class="action-button shadow animate blue">
      <input type="button" value="메인으로" id="button2" onclick="location.href='/views/main.jsp'" class="action-button shadow animate blue">
      <input type="button" value="추가세탁" id="button3" onclick="location.href='/pay/payUseText.jsp'" class="action-button shadow animate blue">
    </div>
  </div>
  
  <div class="space_right"></div>
</div>
    </div>
    </div>

</body>

<jsp:include page="/common/footer.jsp" />
</html>