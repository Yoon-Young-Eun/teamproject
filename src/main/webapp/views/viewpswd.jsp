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
				
				<div class="search">
				아이디/비밀번호 찾기
				</div>
				<div class="idSearch">
				비밀번호 재설정
				</div>
				<form action="/UpdatePassword.do" id="form1">
				<div class="idContent">
				<div class="dddd" style="display:flex; justify-content: center; width:1000px;">${User.customer_name }님의 아이디는 ${User.customer_id }입니다.</div>
				<input type="hidden" value="${User.customer_passwd }">
				<input type="hidden" value="${User.customer_no}" name="customer_no">
				<div class="password" style="display: flex; justify-content: center; width:1000px;">
				<input type="text" value="비밀번호" readonly style="margin-top:20px; border-style:none;">
				<input type="password" value="" style="margin-top:20px;" name="customer_passwd" id="pass">
				</div>
				<div style="display:flex; width:1000px;justify-content: center;"><span id="pwCorrection"></span></div>
				<div class="password1" style="display: flex; justify-content: center; width:1000px; margin-top:15px;">
				<input type="text" value="비밀번호 확인" readonly style="margin-top:20px; border-style:none;">
				<input type="password"  style="margin-top:20px;" id="repass">
				
				</div>
				<div style="display:flex; width:1000px;justify-content: center;margin-bottom:10px;"><span id="pwChecking"></span></div>
				
				
				<div class="button" style="display: flex; justify-content: center; margin-top:50px;">
				<input type="button" value="비밀번호 재설정" class="action-button shadow animate blue" id="button1" style="padding: 0px; font-size:20px; width:150px; height:50px;"
				onclick="password()">
				
				</div>
				
				</div>
				</form>
				
				<script>
				function password(){
					if(document.getElementById("pass").value == document.getElementById("repass").value){
						document.getElementById("form1").submit();
					}else{
						alert("입력하신 비밀번호가 일치하지 않습니다.");
					}
				}
				
				</script>
				
<!-- 비밀번호 체크 -->
	<script type="text/javascript">
	$(document).ready(function(){
										
		$('#pass').keyup(function(){
												
			var pw = $('#pass').val()
			
			var sc = ["!","@","#","$","%"]
			var check_sc = 0;
													
			for(var i = 0; i < sc.length; i ++){
				if(pw.indexOf(sc[i]) != -1){
				check_sc = 1;
				}
			}
			
			if(pw.length < 8) {	
				$('#pwCorrection').css("color", "red");
				$('#pwCorrection').html("비밀번호를 8자 이상 입력해주세요.");
				$('#pwChecking').html("");
			} else if(pw.length >= 8 && check_sc == 0) {
				$('#pwCorrection').css("color", "red");
				$('#pwCorrection').html("특수문자 입력은 필수입니다.");
				$('#pwChecking').html("");
			} else {
				$('#pwCorrection').html(" ");
			}
												
		});
											
		$('#repass').keyup(function(){
			if($('#pass').val() != $('#repass').val() || $('#repass').val().length < 8){
				$('#pwChecking').css("color", "red");
				$('#pwChecking').html("비밀번호가 일치하지 않습니다. 다시 확인해주세요!");
			}else {
				$('#pwChecking').css("color", "green");
				$('#pwChecking').html("비밀번호가 일치합니다. 회원가입을 계속 진행해주세요!");
			}
		});
		

										
	});
	</script>	
	
		
				
				
				
				</div>
				<div class="space_right"></div>
			</div>


		</div>
	</div>







</body>
<jsp:include page="/common/footer.jsp" />
</html>