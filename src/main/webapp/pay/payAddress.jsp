<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
<link rel="stylesheet" href="/common/css/button.css">
<link rel="stylesheet" href="/css/payAddress.css">
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
    <form action="/OrderAddress.do">
    <div class="main_text2">
      <div class="address1">주소지관리</div>
      <div class="address2">
        
        <input type="hidden" name="customer_no" value="${sendCustomer.customer_no }"  id="customnumber" required>
        <div class="address3">
          <div class="aa" >
        <input type="hidden" value="기본주소" id="ad1" readonly class="address_name">
        <div class="name_address" style="display: flex">
        <div class="name_address1" id="z1" style="width:100px; text-align:right; font-weight: 800; font-size:15px; ">기본주소</div>
        
        </div>
      </div>
      
        <div class="button1">
        <input type="button" value="주소지변경" id="button2"  onclick="showPopup();" class="action-button shadow animate blue" style="width:100px; height: 30px; padding:0px; font-size:15px; margin: 0px; " >
        </div>
        
      </div>
      <div class="address4">
        <input type="hidden" id="phone" value="${sendCustomer.customer_phone }"  name="customer_phone" class="phone" required>
        <div class="phone1" style="display: flex">
        <div class="phone_title" style="font-weight: normal; font-size:15px; width:100px; text-align:right; ">기본연락처 : </div>
        <div class="phone9" id="z2" style="font-weight: normal; font-size:15px; margin-left:5px;">${sendCustomer.customer_phone}</div>
        </div>
      </div>
      <div class="first_address">
       <input type="hidden" id="address1-1" value="${sendCustomer.customer_address1 }"  name="customer_address1" class="address1-1" required>
      <div class="addressOne" style="display: flex">
      <div class="address_1" style="font-weight: normal; font-size:15px; width:100px; text-align:right;"> 기본 주소 : </div>
      <div class="address_2" id="z3" style="font-weight: normal; font-size:15px; margin-left:5px;">${sendCustomer.customer_address1 }</div>
      
      </div>
      
      </div>
      <div class="second_address">
       <input type="hidden" id="address1-2" value="${sendCustomer.customer_address2 }"  name="customer_address2" class="address1-2" required>
      <div class="addressOne" style="display: flex">
      <div class="address_3" style="font-weight: normal; font-size:15px; width:100px; text-align:right;">나머지주소 : </div>
      <div class="address_4" id="z4" style="font-weight: normal; font-size:15px; margin-left:5px;">${sendCustomer.customer_address2 }</div>
      
      </div>
      </div>
      <div class="address5">
       <input type="hidden" id="password" value="${gatepswd.cm_gate_passwd }" placeholder="#1234 , 종1234" class="password" name="cm_gate_passwd" required> 
        <div class="address_pass" style="display: flex">
        <div class="address_pass1"  style="font-weight: normal; font-size:15px; width:100px; text-align:right;">출입비밀번호 : </div>
        
        <div class="address_pass2" id="z5" style="font-weight: normal; font-size:15px;" ></div>
        <input type="hidden" value="${sendCustomer.customer_name }" name="customer_name" style="font-weight: normal; font-size:15px; margin-left:5px;">
        
        </div>
      </div>
    
      
    </div>
    </div> 

    <div class="add_button">
      <input type="submit" id="add_button1" value="선택완료"  class="action-button shadow animate blue" style="font-size: 20px; width: 200px; height: 50px; margin: 0px;">
    </div>
    </form>
    
  </div>
  <div class="space_right"></div>
</div>
	
	
	<div id="chse" style="display: none">1</div>
</div>
</div>

<script type="text/javascript">
   window.name = "parentForm";

   var url="/getAddressList.do?customer_no="+${sendCustomer.customer_no };
   function showPopup() { window.open(url, "", "width=720, height=850"); }
   </script>
   
   
   <script>
   $("#z1").on("DOMSubtreeModified",function(){
	   console.log("z1");
	   
	   $("#ad1").val($("#z1").text().trim())  ;
   })
   $("#z2").on("DOMSubtreeModified",function(){
	   console.log("z2");
	   
	   $("#phone").val($("#z2").text().trim()) ;
   })
   $("#z3").on("DOMSubtreeModified",function(){
	   console.log("z3");
	   console.log($("#z3").text().trim());
	   
	   $("#address1-1").val($("#z3").text().trim());
	  
   })
   $("#z4").on("DOMSubtreeModified",function(){
	   console.log("z4");
	  
	   $("#address1-2").val($("#z4").text().trim()) ;
   })
    $("#z5").on("DOMSubtreeModified",function(){
	   console.log("z5");
	  
	   $("#password").val($("#z5").text().trim()) ;
   })
   
   </script>
   <script>
$("#chse").on("DOMSubtreeModified",function(){
	console.log("d1");
	setTimeout(() => {
		console.log("d2");
		location.reload();}, 700);
	
})
</script>

</body>

<jsp:include page="/common/footer.jsp" />
</html>