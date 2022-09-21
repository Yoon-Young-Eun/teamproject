<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="/css/payCouponList.css">
  <link rel="stylesheet" href="/common/css/button.css">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>[세모]세탁의 모든것</title>
</head>
<body>
<div class="main">
	
    <div class="coupon">
      쿠폰함
    </div>
    <input type="hidden" value="${OrderData.customer_no }">
    <c:forEach var="coupon" items="${couponList }">
    <div class="bb">
    <div class="aaaa">
    <div class="coupon_text1" >
     <input type="text" value="${coupon.coupon_management_name }" id="aa1" readonly >  
    </div>
    <div class="coupon_buttons">
      <input type="button" value="쿠폰적용" id="button1" onclick="setParentText(this); getParentText2();" readonly class="action-button shadow animate blue" style="height: 25px; width: 100px;margin-top: 5px; padding: 0px; font-size: 15px; ">
    </div>
  </div>

    <div class="coupon_text2">
      <div class="coupon_text3">
        <input type="text" value="금액 : " id="aa2" readonly>
      </div>
      <div class="coupon_text4">
        <input type="text" value="${coupon.coupon_management_price }" id="aa3" readonly>
        <input type="hidden" value="${coupon.coupon_code }" id="couponCode2">
      </div>
    </div>

    <div class="coupon_text5">
      <div class="coupon_text6" >
        <input type="text" value="유효기간:" id="aa4" readonly>
      </div>
      <div class="coupon_text7">
        <input type="text" value="${coupon.coupon_management_start_date } ~ ${coupon.coupon_management_end_date}" id="aa5" readonly>
       
      </div>
    </div>
  </div>
</c:forEach>



</div>
<div class="zzz1">
  <input type="hidden" value="합계">
  <input type="hidden" value="" id="zzz2" class="zzz3" >
</div>
<div class="zzz9">
  <input type="hidden" value="배송비">
  <input type="hidden" value="${OrderData.order_delivery_price }" id="zzz8" class="zzz3" readonly name="order_delivery_price">
</div>




 

  <script type="text/javascript">
    function setParentText(e){
      // opener.document.getElementById("id1").value = document.getElementById("aa1").value
      // opener.document.getElementById("id2").value = document.getElementById("aa2").value
      // opener.document.getElementById("id3").value = document.getElementById("aa3").value
      // opener.document.getElementById("id4").value = document.getElementById("aa4").value
      // opener.document.getElementById("id5").value = document.getElementById("aa5").value
      window.close();
      // console.log(e.parentNode.parentNode.parentNode.childNodes[3].childNodes[3].childNodes[1]);
      // console.log(e.parentNode.parentNode.parentNode);
      console.log( e.parentNode.parentNode.parentNode.childNodes[3].childNodes[3].childNodes[3]);
      opener.document.getElementsByClassName("coupon_text")[0].innerHTML = e.parentNode.parentNode.parentNode.innerHTML;
      opener.document.getElementById("q1").innerText = e.parentNode.parentNode.parentNode.childNodes[3].childNodes[3].childNodes[1].value;
      opener.document.getElementById("couponCode").innerText = e.parentNode.parentNode.parentNode.childNodes[3].childNodes[3].childNodes[3].value;
      // console.log(opener.document.getElementsByClassName("coupon_text")[0]);
      getParentText2();
      
    }
 



    console.log(document.getElementById('zzz2'));
    function getParentText2(){
    document.getElementById("zzz2").value = opener.document.getElementById("price_text1").value;
    var price1 = document.getElementById("zzz2").value;
    var aaa = /[^0-9]/g;
    var result = Number(price1.replace(aaa,""));
    console.log(result);
    document.getElementById("zzz2").value = result;


      var price2 = opener.document.getElementById("q1").innerText;
      var bbb = /[^0-9]/g;
      var result1 = Number(price2.replace(bbb,""));
      console.log(result1);
      // var result3 = result - result1;
      // opener.document.getElementById("cou44").value = result3 + "원";

      var price3 = document.getElementById("zzz8").value;
      var ccc = /[^0-9]/g;
      var result4 = Number(price3.replace(ccc,""));
      console.log(result4);
      

      
      var result3 =result - result1 + result4;
      opener.document.getElementById("q2").innerText = result3;
      
      if(document.getElementById("zzz2").value<20000){
        document.getElementById("zzz8").value = 3500 ;
        opener.document.getElementById("cou66").value = document.getElementById("zzz8").value;
        
      }else if(document.getElementById("zzz2").value >=20000){
        document.getElementById("zzz8").value = 0; 
        opener.document.getElementById("cou66").value = document.getElementById("zzz8").value;
      }
    
    }
    
  </script>
</body>
</html>