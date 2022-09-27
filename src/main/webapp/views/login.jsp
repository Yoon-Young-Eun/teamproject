<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<!-- font awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
<!-- resources -->
<link rel="stylesheet" href="/views/resources/css/login.css" />
<link rel="stylesheet" href="/common/css/header.css" />
<link rel="stylesheet" href="/common/css/button.css" />
<link rel="stylesheet" href="/common/css/footer.css" />
<!-- JQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<!-- kakao social login -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
</head>
<body>

	<jsp:include page="/common/header.jsp" />


	<div class="page-container">
		<div class="login-form-container shadow">
			<div class="login-form-right-side"
				style="background-image: url(/views/resources/img/loginimg.png);">
				<div class="top-logo-wrap"></div>
				<h1>세탁의 모든것</h1>
				<p></p>
			</div>
			<div class="login-form-left-side">
				<div class="login-top-wrap"></div>
				
					<div class="login-input-container">
				<form action="/login.do" method="post" id = "loginForm" name = "loginForm" >
						<div class="login-input-wrap input-id">
							<i class="far fa-envelope"></i> <input id="id"
								placeholder="example@mail.com" class = "id" name="customer_id"
								value="${memberVO.customer_id}" type="text">
								<span id = "idCorrection"></span>
						</div>
						<div class="login-input-wrap input-password">
							<i class="fas fa-key"></i> <input id="passwd" placeholder="비밀번호"
								name="customer_passwd" class="passwd" value="${memberVO.customer_passwd}"
								type="password">
								<span id = "passCorrection"></span>
						</div>
						<div class="login-btn-wrap">
							<button id="login-btn" class="login-btn">로그인</button>
							<span>아직 회원이 아니십니까?&nbsp;&nbsp;<a href="/getTerms.do">회원가입</a></span>
							<span>비밀번호를 잊으셨나요? <a href="/views/IdpwSearch.jsp">&nbsp;&nbsp;비밀번호찾기</a></span>
						</div>
						
					</form>
				</div>
				
				
				<div class="social">
					<span>소셜 로그인</span>
					<br>
					<button style = "border : none;" onclick="kakaoLogin()"><img style = "display:flex;justify-content:center;"alt="" src="/views/resources/img/kakao_login_medium_wide.png"></button>
					
					
					
				</div>
			</div>
		</div>
	</div>
	
	<!-------------------- 스크립트 ---------------------->
	
	<!-- 소셜로그인 -->
	<script>
	function kakaoLogin() {

		$.ajax({
			url: '/kakao.do',
			type: 'get',
			async: false,
			dataType: 'text',
			success: function (res) {
				location.href = res;
			}
		});
	}
					
	</script>
	
	<!-- 로그인 유효성 -->
	<script>
		$('#login-btn').click(function(){
			var id = $('#id').val();
			var passwd = $('#passwd').val();
			
			console.log(id);
			console.log(passwd);
			console.log("함수 실행");
			
			if (id == "" || id == null){
				$('#id').attr("placeholder","아이디를 입력해주세요.");
				$('#id').append('<style> .id::placeholder{color:red} </style>')
				$('#id').focus();
				return false;
			} else if (passwd == "" || passwd == null){
				$('#passwd').attr("placeholder","비밀번호를 입력해주세요.");
				$('#passwd').append('<style> .passwd::placeholder{color:red} </style>')
				$('#passwd').focus();
				return false;
			} else if (passwd != "" && id != ""){
				$('#login-btn').submit();
			}
		});
	</script>
	
	 
	
</body>

	<jsp:include page="/common/footer.jsp" />
</html>