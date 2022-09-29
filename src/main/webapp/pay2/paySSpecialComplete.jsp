<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="/css/payGeneralComplete.css">
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
  <div class="main_box">
    <div class="main_text">
      <div class="main_logo">
        <img src="/image/doraemong.jpg" id="doraemong">
      </div>
      <div class="main_text1">
       세탁서비스 결제가 완료되었습니다.
      </div>
      <div class="main_text2">
        이용해 주셔서 감사합니다.
      </div>
      <div class="main_text2-1">
        <span id="span1">${OrderDate.order_pickup_date }일 ${OrderDate.order_pickup_time} 사이에</span>
      </div>
      <div class="main_text2-2">
        세탁물을 문앞에 내놓아주세요.
      </div>
      <div class="main_text3">
      <div class="main_text4">
        <input type="button" id="button1" onclick="location.href='/index.do'" value="메인으로" class="action-button shadow animate blue" style="width: 400px; height: 50px;">
      </div>
      <div class="main_text5">
        <input type="button" id="button2" onclick="location.href='/myorderlist.do?customer_no=${num}'" value="주문확인" class="action-button shadow animate blue" style="width: 400px; height: 50px;">
      </div>
      <div class="main_text6">
        <input type="button" id="button3" onclick="location.href='/viewHow.do'" value="수거방법안내" class="action-button shadow animate blue" style="width: 400px; height: 50px;">
      </div>
      <div class="main_text7">
        <input type="button" id="button4" onclick="location.href='/startOrder.do?customer_no=${num}'" value="추가세탁" class="action-button shadow animate blue" style="width: 400px; height: 50px;">
      </div>
    </div>
    </div>
  </div>
  <div class="space_right"></div>
</div>
    
    </div>
    </div>
</body>
<jsp:include page="/common/footer.jsp" />
</html>