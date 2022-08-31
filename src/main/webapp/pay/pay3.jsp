<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="/css/pay3.css">
<link rel="stylesheet" href="/common/css/button.css">


<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<title>Document</title>
</head>
<body>
	<div class="main_box">

		<div class="main_text2">
			<div class="address1">주소록</div>
			<div class="address2">
				<form action="#" class="form1">
					<div class="address3">
						<div class="aa">
							<input type="text" value="주소2" id="ad2" readonly>
								
						</div>
						<div class="button1">
							<input type="button" value="주소지선택" id="button2"
								onclick="setParentText()" onclick="window.close();"  class="action-button shadow animate blue" style="width: 100px; height: 30px; margin: 0px; padding: 0px; font-size: 15px;">
						</div>
					</div>
					<div class="address4">
						연락처 :<input type="text" id="phone" value="010-1234-5678" readonly>
					</div>
					<div class="first_address">
						주소 : <input type="text" id="address1-1" value="서울시 동작구 노량진동 1-1"
							readonly>
					</div>
					<div class="second_address">
						나머지주소:<input type="text" id="address1-2" value="롯데마트 202호"
							readonly>
					</div>
					<div class="address5">
						출입비밀번호:<input type="text" id="password" value="종 1234">
						<div class="button3">
							<input type="button" value="수정" id="button3" class="action-button shadow animate blue" id="abc123" style="padding: 0px; font-size: 15px; width: 100px; height: 25px;"> 
							<input type="button" value="삭제" id="button4" class="action-button shadow animate blue" style="padding: 0px; font-size: 15px; width: 100px; height: 25px;">
						</div>
					</div>
			</div>
			<script type="text/javascript">
        function setParentText(){
          opener.document.getElementById("ad1").value = document.getElementById("ad2").value
          opener.document.getElementById("phone").value = document.getElementById("phone").value
          opener.document.getElementById("address1-1").value = document.getElementById("address1-1").value
          opener.document.getElementById("address1-2").value = document.getElementById("address1-2").value
          opener.document.getElementById("password").value = document.getElementById("password").value
          window.close();
        }
      </script>
			</form>
		</div>
	</div>

	<div class="add_button">
		<input type="button" id="add_button1" value="+ 주소지 추가하기"
			onclick="location.href='/pay/pay4.jsp'" class="action-button shadow animate blue" style="margin: 0px; font-size: 25px;  height: 60px; width: 300px;">
	</div>
	</div>

</body>




</html>