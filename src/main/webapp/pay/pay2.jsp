<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
<link rel="stylesheet" href="/common/css/button.css">
<link rel="stylesheet" href="/css/pay2.css">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
	
	

<title>[세모]세탁의 모든것</title>
</head>
<body>
	<div class="wrap">
	<div class="wrap1">
	
	<jsp:include page="/common/header.jsp"></jsp:include>
	
	<div class="main">
  <div class="space_left"></div>
  <div class="main_box">
    <div class="main_text1">
      수거주소 선택하기
    </div>
    <div class="main_text2">
      <div class="address1">주소지관리</div>
      <div class="address2">
        <form action="#" class="form2">
        <div class="address3">
          <div class="aa" >
        <input type="text" value="주소1" id="ad1" readonly>
      </div>
        <div class="button1">
        <input type="button" value="주소지변경" id="button2" onclick="showPopup();" class="action-button shadow animate blue" style="width:100px; height: 30px; padding:0px; font-size:15px; margin: 0px; " >
        </div>
      </div>
      <div class="address4">
        연락처 :<input type="text" id="phone" value="010-9999-8888" readonly>
      </div>
      <div class="first_address">
        주소 : <input type="text" id="address1-1" value="서울시 성북구 종암동 123-123" readonly>
      </div>
      <div class="second_address">
        나머지주소 :<input type="text" id="address1-2" value="롯데시그니엘 101층 펜트하우스"readonly>
      </div>
      <div class="address5">
        출입비밀번호 :<input type="text" id="password" value="종 0000" readonly> 
        
      </div>
    </form>
      
    </div>
    </div> 

    <div class="add_button">
      <input type="button" id="add_button1" value="선택완료" onclick="location.href='/pay/pay5.jsp'" class="action-button shadow animate blue" style="font-size: 20px; width: 200px; height: 50px; margin: 0px;">
    </div>
  </div>
  <div class="space_right"></div>
</div>
	
	
</div>
</div>

<script type="text/javascript">
   window.name = "parentForm";
   var url="/pay/pay3.jsp";
   function showPopup() { window.open(url, "", "width=710, height=850"); }
   </script>

</body>

<jsp:include page="/common/footer.jsp" />
</html>