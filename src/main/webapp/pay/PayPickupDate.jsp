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

     <div class="main_text3">
      <div class="main_text4">
        <input type="date" id="datepicker">
      </div>
     </div>
     <div class="main_time">
      <div class="main_time1">
        수거를 원하는 시간대를 선택하세요
      </div>
      <div class="main_time2">
        <div class="main_time3">
        <input type="radio" name="timeselect" id="radio1" onclick="#">
        <label id="label1">오전</label>
      </div>
        <div class="main_time4">
        <input type="radio" name="timeselect" id="radio1" onclick="#">
        <label id="label1">오후</label>
      
    </div>
      </div>
     </div>

     <div class="main_text5">
      <form action="#" id="form1">
      <input type="button" value="다음단계" id="button1" onclick="location.href='address.html'" class="action-button shadow animate blue" >
      <input type="button" value="이전으로" id="button2" onclick="location.href='paymain.html'" class="action-button shadow animate blue" >
    </form>
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