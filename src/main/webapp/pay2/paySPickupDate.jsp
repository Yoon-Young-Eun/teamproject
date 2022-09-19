<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="/css/PayPickupDate.css">
  <link rel="stylesheet" href="/common/css/button.css">
   
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  
 
  

  
  
  
  
  
<title>[세모]세탁의 모든것</title>
</head>
<body>

<div class="wrap">
    <div class="wrap1">
    
    <jsp:include page="/common/header.jsp"></jsp:include>
    <div class="main">
    <div class="space_left"></div>
    <div class="main_box">
    
     <div class="main_content">
     <div class="main_text">
      수거일 선택하기
     </div>
     
     <div class="main_text2">
      수거를 원하는 날짜를 선택하세요
     </div>
	<form action="/OrderSpecial3.do">
     <div class="main_text3">
      <div class="main_text4">
        <input type="date" id="datepicker" name="order_pickup_date" required>
      </div>
     </div>
     <div class="main_time">
      <div class="main_time1">
        수거를 원하는 시간대를 선택하세요
      </div>
      <div class="main_time2">
        <div class="main_time3">
        <input type="radio" name="order_pickup_time" id="radio1" onclick="#" value="08:00 ~ 14:00" required>08:00 ~ 14:00
        
      </div>
        <div class="main_time4">
        <input type="radio" name="order_pickup_time" id="radio1" onclick="#" value="14:00 ~ 18:00" required>14:00 ~ 18:00
        
      
    </div>
    
      </div>
     </div>

     <div class="main_text5">
      
      <input type="submit" value="다음단계" id="button1"  class="action-button shadow animate blue" >
      <input type="button" value="이전으로" id="button2" onclick="location.href='paymain.html'" class="action-button shadow animate blue" >
      <input type="hidden" value="${customer.customer_no}" name="customer_no">
    <input type="hidden" value="${customer.customer_address1 }" name="order_address1">
    <input type="hidden" value="${customer.customer_address2}" name="order_address2">
    <input type="hidden" value="${customer.customer_phone }" name="order_customer_phone">
    <input type="hidden" value="${customer.customer_name }" name="order_customer_name">
    <input type="hidden" value="${OrderData.cm_gate_passwd }" name="cm_gate_passwd">
    <input type="hidden" value="특수세탁" name="order_type">
  </div>
  </form>
  
    
    </div>
   
    
    
    
    </div>
    <div class="space_right"></div>
    </div>
    </div>
    </div>
    
    
    

</body>
<jsp:include page="/common/footer.jsp" />
</html>