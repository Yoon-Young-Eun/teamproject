<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./general.css">
 <!-- <script href="./general.js"></script> -->

  




  <title>[세모]세탁의 모든것</title>
</head>
<body>
  <header> 
    <!-- 헤더시작 -->
    <div class="header">
      <div class="header_logo">
      <h1><a href = "#" onclick = "location.href='main.html'">세 모</a></h1>
      </div>
      <div class="header_topMenu">
        <div class="header_login">
         <a href="#">로그아웃</a>  
        </div>
        <div class="header_join">
          <a href="#">마이페이지</a>  
        </div>
        <div class="header_service">
          <a href="#">고객센터</a>  
        </div>
       </div>
    </div>
    <!-- 헤더 끝 -->
    <div class="header_menu">
      <div class="header_menu1">
        <ul class="header_dep1">
          <li><a href="./paymain.html">예약하기</a></li>
  
          <li><a href="#">세탁서비스</a>
           <ul class="header_dep2">
            <li><a href="#">일반의류</a></li>
            <li><a href="#">와이셔츠</a></li>
            <li><a href="#">운동화</a></li>
            <li><a href="#">이불</a></li>
            <li><a href="#">가죽/모피</a></li>
            <li><a href="#">아웃도어</a></li>
            <li><a href="#">모자/가방</a></li>
            <li><a href="#">특수크리닝</a></li>
            <li><a href="#">로얄크리닝</a></li>
  
           </ul>
           </li>
          <li><a href="#">서비스지역</a>
          <ul class="header_dep2">
            <li><a href="#">서울</a></li>
           </ul>
          </li>
          <li><a href="#">이용 정보</a>
          <ul class="header_dep2">
            <li><a href="#">수거방법</a></li>
            <li><a href="#">이용방법</a></li>
           </ul>
          </li>
          <li><a href="#">회사소개</a>
          <ul class="header_dep2">
            <li><a href="#">인삿말</a></li>
            <li><a href="#">오시는길</a></li>
           </ul>
          </li>
       </ul>
      </div>
    </div>
  </header>
  
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
          <input type="radio" id="toggle" onclick="openCloseToc()" value="상의" name="1"> 
        </div> 
        <div class="top1" >
          <input type="radio" id="toggle1" onclick="openCloseToc1()" value="하의" name="1"> 
        </div> 
        <div class="top2" >
          <input type="radio" id="toggle2" onclick="openCloseToc2()" value="신발" name="1"> 
        </div> 
        <div class="top3" >
          <input type="radio" id="toggle3" onclick="openCloseToc3()" value="외투" name="1"> 
        </div> 
        <div class="top4" >
          <input type="radio" id="toggle4" onclick="openCloseToc4()" value="기타" name="1"> 
        </div> 
        <div class="top5" >
          <input type="radio" id="toggle5" onclick="openCloseToc5()" value="침구류" name="1"> 
        </div> 

      </div>
          <form id="view">
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
        </form>
        
        
          <form id="view1">
          <div class="main_text4">
            <div class="main_text5">
              티셔츠
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
              바지
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
              침구류
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
              겨울옷
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
        </form>
          
        <form id="view5">
          <div class="main_text4">
            <div class="main_text5">
              겨울옷
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
          <textarea id="textarea1" maxlength="99999" placeholder="요청사항을 입력하세요"></textarea>
        </div>
        <div class="service">
          기사님께 요청사항
        </div>
        

        
        <div class="main_text9">
        <input type="button" value="결제하기" id="pay">   
        <input type="button" value="취소하기" id="paycancel">
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
  
</body>
</html>