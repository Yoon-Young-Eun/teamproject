<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="/css/payOrderGeneral.css">
  <link rel="stylesheet" href="/common/css/button.css">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>[세모]세탁의 모든것</title>

<script>
    function openCloseToc(){
    if(document.getElementById('view0').style.display === 'block'){
        document.getElementById('view0').style.display='none';
      }
    else{
      document.getElementById('view0').style.display = 'block';
      document.getElementById('view1').style.display = 'none';
      document.getElementById('view2').style.display = 'none';
      document.getElementById('view3').style.display = 'none';
      document.getElementById('view4').style.display = 'none';
      document.getElementById('view5').style.display = 'none';
    }
  }
  
  
  
  
  
  function openCloseToc1(){
    if(document.getElementById('view1').style.display === 'block'){
      document.getElementById('view1').style.display='none';
      
      
    }else{
      document.getElementById('view1').style.display = 'block';
      document.getElementById('view0').style.display = 'none';
      document.getElementById('view2').style.display = 'none';
      document.getElementById('view3').style.display = 'none';
      document.getElementById('view4').style.display = 'none';
      document.getElementById('view5').style.display = 'none';
    }
  }
  
  
  
  function openCloseToc2(){
    if(document.getElementById('view2').style.display === 'block'){
      document.getElementById('view2').style.display='none';
      
    }else{
      document.getElementById('view2').style.display = 'block';
      document.getElementById('view0').style.display = 'none';
      document.getElementById('view1').style.display = 'none';
      document.getElementById('view3').style.display = 'none';
      document.getElementById('view4').style.display = 'none';
      document.getElementById('view5').style.display = 'none';
    }
  }
  
  function openCloseToc3(){
    if(document.getElementById('view3').style.display === 'block'){
      document.getElementById('view3').style.display='none';
      
    }else{
      document.getElementById('view3').style.display = 'block';
      document.getElementById('view0').style.display = 'none';
      document.getElementById('view1').style.display = 'none';
      document.getElementById('view2').style.display = 'none';
      document.getElementById('view4').style.display = 'none';
      document.getElementById('view5').style.display = 'none';
    }
  }
  
  function openCloseToc4(){
    if(document.getElementById('view4').style.display === 'block'){
      document.getElementById('view4').style.display='none';
    }else{
      document.getElementById('view4').style.display = 'block';
      document.getElementById('view0').style.display = 'none';
      document.getElementById('view1').style.display = 'none';
      document.getElementById('view2').style.display = 'none';
      document.getElementById('view3').style.display = 'none';
      document.getElementById('view5').style.display = 'none';
    }
  }
  
  function openCloseToc5(){
    if(document.getElementById('view5').style.display === 'block'){
      document.getElementById('view5').style.display='none';
      
    }else{
      document.getElementById('view5').style.display = 'block';
      document.getElementById('view0').style.display = 'none';
      document.getElementById('view1').style.display = 'none';
      document.getElementById('view2').style.display = 'none';
      document.getElementById('view3').style.display = 'none';
      document.getElementById('view4').style.display = 'none';
    }
  }
  
  </script>



</head>
<body>

<div class="wrap">
    <div class="wrap1">
    
    <jsp:include page="/common/header.jsp"></jsp:include>
    
    <div class="main">
  <div class="space_left"></div>
  <div class="content_box">
    <div class="main_text">
      <div class="main_text1">
        일반세탁 결제하기
      </div>
      <div class="main_text2">
        세탁할 옷의 종류를 선택하세요
      </div>

      <div class="main_text3">
        <div class="aaaa">
      <div class="top" >
        <input type="button" id="toggle" onclick="openCloseToc()" value="상의" name="1" class="action-button shadow animate blue" style="width: 158px; height: 50px; font-weight: normal; margin-top: 8px;"> 
      </div> 
      <div class="top1" >
        <input type="button" id="toggle1" onclick="openCloseToc1()" value="하의" name="1" class="action-button shadow animate blue" style="width: 158px; height: 50px; font-weight: normal; margin-top: 8px;"> 
      </div> 
      <div class="top2" >
        <input type="button" id="toggle2" onclick="openCloseToc2()" value="신발" name="1" class="action-button shadow animate blue" style="width: 158px; height: 50px; font-weight: normal; margin-top: 8px;"> 
      </div> 
      <div class="top3" >
        <input type="button" id="toggle3" onclick="openCloseToc3()" value="외투" name="1" class="action-button shadow animate blue" style="width: 158px; height: 50px; font-weight: normal; margin-top: 8px;"> 
      </div> 
      <div class="top4" >
        <input type="button" id="toggle4" onclick="openCloseToc4()" value="기타" name="1" class="action-button shadow animate blue" style="width: 158px; height: 50px; font-weight: normal; margin-top: 8px;"> 
      </div> 
      <div class="top5" >
        <input type="button" id="toggle5" onclick="openCloseToc5()" value="침구류" name="1" class="action-button shadow animate blue" style="width: 158px; height: 50px; font-weight: normal; margin-top: 8px;"> 
      </div> 

    </div>
        <form id="view0">
        <div class="main_text4">
          <div class="main_text5">
            와이셔츠
          </div>
          <div class="price">
            <span class="aaa">1500</span>원
          </div>
          <div class="count">
          <input type='button'  value='-' id="button1" class="button1"/>
          <div class='result'>0</div>            
          <input type='button' value='+' id="button1" class="button">
          </div>
          <div class="price1">
            <input type="text" class="price2" readonly value="0"> 원
          </div>
        </div>
        
        <div class="main_text4">
          <div class="main_text5">
            티셔츠
          </div>
          <div class="price">
            <span class="aaa">1500</span>원
          </div>
          <div class="count">
          <input type='button'  value='-' id="button1" class="button1"/>
          <div class='result'>0</div>            
          <input type='button' value='+' id="button1" class="button">
          </div>
          <div class="price1">
            <input type="text" class="price2" readonly value="0"> 원
          </div>
        </div>

        <div class="main_text4">
          <div class="main_text5">
            니트
          </div>
          <div class="price">
            <span class="aaa">1500</span>원
          </div>
          <div class="count">
          <input type='button'  value='-' id="button1" class="button1"/>
          <div class='result'>0</div>            
          <input type='button' value='+' id="button1" class="button">
          </div>
          <div class="price1">
            <input type="text" class="price2" readonly value="0"> 원
          </div>
        </div>

        <div class="main_text4">
          <div class="main_text5">
            마/소재 와이셔츠
          </div>
          <div class="price">
            <span class="aaa">1500</span>원
          </div>
          <div class="count">
          <input type='button'  value='-' id="button1" class="button1"/>
          <div class='result'>0</div>            
          <input type='button' value='+' id="button1" class="button">
          </div>
          <div class="price1">
            <input type="text" class="price2" readonly value="0"> 원
          </div>
        </div>
      </form>
      
      
        <form id="view1">
        <div class="main_text4">
          <div class="main_text5">
            청바지
          </div>
          <div class="price">
            <span class="aaa">2500</span>원
          </div>
          <div class="count">
          <input type='button'  value='-' id="button1" class="button1"/>
          <div class='result'>0</div>            
          <input type='button' value='+' id="button1" class="button">
          </div>
          <div class="price1">
            <input type="text" class="price2" readonly value="0"> 원
          </div>
        </div>

        <div class="main_text4">
          <div class="main_text5">
            면바지
          </div>
          <div class="price">
            <span class="aaa">2500</span>원
          </div>
          <div class="count">
          <input type='button'  value='-' id="button1" class="button1"/>
          <div class='result'>0</div>            
          <input type='button' value='+' id="button1" class="button">
          </div>
          <div class="price1">
            <input type="text" class="price2" readonly value="0"> 원
          </div>
        </div>

        <div class="main_text4">
          <div class="main_text5">
            운동복 하의
          </div>
          <div class="price">
            <span class="aaa">2500</span>원
          </div>
          <div class="count">
          <input type='button'  value='-' id="button1" class="button1"/>
          <div class='result'>0</div>            
          <input type='button' value='+' id="button1" class="button">
          </div>
          <div class="price1">
            <input type="text" class="price2" readonly value="0"> 원
          </div>
        </div>

        
      </form>
        
      <form id="view2">
        <div class="main_text4">
          <div class="main_text5">
            운동화
          </div>
          <div class="price">
            <span class="aaa">2500</span>원
          </div>
          <div class="count">
          <input type='button'  value='-' id="button1" class="button1"/>
          <div class='result'>0</div>            
          <input type='button' value='+' id="button1" class="button">
          </div>
          <div class="price1">
            <input type="text" class="price2" readonly value="0"> 원
          </div>
        </div>

        <div class="main_text4">
          <div class="main_text5">
            구두
          </div>
          <div class="price">
            <span class="aaa">2500</span>원
          </div>
          <div class="count">
          <input type='button'  value='-' id="button1" class="button1"/>
          <div class='result'>0</div>            
          <input type='button' value='+' id="button1" class="button">
          </div>
          <div class="price1">
            <input type="text" class="price2" readonly value="0"> 원
          </div>
        </div>

        <div class="main_text4">
          <div class="main_text5">
            등산화
          </div>
          <div class="price">
            <span class="aaa">2500</span>원
          </div>
          <div class="count">
          <input type='button'  value='-' id="button1" class="button1"/>
          <div class='result'>0</div>            
          <input type='button' value='+' id="button1" class="button">
          </div>
          <div class="price1">
            <input type="text" class="price2" readonly value="0"> 원
          </div>
        </div>
      </form>
        
      <form id="view3">
        <div class="main_text4">
          <div class="main_text5">
            코트
          </div>
          <div class="price">
            <span class="aaa">9500</span>원
          </div>
          <div class="count">
          <input type='button'  value='-' id="button1" class="button1"/>
          <div class='result'>0</div>            
          <input type='button' value='+' id="button1" class="button">
          </div>
          <div class="price1">
            <input type="text" class="price2" readonly value="0"> 원
          </div>
        </div>

        <div class="main_text4">
          <div class="main_text5">
            가죽소재외투
          </div>
          <div class="price">
            <span class="aaa">9500</span>원
          </div>
          <div class="count">
          <input type='button'  value='-' id="button1" class="button1"/>
          <div class='result'>0</div>            
          <input type='button' value='+' id="button1" class="button">
          </div>
          <div class="price1">
            <input type="text" class="price2" readonly value="0"> 원
          </div>
        </div>

        <div class="main_text4">
          <div class="main_text5">
            야상
          </div>
          <div class="price">
            <span class="aaa">9500</span>원
          </div>
          <div class="count">
          <input type='button'  value='-' id="button1" class="button1"/>
          <div class='result'>0</div>            
          <input type='button' value='+' id="button1" class="button">
          </div>
          <div class="price1">
            <input type="text" class="price2" readonly value="0"> 원
          </div>
        </div>
      </form>
        
      <form id="view4">
        <div class="main_text4">
          <div class="main_text5">
            수건
          </div>
          <div class="price">
            <span class="aaa">7500</span>원
          </div>
          <div class="count">
          <input type='button'  value='-' id="button1" class="button1"/>
          <div class='result'>0</div>            
          <input type='button' value='+' id="button1" class="button">
          </div>
          <div class="price1">
            <input type="text" class="price2" readonly value="0"> 원
          </div>
        </div>

        <div class="main_text4">
          <div class="main_text5">
            애견의류
          </div>
          <div class="price">
            <span class="aaa">9500</span>원
          </div>
          <div class="count">
          <input type='button'  value='-' id="button1" class="button1"/>
          <div class='result'>0</div>            
          <input type='button' value='+' id="button1" class="button">
          </div>
          <div class="price1">
            <input type="text" class="price2" readonly value="0"> 원
          </div>
        </div>

        <div class="main_text4">
          <div class="main_text5">
            식탁보
          </div>
          <div class="price">
            <span class="aaa">9500</span>원
          </div>
          <div class="count">
          <input type='button'  value='-' id="button1" class="button1"/>
          <div class='result'>0</div>            
          <input type='button' value='+' id="button1" class="button">
          </div>
          <div class="price1">
            <input type="text" class="price2" readonly value="0"> 원
          </div>
        </div>

      </form>
        
      <form id="view5">
        <div class="main_text4">
          <div class="main_text5">
            얇은 이불
          </div>
          <div class="price">
            <span class="aaa">7500</span>원
          </div>
          <div class="count">
          <input type='button'  value='-' id="button1" class="button1"/>
          <div class='result'>0</div>            
          <input type='button' value='+' id="button1" class="button">
          </div>
          <div class="price1">
            <input type="text" class="price2" readonly value="0"> 원
          </div>
        </div>
        
        <div class="main_text4">
          <div class="main_text5">
            겨울 이불
          </div>
          <div class="price">
            <span class="aaa">9500</span>원
          </div>
          <div class="count">
          <input type='button'  value='-' id="button1" class="button1"/>
          <div class='result'>0</div>            
          <input type='button' value='+' id="button1" class="button">
          </div>
          <div class="price1">
            <input type="text" class="price2" readonly value="0"> 원
          </div>
        </div>

        <div class="main_text4">
          <div class="main_text5">
            담요
          </div>
          <div class="price">
            <span class="aaa">9500</span>원
          </div>
          <div class="count">
          <input type='button'  value='-' id="button1" class="button1"/>
          <div class='result'>0</div>            
          <input type='button' value='+' id="button1" class="button">
          </div>
          <div class="price1">
            <input type="text" class="price2" readonly value="0"> 원
          </div>
        </div>
      </form>
      </div>
      

      <div class="price5">
       합계 금액: <input type="text" class="price3" readonly value="0"> 원
      </div>




      <div class="main_text6">
      세탁시 요청사항
      </div>
      <div class="service1">
        <input type="checkbox" id="checkbox1">
        <input type="text" id="service_text1" value="특수오염 제거 요청 (혈흔/음식물/토사물/기타 등)" readonly>
        
      </div>
      <div class="service2">
        <input type="checkbox" id="checkbox2">
        <input type="text" id="service_text2" value="흰색 의류 전처리 요청 (불림/표백작업 ※추가금액발생)" readonly>
      </div>
      
      <div class="main_text7">
        <textarea id="textarea1" maxlength="99999" placeholder="세탁시 요청사항을 입력하세요"></textarea>
      </div>
      <div class="service">
        기사님께 요청사항
      </div>
      <div class="service3">
        <input type="checkbox" id="checkbox3">
        <input type="text" id="service_text3" value="수거시 사용한 가방은 돌려주세요" readonly>
      </div>
      <div class="service4">
        <input type="checkbox" id="checkbox4">
        <input type="text" id="service_text4" value="방문전 연락 부탁드려요" readonly>
      </div>
      <div class="service5">
        <input type="checkbox" id="checkbox5">
        <input type="text" id="service_text5" value="안전한 배송 부탁드려요" readonly>
      </div>

      <div class="service6">
        <textarea id="textarea2" maxlength="99999" placeholder="수거/배달시 요청사항을 입력해주세요"></textarea>
      </div>
      

      
      <div class="main_text9">
      <input type="button" value="주문하기" id="pay" onclick="location.href='/pay/pay10.jsp'" class="action-button shadow animate blue">   
      <input type="button" value="취소하기" id="paycancel" onclick="#" class="action-button shadow animate blue">
     </div>
    </div>
  </div>
  <div class="space_right"></div>
</div>
<script>
  
  // 현재 화면에 표시된 값
  const resultElement = document.getElementsByClassName('button');
  
  console.log(resultElement);
  for(let i = 0 ;i< resultElement.length; i++){
    

    resultElement[i].addEventListener("click", function (e){
      console.log(e.target.parentNode.childNodes[3]);
      e.target.parentNode.childNodes[3].innerText = Number(e.target.parentNode.childNodes[3].innerText)+1; 

      if(e.target.parentNode.childNodes[3].innerText > 10){
        alert('최대 수량은 10개 입니다.');
        e.target.parentNode.childNodes[3].innerText = 10;
    }
   
    var str = document.getElementsByClassName('aaa');
    
    for(let j=0; j<str.length; j++){
      a = Number(str[j].innerText);
    console.log(e.target.parentNode);

    var str1 = document.getElementsByClassName('result');
    console.log(str1[j].innerText);
    str11 = Number(str1[j].innerText);
    
    var str2 = document.getElementsByClassName('price2');
    console.log(str2[j]);
    str2[j].value = (a * str11);
    sum=0;
    
    console.log(a,str11);
    console.log(str2[j].value);

    // sum+=str2[j].value;
    // console.log(sum);
    var price = document.getElementsByClassName('price2');
    z = 0;
    for(let k=0; k<price.length; k++){
      z=z+Number(price[k].value);
    }
    document.getElementsByClassName('price3')[0].value = z;
    

    }
    
    
    
    
  
    })

    
    
  }


  // 현재 화면에 표시된 값
  const resultElement1 = document.getElementsByClassName('button1');
 
  console.log(resultElement1);
  for(let i = 0 ;i< resultElement1.length; i++){
    

    resultElement1[i].addEventListener("click", function (e){
      console.log(e.target.parentNode.childNodes[3]);
      e.target.parentNode.childNodes[3].innerText = Number(e.target.parentNode.childNodes[3].innerText)-1; 
   
      if( e.target.parentNode.childNodes[3].innerText < 0){
      alert('최소 수량은 1개 입니다.');
      e.target.parentNode.childNodes[3].innerText = 0;
    }
    var str = document.getElementsByClassName('aaa');

    for(let j=0; j<str.length; j++){
      a = Number(str[j].innerText);
    console.log(e.target.parentNode);

    var str1 = document.getElementsByClassName('result');
    console.log(str1[j].innerText);
    str11 = Number(str1[j].innerText);
    
    var str2 = document.getElementsByClassName('price2');
    console.log(str2[j]);
    str2[j].value = (a * str11);
    console.log(a,str11);
    console.log(str2[j].value);

    var price = document.getElementsByClassName('price2');
    z = 0;
    for(let k=0; k<price.length; k++){
      z=z+Number(price[k].value);
    }
    document.getElementsByClassName('price3')[0].value = z;


    }
    
    })      
  }
  
  
  </script>
    
</div>
</div>
</body>

<jsp:include page="/common/footer.jsp" />
</html>