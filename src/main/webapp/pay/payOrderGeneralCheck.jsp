<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<!-- jQuery -->
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
		
	<!-- iamport.payment.js -->
	<script type="text/javascript"
		src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
		


</head>
<body>

<div class="wrap">
    <div class="wrap1">
    
    <jsp:include page="/common/header.jsp"></jsp:include>
    <div class="main">
  <div class="space_left"></div>
  <div class="main_content">
  <form action="/OrderInsert.do" id="form1" method="GET">
    <div class="main_text">
      주문내역 확인
    </div>
    <div class="service">
      세탁시 요청사항
    </div>
    <div class="service1">
      <input type="text" value="${checkbox.data1}" readonly id="checkbox" name="order_request1">
    </div>
    <div class="service1">
      <input type="text" value="${checkbox.data2}" readonly id="checkbox" name="order_request1">
    </div>
    <div class="service1">
      <input type="text" value="${checkbox.data3}" readonly id="checkbox1" name="order_request1">
    </div>


    <div class="service2">
      기사님께 요청사항
    </div>
    <div class="service3">
      <input type="text" value="${checkbox.data4}" readonly id="checkbox" name="order_request2">
    </div>
    <div class="service3">
      <input type="text" value="${checkbox.data5}" readonly id="checkbox" name="order_request2">
    </div>
    <div class="service3">
      <input type="text" value="${checkbox.data6}" readonly id="checkbox" name="order_request2">
    </div>
    <div class="service3">
      <input type="text" value="${checkbox.data7}" readonly id="checkbox1" name="order_request2">
    </div>





    <div class="main_text1">
    
      <div class="main_text2">
        세탁물 종류
      </div>
      <div style="border:1px solid grey; width:1000px;">
      
      <div style="display:flex; width:1000px; justify-content: center; align-items: center;" >
       <input type="text" value="분류" name="" id="product" style="width: 100px; background-color:#a9d3f0; font-weight: bold;" readonly>
          <input type="text" value="성별" name="" id="product" style="width: 100px; background-color:#a9d3f0; font-weight: bold; " readonly>
          <input type="text" value="상품명" name="" id="product" style="width:400px; background-color:#a9d3f0; font-weight: bold;" readonly>
          <input type="text" value="수량" name="" id="product" style="width: 100px; background-color:#a9d3f0; font-weight: bold; " readonly>
          <input type="text" value="금액" id="product" style="width:150px; background-color:#a9d3f0; font-weight: bold;" readonly>
          <input type="text" value="합계" id="product" style="width:150px; background-color:#a9d3f0; font-weight: bold;" readonly>
       </div>
      <c:forEach var="orderproduct" items="${OrderProduct}">
        <div style="display:flex; width:1000px; justify-content: center; align-items: center;" >
          <input type="hidden" value="${OrderDate.customer_no }" name="customer_Array_no">
          <input type="hidden" value="${OrderData.order_customer_name}" name="customer_Array_name">
          <input type="hidden" value="${orderproduct.product_Array_code }" name="product_Array_code">
          <input type="text" value="${orderproduct.order_mtArray_category1 }" name="order_mtArray_category1" id="product" style="width: 100px;" readonly>
          <input type="text" value="${orderproduct.order_mtArray_category2 }" name="order_mtArray_category2" id="product" style="width: 100px;" readonly>
          <input type="text" value="${orderproduct.order_mtArray_product }" name="order_mtArray_product" id="product" style="width:400px;" readonly>
          <input type="text" value="${orderproduct.order_mtArray_count }" name="order_mtArray_count" id="product" style="width: 100px;" readonly>
          <input type="text" value="${orderproduct.order_mtArray_price }" name="order_mtArray_price" id="product" style="width:150px;" readonly>
          <input type="text" value="${orderproduct.order_mtArray_sumPrice }" name="order_mtArray_sumPrice" id="product" style="width:150px;" readonly>
          <input type="hidden" value="" name="">
        </div>
        </c:forEach>
      </div>
      

      <div class="price" style="width:1000px;">
        <div class="price1">
          <input type="text" value="세탁비용 : " id="price_text" readonly>
          
        </div>
        <div class="price2">
          <input type="text" value="${price1}"id="price_text1" readonly>
          <input type="text" value="원" id="price_text1" readonly style="width:30px;">
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
      <div class="coupon_text" style="width:1000px;">
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
     
      <input type="hidden" id="customer_no" value="${OrderData.customer_no}"	name="customer_no"> 
	  <input type="hidden"value="${OrderData.order_address1 }" name="order_address1">
	  <input type="hidden" value="${OrderData.order_address2}" name="order_address2"> 
	  <input type="hidden"value="${OrderData.order_customer_name}" name="order_customer_name"> 
	  <input type="hidden"value="${OrderData.order_customer_phone }" name="order_customer_phone"> 
      <input type="hidden"value="${OrderData.cm_gate_passwd }" name="cm_gate_passwd">
	  <input type="hidden" value="${OrderData.order_pickup_date }" name="order_pickup_date">
	  <input type="hidden" value="${OrderData.order_pickup_time }" name="order_pickup_time">
	  <input type="hidden" value="${OrderData.order_type}" name="order_type">

	 
	 
	 
	 
	  <input type="hidden" value="" name="coupon_code" id="coupon_code2">
	  <div id="couponCode" style="display: none">용용</div>


	  <input type="hidden" value="${CustomerInfo.customer_id}" name="customer_id">
      <input type="hidden" value="${CustomerInfo.customer_zipcode}" name="customer_zipcode">
	  <input type="hidden" name="imp_uid" id="imp_uid">
	
>>>>>>> main
      <div class="pay" style="width:1000px;">
       <div class="pay1">
        결제금액
       </div>
       <div class="pay2">
        <div class="price">
          <div class="price1" id="price1">
            <input type="text" value="세탁비용 : " id="price_text" readonly>
          </div>
          <div class="price2" id="price2">
            <input type="text" value="${price1}" id="price_text1" readonly>
            <input type="text" value="원" id="price_text1" readonly style="width:30px;">
          </div>
        </div>
      </div>
      <div class="pay5">
        <div class="pay6">
          <input type="text" value="쿠폰할인 : " readonly id="cou22">
        </div>
        <div class="pay7" style="display:flex">
          <input type="hidden" value="${OrderData.order_use_coupon_price }" id="cou111" readonly name="order_use_coupon_price">
          <div id="q1" style="width:150px; text-align:right;font-size:20px;padding-right:3px;" ></div>
          <input type="text" value="원" id="cou11" readonly style="width:30px;">
        </div>
        
      </div>

      <div class="del_pay">
        <div class="del_pay1">
          <input type="text" value="배송비 : " readonly id="cou55">
          
        </div>
        <div class="del_pay2">
          <input type="text" value="${OrderData.order_delivery_price }" id="cou66" readonly name="order_delivery_price">
          <input type="text" value="원" readonly id="cou66" style="width:30px;">
        </div>
        
      </div>

      <div class="total">
        <div class="total1" style="display: flex">
          <input type="text" value="최종금액 :" class="total_price1" id="cou33" readonly>
          <input type="hidden" value="${price }" id="cou444" readonly  name="order_price">
          <div id="q2" style="width:150px; text-align:right;font-size:20px;padding-right:3px;" >${price}</div>
          <input type="text" value="원" id="cou44" readonly style="width:30px;">
        </div> 
       
      </div>
      </div>

      <div class="yak" style="width:1000px;">
      <c:forEach var="Terms" items="${terms}">
        <div class="yak1">
          <div class="yak2">
          <input type="text" id="terms" value="${Terms.terms_title }" readonly style="font-size:15px; color:white; background-color:#63afe4; border-style:none; text-align:center;" > 
            <input type="button" value="▼" onclick="showYak(this)" id="yakk33">
          </div>
          <div class="yak33" id="yak3">
            ${Terms.terms_content }
          </div>
        </div>
		</c:forEach>
       

        
      
      </div>

      <div class="order_min" style="width:1000px;">
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






      <div class="bt1" style="width:1000px;">
        <input type="button" id="but1" value="결제하기" onclick="requestPay()" class="action-button shadow animate blue">
        <input type="button" id="but2" value="취소하기" class="action-button shadow animate blue" >
      </div>
    
      

      
      
<!--  결제 js -->
	<script>
	function requestPay() {
	  IMP.init('imp62424	881'); //iamport 대신 자신의 "가맹점 식별코드"를 사용
	  IMP.request_pay({
	    pg: "html5_inicis",
	    pay_method: "card",
	    merchant_uid : 'semo_'+new Date().getTime(),
	    name : '결제테스트',
	    amount : document.getElementById("cou444").value,
// 		amount : '100',
	    buyer_email : '${CustomerInfo.customer_id}',
	    buyer_name : '${OrderData.order_customer_name}',
	    buyer_tel : '${OrderData.order_customer_phone}',
	    buyer_addr : '${OrderData.order_address1} ${OrderData.order_address2}',
	    buyer_postcode : '${CustomerInfo.customer_zipcode}'
	  }, function (rsp) {
		    console.log(rsp);
		    if (rsp.success) {
		    	   console.log(rsp.success);
		    	   console.log("adadasad");
		    	   console.log("값1"+rsp.imp_uid);
		    	   console.log(rsp.merchant_uid);
		    	   console.log(rsp.card_name);
		    	   console.log(rsp.card_quota);
		    	   console.log(rsp.paid_amount);
		    	   console.log(document.getElementById("customer_no").value);
// 		    	   jQuery로 HTTP 요청
		    	      $.ajax({
	    	          	  url: "/insertPayInfo.do", // 가맹점 서버
		    	          method: "GET",
  		    	          dataType:"json",
 		    	          data: {
 		    	        	  customer_no: document.getElementById("customer_no").value,
 		    	        	  card_name: rsp.card_name,
 		    	        	  card_quota: rsp.card_quota,
 		    	        	  paid_amount: rsp.paid_amount,
 		    	              imp_uid: rsp.imp_uid,
 		    	              merchant_uid: rsp.merchant_uid
 // 		    	              //기타 필요한 데이터가 있으면 추가 전달
 						
		    	          },
		    	          success:function(e){
		    	        	  console.log(c);
		    	          },
		    	          error:function(er){
		    	        	  console.log(rsp.imp_uid);
		    	        	  document.getElementById("imp_uid").value = rsp.imp_uid;
		    	        	  console.log(document.getElementById("imp_uid").value);
		    	        	  var msg = '결제가 완료되었습니다.';
				    			msg += '\n결제 금액 : ' + rsp.paid_amount;
				    			msg += '\n카드 승인번호 : ' + rsp.apply_num;
								    alert(msg);
								    order();  
		    	          }
		    	      })
	
		    } else {
		      var msg = '결제에 실패하였습니다.';
		      msg += '에러내용 : ' + rsp.error_msg;
		      alert(msg);
		    }
	  });
	}
	
	
	</script>
      
      <script>
        function order(){
          var money1 = document.getElementById("q2").innerText;
          var abc = /[^0-9]/g;
          var totalpay = Number(money1.replace(abc,""));
          var totalpay2 = Number(money1);
			console.log(totalpay2);
          if(totalpay2 < 15000){
         	alert("최소주문금액은 15000원 입니다.");
          }else{
        	  document.getElementById("form1").submit();
          } 
          

        }

        
      </script>
<script>
$("#q1").on("DOMSubtreeModified",function(){
	   console.log("q1");
	   
	   $("#cou111").val($("#q1").text().trim())  ;
})

$("#q2").on("DOMSubtreeModified",function(){
	   console.log("q2");
	   
	   $("#cou444").val($("#q2").text().trim())  ;
})
$("#couponCode").on("DOMSubtreeModified",function(){
	   console.log("couponCode");
	   
	   $("#coupon_code2").val($("#couponCode").text().trim())  ;
})


</script>

	<script>
	
	
	</script>





      <script type="text/javascript">
        
        
        function showPopup() { 
        window.name = "parentForm";
        var url="/OrderCoupon.do?customer_no="+${OrderData.customer_no};
         openwin = window.open(url, "", "width=710, height=850");
        
        }


        </script>
    </div>
    </form>
    
  </div>
  <div class="space_right"></div>
</div>
    
    </div>
    </div>
	




</body>


<jsp:include page="/common/footer.jsp" />
</html>