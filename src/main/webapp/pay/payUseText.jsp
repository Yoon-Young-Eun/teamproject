<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
<link rel="stylesheet" href="/common/css/button.css">
<link rel="stylesheet" href="/css/payUseText.css">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>[세모]세탁의 모든것</title>


<script type="text/javascript">
   
    function agreeCheck(frm)
    {
       if (frm.button1.disabled==true)
        frm.button1.disabled=false
        
       else
        frm.button1.disabled=true
       
    }
    
    </script>

</head>
<body>

	

	<div class="wrap">
		<div class="wrap1">
			<!-- haeder 시작 -->

<jsp:include page="/common/logined-header.jsp"></jsp:include>

			<div class="main">
				<div class="space_left"></div>
				<div class="paymainBox">
				<form action="/sendCustomer.do?" method="GET">
					<div class="paymain_text">세탁 서비스 예약하기</div>
<<<<<<< HEAD
					<input type="hidden" value="${num}" name="customer_no">
=======
					<input type="hidden" value="${num }" name="customer_no">
>>>>>>> main
					<div class="paymain_text1">유의사항</div>
					<div class="paymain_text2">

						선택하신 <span id="text_1">날짜는 선택 이후 변동이 불가능</span>합니다.<br> 선택하신
						수거일에 맞춰 기사님이 방문하시니 <span id="text_2">잊지말고 세탁물을 내놓아주세요!</span> <br>
						세탁 상황에 따라 1~2일 조기에 배송되거나 지연될 수 있는 점 양해부탁드립니다. <br> 주말 및 공휴일에는
						세탁서비스가 운영되지 않으며 , 수거,배송 업무 또한 진행되지 않는 점 유의 부탁드립니다. <br> 세탁물이
						수거된 이후에는 <span id="text_3">취소/환불</span>이 불가능합니다.

					</div>

					<div class="paymain_text3">특수세탁</div>
					<div class="paymain_text4">
						특수세탁이란 ?<br> 땀이나 오염물질로 인해 누렇게 변한 얼룩 드라이크리닝으로도 제거가 안되는 땀 성분<br>
						곰팡이,핏물,잉크 등과 같이 일반세탁으로 쉽게 빠지지 않는 오염들을 특수작업을 통해서<br> 제거해 드리는
						세탁 서비스 입니다.
					</div>
					<div class="paymain_text5">
						<span id="text_4">특수세탁의 경우 일반세탁과 다르게 세탁물을 먼저 수거 후 세탁요금에 대한
							견적을<br> 받아 보신 후 세탁을 진행하셔야 합니다.
						</span>
					</div>
					<div class="paymain_link1">
						<a href="#" id="a_link">[자세히]</a>
					</div>

					<div class="paymain_text6">일반세탁</div>
					<div class="paymain_text7">
						일반세탁이란 ?<br> 소재 및 세탁방법에 따라 분류 후 오염제거 및 세탁물 손상보호<br> 세탁물
						건조 /오염제거정도 체크/ 다림질 과정을 거치는 세탁서비스 입니다.

					</div>
					<div class="paymain_text8">
						<span id="text_5">일반세탁의 경우 소재/세탁물의 종류에 따라 정해진 금액에 맞춰서 금액이
							책정되며 ,<br> 특수세탁과 다르게 견적을 받지 않으셔도 됩니다.
						</span>
					</div>
					<div class="paymain_link2">
						<a href="#" id="a_link">[자세히]</a>
					</div>

					
						<div class="paymain_text9">
							<input type="checkbox" id="checkbox1"
								onClick="agreeCheck(this.form)"><label for="checkbox1"><span id="span123">※유의사항을
								숙지하였고 서비스를 진행합니다</span></label>
						</div>
						<div class="paymain_text10">
							<span id="span1234">(체크박스에 체크를 하셔야 다음단계로 진행이 가능합니다.)</span>
						</div>

						<div class="paymain_button">
							<div class="paymain_button1">
								<input type="submit" id="button1" value="확인" class="action-button shadow animate blue"
									 disabled></input>
							</div>
							<div class="paymain_button1">
								<input type="button" id="button2"
									onclick="#" class="action-button shadow animate blue" value="취소">
							</div>
						</div>
					</form>

				</div>
				<div class="space_right"></div>
			</div>


		</div>
	</div>


	<!-- 컨텐츠 시작 -->




</body>
<jsp:include page="/common/footer.jsp" />
</html>