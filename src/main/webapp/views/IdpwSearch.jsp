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
<link rel="stylesheet" href="/css/IdpwSearch.css">

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
			<!-- haeder 시작 -->

<jsp:include page="/common/header.jsp"></jsp:include>

			<div class="main">
				<div class="space_left"></div>
				<div class="mainBox" style="margin-left:150px;">
				<form action="/SearchId.do">
				<div class="search">
				아이디/비밀번호 찾기
				</div>
				<div class="idSearch">
				아이디찾기
				</div>
				<div class="idContent">
				<div class="name">
				<input type="text" value="이름" id="name1" readonly>
				<input type="text" value="" id="name" name="customer_name" required>
				</div>
				<div class="phone">
				<input type="text" id="phone1" value="휴대전화" readonly>
				<input type="tel" value="" id="phone9" name="customer_phone" required>
				
				</div>
				
				<div class="button" style="display: flex; justify-content: center; margin-top:20px;">
				<input type="submit" value="확인" class="action-button shadow animate blue" id="button1" style="padding: 0px; font-size:20px; width:150px; height:50px;">
				</div>
				
				</div>
				</form>
				
				
				<form action="/views/viewpswd.jsp" id="form1">
				<div class="idSearch" >
				비밀번호 찾기
				</div>
				<div class="idContent">
				<div class="name">
				<input type="text" value="아이디" id="id1" readonly>
				<input type="text" value="" id="id" name="customer_id">
				</div>
				<div class="phone">
				<input type="text" id="phone1" value="휴대전화" readonly>
				<input type="tel" value="" id="phone" name="customer_phone" required placeholder="Ex) 01012345678">
				<input type="button" value="인증번호" id="button2">
				<span class="point successPhoneChk" id="ttt">휴대폰 번호 입력후 인증번호 보내기를 해주십시오.</span>


				
				</div>
				
				<div class="number">
				<input type="text" id="number2" value="인증번호">
				<input type="text" id="number3" value="" disabled required title="인증입력">
				<input type="button" value="본인인증" id="button3" style="height: 30px; display:none;"><br>
				<input type="hidden" id="check">
				
				</div>
				
				<div class="button" style="display: flex; justify-content: center; margin-top:20px;">
				<input type="submit" disabled value="확인" class="action-button shadow animate blue" id="button5" style="padding: 0px; font-size:20px; width:150px; height:50px;">
				</div>
				
				</div>
				</form>
				
				
				</div>
				<div class="space_right"></div>
			</div>


		</div>
	</div>

<script type="text/javascript">
var code2 = "";
$("#button2").click(function(){
	var phone = $("#phone").val();
	var Id = $("#id").val();
	console.log(phone);
	console.log(Id);
	if(/^([0-8]).{0,20}$/.test(phone)&&phone.length==11){
		alert("인증번호 발송이 완료되었습니다.\n휴대폰에서 인증번호 확인을 해주십시오.");
	}else{
		alert("휴대폰 번호를 확인해주세요");
		return;
	}
	
	
	
	
	$.ajax({
        type:"GET",
        url:"/message.do?customer_phone=" + phone +"&customer_id="+Id,
        		
        cache : false,
        success:function(data){
       
        	if(data == "error"){
        		alert("휴대폰 번호가 올바르지 않습니다.")
				$(".successPhoneChk").text("유효한 번호를 입력해주세요.");
				$(".successPhoneChk").css("color","red");
				$("#phone").attr("autofocus",true);
        	}else{	        		
        		$("#number3").attr("disabled",false);
        		$("#button3").css("display","inline-block");
        		$(".successPhoneChk").text("인증번호를 입력한 후 본인인증을 해주세요.");
        		$(".successPhoneChk").css("color","green");
        		$("#phone").attr("readonly",true);
        		code2 = data;
        		console.log(code2);
        	}
        }
    });
});

</script>

<script>
$("#button3").click(function(){

	if($("#number3").val() == code2){
		$(".successPhoneChk").text("인증번호가 일치합니다.");
		$(".successPhoneChk").css("color","green");
		$("#check").val("true");
		console.log($("#check").val());
		$("#number3").attr("disabled",true);
		$("#button5").removeAttr("disabled");

		
	}else{
		$(".successPhoneChk").text("인증번호가 일치하지 않습니다. 확인해주시기 바랍니다.");
		$(".successPhoneChk").css("color","red");
		$("#check").val("false");
		$(this).attr("autofocus",true);
	}
});

console.log($(".successPhoneChk").text());

</script>


<!-- <script>

document.getElementById("button5").addEventListner("click",function passdword(){
	if(document.getElementById("ttt") == "인증번호가 일치합니다."){
		document.getElementById("form1").submit();
	}else{
		alert("본인인증을 완료해주세요");
	}
})

</script> -->




</body>
<jsp:include page="/common/footer.jsp" />
</html>