<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="/css/payOrderSpecial.css">
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
          <span id="subtext1">(사진 최대 10장까지 첨부가능) </span>
        </div>
        <div class="main_subText3">
          * 세탁물이 수거완료된 상태에서 미견적 상태의 세탁 물이 추가로 수거된 경우<br>
          <span id="subtext2">최초 견적 비용과 금액이  상이할 수 있는 점 꼭 숙지 부탁드립니다.</span>
        </div>
      </div>
    </div>
    
    <div class="main_text5">
      파일 첨부하기
    </div>
    
    <div class="main_text6">
      <input type="file" name="f" accept=".jpg, .png" onchange="preview()" required multiple><br>
      
      <div id="div-preview">
      </div>
      
      <script type="text/javascript">
        function preview(){
       let fileTag = document.querySelector('input[name=f]');
       let divTag = document.querySelector('#div-preview');
       
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

    </div>
   
    
    <div class="main_text8">
      요청사항
    </div>
    <div class="main_text9">
      <textarea id="textarea1" placeholder="요청사항을 입력하세요" maxlength="99999" ></textarea>
    </div>
    
    
    <div class="main_text7">
      <form>
      <input id="button1" type="button" onclick="location.href='/pay/pay7.jsp'" value="견적진행" class="action-button shadow animate blue">
      <input id="button2" type="button" onclick="location.href='/pay/pay5.jsp'"  value="이전으로" class="action-button shadow animate blue">
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