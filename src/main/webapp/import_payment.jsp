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
	  IMP.init('imp62424	881'); //iamport 대신 자신의 "가맹점 식별코드"를 사용
	  IMP.request_pay({
	    pg: "html5_inicis",
	    pay_method: "card",
	    merchant_uid : 'teamPjt_'+new Date().getTime(),
	    name : '결제테스트',
	    amount : 200,
	    buyer_email : 'iamport@siot.do',
	    buyer_name : '구매자',
	    buyer_tel : '010-1234-5678',
	    buyer_addr : '서울특별시 강남구 삼성동',
	    buyer_postcode : '123-456'
	  }, function (rsp) {
		    console.log(rsp);
		    if (rsp.success) {
		    	   console.log(rsp.success);
		    	   console.log("adadasad");
		      var msg = '결제가 완료되었습니다.';
		      alert(msg);
		   /*    location.href = "import_payment.jsp" */
		    } else {
		      var msg = '결제에 실패하였습니다.';
		      msg += '에러내용 : ' + rsp.error_msg;
		      alert(msg);
		    }
	  });
	}
	</script>

<!-- 환불 js -->
<script>
  function cancelPay() {
    jQuery.ajax({
      "url": "{환불요청을 받을 서비스 URL}", // 예: http://www.myservice.com/payments/cancel
      "type": "POST",
      "contentType": "application/json",
      "data": JSON.stringify({
        "merchant_uid": "{결제건의 주문번호}", // 예: ORD20180131-0000011
        "cancel_request_amount": 2000, // 환불금액
        "reason": "테스트 결제 환불" // 환불사유
//         "refund_holder": "홍길동", // [가상계좌 환불시 필수입력] 환불 수령계좌 예금주
//         "refund_bank": "88" // [가상계좌 환불시 필수입력] 환불 수령계좌 은행코드(예: KG이니시스의 경우 신한은행은 88번)
//         "refund_account": "56211105948400" // [가상계좌 환불시 필수입력] 환불 수령계좌 번호
      }),
      "dataType": "json"
		success: function(data) {
			// 서버로부터 정상적으로 응답이 왔을 때 실행
			console.log("응답 성공 " + data);
		},
		error: function(err) {
			// 서버로부터 응답이 정상적으로 처리되지 못햇을 때 실행
			console.log("응답 실패 " + err);
		}
    });
  }
</script>
</body>
</html>