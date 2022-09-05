<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="/css/payOrderGeneralCheck.css">
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
      주문내역 확인
    </div>
    <div class="service">
      세탁시 요청사항
    </div>
    <div class="service1">
      <input type="text" value="깨끗하게 해줘요" readonly id="service_text1">
    </div>


    <div class="service2">
      기사님께 요청사항
    </div>
    <div class="service3">
      <input type="text" value="안전배송" readonly id="service_text2">
    </div>





    <div class="main_text1">
      <div class="main_text2">
        세탁물 종류
      </div>
      <div class="main_text3">
        <div class="main_text3-1">
          와이셔츠
        </div>
        <div class="main_text3-4">
          1500원
        </div>
        <div class="main_text3-2">
          5개
        </div>
        <div class="main_text3-3">
          6000원
        </div>
      </div>

      <div class="main_text3">
        <div class="main_text3-1">
          티셔츠
        </div>
        <div class="main_text3-4">
          1500원
        </div>
        <div class="main_text3-2">
          5개
        </div>
        <div class="main_text3-3">
          7000원
        </div>
      </div>

      <div class="main_text3">
        <div class="main_text3-1">
          청바지
        </div>
        <div class="main_text3-4">
          1500원
        </div>
        <div class="main_text3-2">
          3개
        </div>
        <div class="main_text3-3">
          9000원
        </div>
      </div>

      <div class="main_text3">
        <div class="main_text3-1">
          코트
        </div>
        <div class="main_text3-4">
          1500원
        </div>
        <div class="main_text3-2">
          5개
        </div>
        <div class="main_text3-3">
          20000원
        </div>
      </div>

      <div class="main_text3">
        <div class="main_text3-1">
          이불
        </div>
        <div class="main_text3-4">
          1500원
        </div>
        <div class="main_text3-2">
          5개
        </div>
        <div class="main_text3-3">
        36000원
        </div>
      </div>
      <div class="price">
        <div class="price1">
          <input type="text" value="세탁비용 : " id="price_text" readonly>
        </div>
        <div class="price2">
          <input type="text" value=" 16000원" id="price_text1" readonly>
        </div>
      </div>

     
      
      <div class="coupon">
        <div class="coupon_button">
        <div class="coupon1">
          쿠폰
        </div>
        <div class="coupon2">
          <input type="button" value="쿠폰확인" id="cou_button" class="action-button shadow animate blue" onclick="showPopup()" style="height: 25px; padding: 0px; width: 100px; font-size: 13px; margin-left: 20px;" >
        </div>
      </div>
        
      </div>
      <div class="coupon_text">
        <div class="coupon_text1" >
          <input type="text" value="" id="id1">
          
        </div>
        <div class="coupon_text2">
        <div class="coupon_text3">
          <input type="text" value="" id="id2">
        </div>
        <div class="coupon_text4" >
          <input type="text" value="" id="id3"> 
        </div>
      </div>

      <div class="coupon_text5">
        <div class="coupon_text6">
          <input type="text" value="" id="id4">
        </div>
        <div class="coupon_text7">
          <input type="text" value="" id="id5">
        </div>
      </div>
      
        
  
      </div>
      

      <div class="pay">
       <div class="pay1">
        결제금액
       </div>
       <div class="pay2">
        <div class="price">
          <div class="price1" id="price1">
            <input type="text" value="세탁비용 : " id="price_text" readonly>
          </div>
          <div class="price2" id="price2">
            <input type="text" value=" 16000원" id="price_text1" readonly>
          </div>
        </div>
      </div>
      <div class="pay5">
        <div class="pay6">
          <input type="text" value="쿠폰할인 : " readonly id="cou22">
        </div>
        <div class="pay7">
          <input type="text" value="0원" id="cou11" readonly>
        </div>
        
      </div>

      <div class="del_pay">
        <div class="del_pay1">
          <input type="text" value="배송비 : " readonly id="cou55">
        </div>
        <div class="del_pay2">
          <input type="text" value="" id="cou66" readonly>
        </div>
        
      </div>

      <div class="total">
        <div class="total1">
          <input type="text" value="최종금액 :" class="total_price1" id="cou33" readonly>
        </div> 
        <div class="total2">
          <input type="text" value="" id="cou44" readonly>
        </div>
      </div>
      </div>

      <div class="yak">
        <div class="yak1">
          <div class="yak2">서비스이용 약관동의 
            <input type="button" value="▼" onclick="showYak(this)" id="yakk33">
          </div>
          <div class="yak33" id="yak3">
            I'm ready for action
            Light, Signal, Action
            Light, Signal
            Light, Action!
            Sign a light on me
            좀 더 환하게 비춰줘 Much brighter
            360도 빈틈 하나도 없이
            내가 스며들 수 있게
            한순간도 놓치지 마
            그 모든 순간에
            좀 미묘하게 달라졌던 온도 속 날
            바라봐 직접 Straight into my eyes
            날카롭던 눈빛 Oh focus on me baby
            어지럽게 난 뒤섞여있던
            감정들이 하나 둘 자릴 잡으면
          </div>
        </div>

        <div class="yak1">
          <div class="yak2">운영정책 및 보상정책에 대한 동의
            <input type="button" value="▼" onclick="showYak(this)" id="yakk33">
          </div>
          <div class="yak33" id="yak3">
          뿌옇던 안개 속에
          조금씩 드러나게 돼
          Light, Signal, Action
          Take a flash 나를 비추면
          You 레이더 안에 Boom
          새롭게 그려진 다음
          빛을 머금고
          Now re-flash 반짝거렸던
          Splash 터진 빛 방울에
          준비가 끝났어 난
          (Are you ready?)
          I’m ready for action
          Light, Signal, Action
          Light, Signal, Action (Action)
          Light, Signal, Action
          I’m ready for action
          Light, Signal, Action
          Light, Signal, Action
          Light, Signal, Action
          I’m ready for action
          </div>
        </div>

        <div class="yak1">
          <div class="yak2">개인정보 수집 및 동의
            <input type="button" value="▼" onclick="showYak(this)" id="yakk33">
          </div>
          <div class="yak33" id="yak3">
            Ready now 말해봐
            그려왔던 내 모습이 어땠는지 Yeah
            빨리 다음으로 널 데려가
            상상했던 것들로
            가득 채운 Spotlight (Spotlight)
            투명하게 비춰지던
            네 안에 새겨진
            좀 미묘하게 달라졌던 이야기 속 날
            바라봐 직접 Straight into my eyes
            날카롭던 눈빛
            Oh focus on me baby (Baby)
            어지럽게 난 뒤섞여있던
            감정들이 하나 둘 자릴 잡으면
            뿌옇던 안개 속에
            조금씩 드러나게 돼
            Take a flash 나를 비추면
            You 레이더 안에 Boom
            새롭게 그려진 다음
            빛을 머금고
            Now re-flash 반짝거렸던
            Splash 터진 빛 방울에
            준비가 끝났어 난
            I’m ready for action
            섬광 속에 떨어진 Black out
            두 눈이 멀어도 볼 수 있어 난
            흐릿한 그림자 위 실루엣처럼
            (Are you ready?)
          </div>
        </div>
      
      </div>

      <div class="order_min">
        ◈ 최소 주문금액은 15000원 입니다.
      </div>
      <div class="order_min1">
        예약시간 2시간 전까지 취소가 가능합니다.이후에는 취소 수수료 3,500원이 발생합니다.<br>
        취소는 [내 세탁물관리] → [상세주문] 페이지에서 취소가 가능합니다.<br>
        K라벨이 없거나, 세탁표기법상 드라이클리닝 및 물세탁이 모두 금지된 제품은 전문가가
        소재와 상태를 확인 후 세탁을 진행합니다.<br>
        다만 세탁결과에 대해서는 책임을 지지 않으니 위 내용이 해당되시는 경우 세탁요청사항에
        꼭 입력 부탁드립니다.
      </div>

      <script>
        
        function showYak(e){
          console.log(e.parentNode.parentNode.childNodes[3]);

          if(e.parentNode.parentNode.childNodes[3].style.display === 'block'){
            e.parentNode.parentNode.childNodes[3].style.display = 'none';
          }else{
            e.parentNode.parentNode.childNodes[3].style.display = 'block';
          }
 
        }

      </script>







      <div class="bt1">
        <input type="button" id="but1" value="결제하기" onclick="order()" class="action-button shadow animate blue">
        <input type="button" id="but2" value="취소하기" class="action-button shadow animate blue" >
      </div>
      <script>
        document.getElementById("but1").addEventListener("click",function order(){
          var money1 = document.getElementById("price_text1").value;
          var abc = /[^0-9]/g;
          var totalpay = Number(money1.replace(abc,""));
			
          if(totalpay >= 15000){
            location.href='/pay/pay12.jsp';
          }else{
            alert("최소주문 금액은 15000원 입니다.");
          }


        })

        
      </script>








      <script language="javascript">
        
        
        function showPopup() { 
        window.name = "parentForm";
        var url="/pay/pay11.jsp";
         openwin = window.open(url, "", "width=710, height=850");
        
        }

        
        
        
        
      
        </script>
    </div>
  </div>
  <div class="space_right"></div>
</div>
    
    </div>
    </div>

</body>

<jsp:include page="/common/footer.jsp" />
</html>