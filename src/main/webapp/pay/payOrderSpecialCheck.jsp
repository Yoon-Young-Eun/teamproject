<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="/css/payOrderSpecialCheck.css">
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
<div class="main_content">
  <div class="main_text">
    <div class="main_text1">
      견적완료
    </div>
    <div class="main_text2">
      <input type="text" value="주문상태 :" id="order_text1" readonly>
      <input type="text" value="견적대기" id="order_text2" readonly> 
    </div>
    <div class="main_text3">
      <input type="text" value="이름 :" id="name_text1" readonly>
      <input type="text" value="${OrderEstimate.customer_name }" id="name_text2" readonly> 
    </div>
    <div class="main_text4">
      <input type="text" value="연락처 :" id="phone_text1" readonly>
      <input type="text" value="${OrderEstimate.customer_phone }" id="phone_text2" readonly>
    </div>
    <div class="main_text5">
      <input type="text" value="주소 :" id="address_text1" readonly>
      <input type="text" value="${OrderEstimate.customer_address1 }" id="address_text2" readonly style="width:250px;">
      <input type="text" value="${OrderEstimate.customer_address2}" id="address_text2" readonly style="width:250px; margin-top:2px;">
    </div>
    <div class="main_text6">
      <input type="text" value="세탁시 요청사항" id="service_text1" readonly>
      <input type="text" value="${OrderEstimate.estimate_content }" id="service_text2" readonly>
    </div>
    <div class="main_text7">
      <input type="text" value="세탁물 첨부파일" id="file_text1" readonly>
      
      <div class="fileview">
        <c:forEach var="estimate" items="${estimate_image}">
        <img src="${estimate.estimate_filepath}">
     	</c:forEach>
		
      </div>
         
    </div>

    <div class="main_text8">
      <input type="button" value="확인" id="button1" onclick="location.href='/pay/paySpecialComplete.jsp'" class="action-button shadow animate blue" style="font-weight: none;">
      
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