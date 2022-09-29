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
    
    <jsp:include page="/common/logined-header.jsp"></jsp:include>
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
	<form action="/OrderAddressTime.do">
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
      <input type="button" value="이전으로" id="button2" onclick="history.go(-1)" class="action-button shadow animate blue" >
      <input type="submit" value="다음단계" id="button1"  class="action-button shadow animate blue" >
      
      <input type="hidden" value="${OrderAddress.customer_no}" name="customer_no">
    <input type="hidden" value="${OrderAddress.customer_address1 }" name="order_address1">
    <input type="hidden" value="${OrderAddress.customer_address2}" name="order_address2">
    <input type="hidden" value="${OrderAddress.customer_phone }" name="order_customer_phone">
    <input type="hidden" value="${OrderAddress.customer_name }" name="order_customer_name">
    <input type="hidden" value="${gatepswd.cm_gate_passwd }" name="cm_gate_passwd">
  </div>
  </form>
  
    
    </div>
   
    <script type="text/javascript">
    let offerdate = document.getElementById("datepicker").value; // input date 값 가져오기
    console.log(offerdate);
	let date = new Date(); //현재시간
	let minDate = getFormatDate(date); 
	$("#datepicker").attr("min",minDate);
	
	date.setDate(date.getDate() + 30);
	console.log(date);
	let maxDate = getFormatDate(date);
	$("#datepicker").attr("max",maxDate);
    
    function getFormatDate(date){
        var year = date.getFullYear();              //yyyy
        var month = (1 + date.getMonth());          //M
        month = month >= 10 ? month : '0' + month;  //month 두자리로 저장
        var day = date.getDate();                   //d
        day = day >= 10 ? day : '0' + day;          //day 두자리로 저장
        return  year + '-' + month + '-' + day;       //'-' 추가하여 yyyy-mm-dd 형태 생성 가능
    }
    </script>	
    
    
    </div>
    <div class="space_right"></div>
    </div>
    </div>
    </div>
    
    
    

</body>
<jsp:include page="/common/footer.jsp" />
</html>