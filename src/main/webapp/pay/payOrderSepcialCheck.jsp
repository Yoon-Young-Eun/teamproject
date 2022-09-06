<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="/css/payOrderSepcialCheck.css">
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
<div class="main_content">
  <div class="main_text">
    <div class="main_text1">
      견적요청
    </div>
    <div class="main_text2">
      <input type="text" value="주문번호 :" id="order_text1" readonly>
      <input type="text" value="ABCDEFG" id="order_text2" readonly> 
    </div>
    <div class="main_text3">
      <input type="text" value="이름 :" id="name_text1" readonly>
      <input type="text" value="이승재" id="name_text2" readonly> 
    </div>
    <div class="main_text4">
      <input type="text" value="연락처" id="phone_text1" readonly>
      <input type="text" value="010-1234-5678" id="phone_text2" readonly>
    </div>
    <div class="main_text5">
      <input type="text" value="주소" id="address_text1" readonly>
      <input type="text" value="서울시 노량진동 ABC아파트" id="address_text2" readonly>
      <input type="text" value="101동 1102호" id="address_text3" readonly>
    </div>
    <div class="main_text6">
      <input type="text" value="세탁시 요청사항" id="service_text1" readonly>
      <input type="text" value="이전페이지 작성된 요청사항" id="service_text2" readonly>
    </div>
    <div class="main_text7">
      <input type="text" value="세탁물 첨부파일" id="file_text1" readonly>
      <div class="fileview">
        <img src="/image/doraemong.jpg" width="250px" height="150px" id="image1">
        <img src="/image/doraemong.jpg" width="250px" height="150px" id="image1">
        <img src="/image/doraemong.jpg" width="250px" height="150px" id="image1">
        <img src="/image/doraemong.jpg" width="250px" height="150px" id="image1">
        <img src="/image/doraemong.jpg" width="250px" height="150px" id="image1">
        <img src="/image/doraemong.jpg" width="250px" height="150px" id="image1">
        <img src="/image/doraemong.jpg" width="250px" height="150px" id="image1">
        <img src="/image/doraemong.jpg" width="250px" height="150px" id="image1">
        <img src="/image/doraemong.jpg" width="250px" height="150px" id="image1">

      </div>
    </div>

    <div class="main_text8">
      <input type="button" value="견적요청" id="button1" onclick="location.href='/pay/pay8.jsp'" class="action-button shadow animate blue" style="font-weight: none;">
      <input type="button" value="취소하기" id="button2" onclick="#" class="action-button shadow animate blue">
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