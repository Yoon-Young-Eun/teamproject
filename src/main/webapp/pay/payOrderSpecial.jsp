<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="/css/payEstimate.css">
  <link rel="stylesheet" href="/common/css/button.css">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>[세모]세탁의 모든것</title>

</head>
<body>

<div class="wrap">
    <div class="wrap1">
    
    <jsp:include page="/common/header.jsp"></jsp:include>
    
    <div class="pay_main">
  <div class="space_left"></div>
  <form action="/Orderspecial.do" method="post" enctype="multipart/form-data" id="form1">
  <div class="main_box">
    <div class="main_text1">
      특수세탁 예약하기
    </div>
    
    <div class="main_text2">
      <div class="main_text3">
        <div class="img_text"> 예시이미지</div>
        <img src="/image/dirty.jpg" width="100%" id="img1" height="100%">
      </div>
      <div class="main_text4">
        <div class="main_subText1">
          * 예시 이미지와 같이 세탁물의 오염된 부분이 잘 보이도록 사진을 촬영해주세요
        </div>
        <div class="main_subText2">
          * 특수세탁을 받아야 하는 세탁물 전부를 촬영하여 업로드 해주세요.<br>
          <span id="subtext1">(사진 최대 4장까지 첨부가능) </span>
        </div>
        <div class="main_subText3">
          * 세탁물이 수거완료된 상태에서 미견적 상태의 세탁 물이 추가로 수거된 경우<br>
          <span id="subtext2">최초 견적 비용과 금액이  상이할 수 있는 점 꼭 숙지 부탁드립니다.</span>
        </div>
      </div>
    </div>
    
    
    
    <div class="special_type" style="height:80px;">
    <div class="text_special" style="font-size:25px; font-weight: bold;">오염종류 선택</div>
    <div class="special_text" style=" display: flex; align-items: center; 	font-family: 'Noto Sans KR', sans-serif;">
    <input type="radio" id="washtype1" name="estimate_type" value="황변제거 및 표백" checked style="width:50px; font-size:15px; height:15px; margin-top:10px;"><label for="washtype1" style="width:200px; font-size:20px; height:30px; margin-top:10px;">황변제거 및 표백</label>
    <input type="radio" id="washtype" name="estimate_type" value="특수오염(곰팡이/핏물/잉크 등)"  style="width:50px; font-size:15px; height:15px; margin-top:10px;"><label for="washtype" style="width:300px; font-size:20px; height:30px; margin-top:10px;">특수오염(곰팡이/핏물/잉크 등)</label>
    
    </div>
    </div>
    
    <div class="main_text5">
      파일 첨부하기
    </div>
    
    <div class="main_text6">
      <input type="file" name="file" accept=".jpg, .png" onchange="preview();" required multiple id="file11"><br>
      
      <div id="div-preview">
      </div>
      
      <script type="text/javascript">
        function preview(){
       let fileTag = document.querySelector('input[name=file]');
       let divTag = document.querySelector('#div-preview');
       divTag.innerHTML=null;
       
       if(Number(fileTag.files.length)>Number(4)){
    	   fileTag.value = null;
    	   console.log(11111);
    	  alert("사진은 4장까지만 첨부 가능합니다.");
    	   return;
       }
       
       
       
  	   console.log(document.querySelector('input[name=file]'));
       
       if(fileTag.files.length>0){
       for(let i=0; i<fileTag.files.length; ++i){
       let reader = new FileReader();
       reader.onload = function(data){
       let imgTag = document.createElement('img');
       imgTag.setAttribute('src',data.target.result);
       imgTag.setAttribute('width','250');
       imgTag.setAttribute('height','150');
       
       divTag.appendChild(imgTag);
       }
       reader.readAsDataURL(fileTag.files[i]);
       }
       }else{
       divTag.innerHTML = "";
       }
       }
        
       </script>
       
      <script>
      var fileUpload = document.querySelector('input[name=file]');
      
      function Upload(){
    	  if(fileUpload.value != 0){
    		  document.getElementById("form1").submit();
    	  }else{
    		  alert("특수세탁의 경우 세탁물 오염의 사진 첨부가 필요합니다.");
    	  }
      }
      </script>

    </div>
    
   	
   
   
   
    
    <div class="main_text8">
      요청사항
    </div>
    <div class="main_text9">
      <textarea id="textarea1" placeholder="요청사항을 입력하세요" maxlength="99999" name="estimate_content"></textarea>
      <input type="hidden" value="${OrderData.customer_no }" name="customer_no">
   	<input type="hidden" value="${OrderData.order_customer_name }" name="customer_name">
   	<input type="hidden" value="${OrderData.order_address1}" name="customer_address1">
   	<input type="hidden" value="${OrderData.order_address2}" name="customer_address2">
   	<input type="hidden" value="${OrderData.order_customer_phone }" name="customer_phone">
    </div>
    
    
    <div class="main_text7">
      
      <input id="button1" type="button" value="견적진행" class="action-button shadow animate blue" onclick="Upload()">
      <input id="button2" type="button" onclick="location.href='/pay/pay5.jsp'"  value="이전으로" class="action-button shadow animate blue">
      
    </div>
  </div>
  </form>
  <div class="space_right"></div>
</div>
</div>
</div>
</body>

<jsp:include page="/common/footer.jsp" />
</html>