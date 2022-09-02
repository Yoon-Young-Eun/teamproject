<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="/css/service2.css">
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
	<div class="space_left">
	<jsp:include page="/common/centerSide.jsp"></jsp:include>
	</div>
	<div class="main_box">
	
	 
    <div class="tabtab">
      <div class="taps">
        <div class="tap-2">
          <label for="tap2-1" id="tap2-3">문의 및 제안</label>
          <input id="tap2-1" name="taps-two" type="radio" checked="checked">
         <div class="main_que">
          <div id="Accordion_wrap">
            <div class="que">
             <span>세탁은 본사에서 진행하나요?</span>
              <!-- <div class="arrow-wrap">
                <span class="arrow-top">↑</span>
               <span class="arrow-bottom">↓</span>
              </div> -->
             
            </div>
            <div class="anw">
             <span>본사에서 관리하는 각 지역 거점 공장에서 인근 매장의 세탁물을 수거하여 세탁 진행 후
       
               매장으로 배송됩니다..</span>
            </div>
             <div class="que">
             <span>세탁가격 책정은 어떻게 되나요?</span>
            </div>
            <div class="anw">
             <span>세탁물의 소재, 세탁방법, 오염정도에 따라서 가격이 상이할 수 있으니 이용하시고자 하는 매장에서 안내를 받으시면 됩니다.</span>
            </div>
             <div class="que">
             <span>세탁요금은 꼭 선불로 결제해야 되나요?</span>
            </div>
            <div class="anw">
             <span>더 나은 서비스를 위하여 크린에이드에서는 세탁요금은 선불을 원칙으로 하고 있습니다.</span>
            </div>
            <div class="que">
             <span>이불,커튼은 언제 세일하나요?</span>
            </div>
            <div class="anw">
             <span>매주 수/토요일 이불, 커튼류 30% 할인 적용됩니다.
       
               (일부 매장 요일이 다를 수 있습니다. 제주 지역 제외. 매년 4월~5월은 제외)</span>
            </div>
            


       </div>
       
       
         </div>
          
        </div>
        <div class="tap-2">
          <label for="tap2-2" id="tap2-4">서비스 불만족</label>
          <input id="tap2-2" name="taps-two" type="radio">
          <div>
            <div id="Accordion_wrap">
              <div class="que">
               <span>세탁은 본사에서 진행하나요?</span>
                <!-- <div class="arrow-wrap">
                  <span class="arrow-top">↑</span>
                 <span class="arrow-bottom">↓</span>
                </div> -->
               
              </div>
              <div class="anw">
               <span>본사에서 관리하는 각 지역 거점 공장에서 인근 매장의 세탁물을 수거하여 세탁 진행 후
         
                 매장으로 배송됩니다..</span>
              </div>
               <div class="que">
               <span>세탁가격 책정은 어떻게 되나요?</span>
              </div>
              <div class="anw">
               <span>세탁물의 소재, 세탁방법, 오염정도에 따라서 가격이 상이할 수 있으니 이용하시고자 하는 매장에서 안내를 받으시면 됩니다.</span>
              </div>
               <div class="que">
               <span>세탁요금은 꼭 선불로 결제해야 되나요?</span>
              </div>
              <div class="anw">
               <span>더 나은 서비스를 위하여 크린에이드에서는 세탁요금은 선불을 원칙으로 하고 있습니다.</span>
              </div>
              <div class="que">
               <span>이불,커튼은 언제 세일하나요?</span>
              </div>
              <div class="anw">
               <span>매주 수/토요일 이불, 커튼류 30% 할인 적용됩니다.
         
                 (일부 매장 요일이 다를 수 있습니다. 제주 지역 제외. 매년 4월~5월은 제외)</span>
              </div>
              


         </div>
          </div>
        </div>
    
        
      </div>
      
    </div>
	<div class="space_right"></div>
	</div><!-- main -->
    </div>
    </div>
    </div>

	<script>
      $(".que").click(function() {
       $(this).next(".anw").stop().slideToggle(300);
      $(this).toggleClass('on').siblings().removeClass('on');
      $(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
    });
    </script>


</body>

<jsp:include page="/common/footer.jsp" />
</html>