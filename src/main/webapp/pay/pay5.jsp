<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="/css/pay5.css">
  <link rel="stylesheet" href="/common/css/button.css">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>[세모]세탁의 모든것</title>
</head>
<body>

<div class="wrap">
    <div class="wrap1">
    
    <jsp:include page="/common/header.jsp"></jsp:include>
    
    <div class="payment_main">
  <div class="payment_left"></div>
  <div class="payment_content">
    <div class="payment_text1">
      세탁서비스 선택하기
    </div>
    
    <div class="payment_text2">
      서비스종류 선택
    </div>
    <div class="payment_text3">
      <div class="general">
        <input type="button"  value="일반세탁" id="general1" onclick="location.href='/pay/pay9.jsp'" class="action-button shadow animate blue" style="padding: 0px; width: 200px; height: 60px;"> 
      </div>
      <div class="special">  
        <input type="button"  value="특수세탁" id="special1" onclick="location.href='/pay/pay6.jsp'" class="action-button shadow animate blue" style="padding: 0px; width: 200px; height: 60px;">
      </div>
    </div>

    
  </div>
  <div class="payment_right"></div>

</div>
 </div>
 </div>

</body>
<jsp:include page="/common/footer.jsp" />
</html>