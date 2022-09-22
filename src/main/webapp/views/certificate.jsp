<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<!-- font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
<!-- resources -->
<link rel="stylesheet" href="/views/resources/css/certificate.css"/>
<link rel="stylesheet" href="/common/css/header.css"/>
<link rel="stylesheet" href="/common/css/button.css"/>
<link rel="stylesheet" href="/common/css/footer.css"/>
<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- 문자인증 -->
<!-- <script type="text/javascript" src="/js/certificate.js"></script> -->
<!-- fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
</head>
<body>

<jsp:include page="/common/header.jsp"/> 


<div class = "progress-bar">
	<div class = "progress-img"><img src="./resources/img/progress-2.png"></div>
	<div class = "progress-text">
		<ul>
			<li>이용약관</li>
			<li><b>본인인증</b></li>
			<li>회원정보</li>
			<li>가입완료</li>
		</ul>
	</div>
</div>

<form action="/complete.do" method="get">

		<div class="content">
			<tr class="mobileNo">
				<th><label for="phone">휴대폰 번호</label></th>
				<td>
					<div class="content_body">
						<div class="phone_pa">
						<div class="phone_num">
						<input id="phone" type="text" name="phone" title="전화번호 입력" required /> 
						<input type="button" id="phoneChk" class="doubleChk" value="인증번호 발송">
						</div>
							<div class="aler">
								<span class="point successPhoneChk"></span>
							</div>
						</div>
						<div class="certi_pa">
						<div class="certificate_num">
						<input id="phone2" type="text" name="phone2" title="인증번호 입력" disabled required />
						<input type="button" id="phoneChk2" class="doubleChk" value="본인인증">
						</div>
							<div class="aler2">
								<span class="point successPhoneChk2"></span>
							</div>
						<input type="hidden" id="phoneDoubleChk" />
						</div>
					</div>

				</td>
			</tr>
		</div>
		
		<script type="text/javascript">
			let che=false;
			let code2 = "";
			$("#phone").on("change keyup",function(){
				
				$("#phone").val($("#phone").val().replace(/[^0-9]/g, '')
						  .replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, ""))
			})
			$("#phoneChk").click(
					function() {
						var phone = $("#phone").val();
						if (/^([0-8]).{0,20}$/.test(phone)
								&& phone.length == 13) {
							alert("인증번호 발송이 완료되었습니다.\n휴대폰에서 인증번호 확인을 해주십시오.");
							$.ajax({
								type : "GET",
								url : "/phoneCheck.do?phone=" + phone,
								cache : false,
								success : function(data) {
									console.log("dd",data);
										$("#phone2").attr("disabled", false);
										$("#phoneChk2").css("display",
												"inline-block");
										$(".successPhoneChk").text(
												"인증번호를 입력 후 본인인증을 눌러주십시오.");
										$(".successPhoneChk").css("color",
												"green");
										$("#phone").attr("readonly", true);
										code2 = data;
										che=true;
								}
							});
						} else {
							alert("휴대폰 번호가 올바르지 않습니다!");
							$(".successPhoneChk").text(
							"유효한 번호를 입력해주세요.");
							$(".successPhoneChk").css("color",
							"red");
							$("#phone").attr("autofocus", true);
							return;
						}
					});
		
		$("#phoneChk2").click(function(){
			console.log(code2);
			if($("#phone2").val() == code2 && $("#phone2").val() != null && $("#phone2").val() != ""){
				$(".successPhoneChk2").text("인증번호가 일치합니다.");
				$(".successPhoneChk2").css("color","green");
				$("#phoneDoubleChk").val("true");
				$("#phone2").attr("disabled",true);
				$(".next").removeClass("next");
			}else{
				$(".successPhoneChk2").text("인증번호가 일치하지 않습니다. 확인해주시기 바랍니다.");
				$(".successPhoneChk2").css("color","red");
				$("#phoneDoubleChk").val("false");
				$(this).attr("autofocus",true);
			}
		});
		$(document).ready(function(){
			$("#next").click(function(){
				if($("#next").hasClass("next")){
					alert("본인인증을 해주세요");
					if(!(/^([0-8]).{0,20}$/.test($("#phone").val().trim())
							&& phone.length == 13) ){
						console.log("ㅋㅋㅋ",$("#phone"));
						$("#phone").focus();
					}if(che){
						$("#phone2").focus();
					}
				}else{
					location.href="form.jsp";
				}
			});
		});

		</script>

		<div class = "btn">
   <a href="terms.jsp" class="action-button shadow animate blue">이전</a>
   <a id="next" class="action-button shadow animate blue next">다음</a>
</div>
</form>

<jsp:include page="../common/footer.jsp"/> 

</body>
</html>