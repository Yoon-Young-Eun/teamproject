<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>	
	<!-- jQuery -->
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
		
	<!-- iamport.payment.js -->
	<script type="text/javascript"
		src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>

	<button onclick="requestPay()">결제하기</button>
	
	<button onclick="cancelPay()">환불하기</button>
	
<!--  결제 js -->
	<script>
	function requestPay() {
        IMP.init('imp01863204'); //iamport 대신 자신의 "가맹점 식별코드"를 사용
        IMP.request_pay({
           pg : "html5_inicis",
           pay_method : "card",
           merchant_uid : 'teamPjt_1661173653758',
           name : '결제테스트',
           amount : 200,
           buyer_email : 'iamport@siot.do',
           buyer_name : '구매자',
           buyer_tel : '010-1234-5678',
           buyer_addr : '서울특별시 강남구 삼성동',
           buyer_postcode : '123-456'
        }, function(rsp) {
           console.log(rsp);
           if (rsp.success) {
              console.log(rsp.success);
           } else {
              var msg = '결제에 실패하였습니다.';
              msg += '에러내용 : ' + rsp.error_msg;
              alert(msg);
           }
        });

     } 
	</script>

</body>
</html>