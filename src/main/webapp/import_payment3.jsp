<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>

</head>
<body>

<button onclick="paymentDo()">결제하기</button>

<button onclick="cancelPay()">환불하기</button>
<script>


/*아임포트 카카오페이 결제*/
var mid = ${mId}; // 서버에서 발급받은 결제 고유번호
var money = ${pInfo.money}; // 결제금액 ( 서버에서 RestAPI를 통해서 결제번호로 금액변조를 방지함)
var point = $ {userPoint}; // 고객 맴버십 포인트 정보
function paymentDo() {
    $.ajax({
        type: "get",
        url: "/civ/payment/checkseat", // 최종 결제전에 마지막으로 해당 좌석이 예매가능한 상태인지 확인 요청
        data: {
            'scheduleCode': ${pInfo.scheduleCode}, // 구매하려는 스케줄 코드
            'checkSeat': '${pInfo.checkSeat}' // 확인 좌석
        },
        success: function(data) {
            if (data) {
                var IMP = window.IMP; 
                IMP.init('imp62424881');// 아임포트 라이브러리를 통해서 가맹점정보를 불러옴
                IMP.request_pay({
                    pg: 'html5_inicis', // 웹 표준 결제
                    pay_method: $(":input:radio[name=paycard]:checked").val(), //결제수단
                    merchant_uid: mid, // 결제 고유번호
                    name: '테스트 주문', // 결제 상품 이름
                    amount: money, // 결제금액 ( RestAPI를 호출한 상태이기 때문에 금액 변조시 결제창이 뜨지 않고 오류 )
                    buyer_tel: '${sessionScope.loginInfo.userPhone}' // 유저 전화번호 ( 필수 )
                }, function(rsp) { // 콜백 함수
                    if (rsp.success) {
                    	// 결제 정보를 form에 담음
                        $('#checkSeat').val('${pInfo.checkSeat}');
                        $('#merchant_uid').val(rsp.merchant_uid);
                        $('#paid_amount').val(rsp.paid_amount);
                        $('#pay_method').val(rsp.pay_method);
                        var queryString = $("#form").serialize();
                        $.ajax({
                            type: "post",
                            url: "/civ/payment/paid", //최종 결제정보를 서버로 전달
                            data: queryString,
                            success: function(data) {
                                if (data == "failed") {
                                    alert('결제 실패');
                                } else {
                                    // 성공시 웹소켓을 사용해서 해당 스케줄을 보고있는 사람들에게도 좌석 정보를 업데이트
                                    var webSocket = new WebSocket("ws://192.168.219.101/civ/websocket/${pInfo.scheduleCode}");
                                    webSocket.onopen = () => webSocket.send(data);
                                    webSocket.onclose = function(message) {
                                        disconnect();
                                    };
                                    function disconnect() {
                                        webSocket.close();
                                    }
                                    // 결제 확인창으로 이동
                                    location.href = "/civ/payment/payok";
                                }
                            }
                        })
                    } else {
                        alert('결제 실패하셨습니다.');
                    }
                });
            } else {
                alert('결제 오류');
            }
        }
    });
}
</script>

</body>
</html>