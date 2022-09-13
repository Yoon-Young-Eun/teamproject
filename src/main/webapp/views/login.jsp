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
				<form action="/login.do" method="get">
						<div class="login-input-wrap input-id">
							<i class="far fa-envelope"></i> <input id="id"
								placeholder="example@mail.com" name="customer_id"
								value="${memberVO.customer_id}" type="text">
						</div>
						<div class="login-input-wrap input-password">
							<i class="fas fa-key"></i> <input id="passwd" placeholder="비밀번호"
								name="customer_passwd" value="${memberVO.customer_passwd}"
								type="password">
						</div>
						<div class="login-btn-wrap">
							<input type="submit" value="로그인" id="login" class="login-btn" />
							<span>아직 회원이 아니십니까?&nbsp;&nbsp;<a href="terms.jsp">회원가입</a></span>
							<span>비밀번호를 잊으셨나요? <a href="#">&nbsp;&nbsp;비밀번호찾기</a></span>
						</div>
						
					</form>
				</div>
				

				<div class="social">
					<span>소셜 로그인</span>
					<br>
					<img style = "display:flex;justify-content:center;" onclick="kakaoLogin()" alt="" src="/views/resources/img/kakao_login_medium_wide.png">
					<script>
						Kakao.init('23ba625f7534454f4f7553b3ef9cfd1c'); //발급받은 키 중 javascript키를 사용해준다.
						console.log(Kakao.isInitialized()); // sdk초기화여부판단
						//카카오로그인
						function kakaoLogin() {
						    Kakao.Auth.login({
						      success: function (response) {
						        Kakao.API.request({
						          url: '/v2/user/me',
						          success: function (response) {
						        	  console.log(response)
						          },
						          fail: function (error) {
						            console.log(error)
						          },
						        })
						      },
						      fail: function (error) {
						        console.log(error)
						      },
						    })
						  }
						//카카오로그아웃  
						function kakaoLogout() {
						    if (Kakao.Auth.getAccessToken()) {
						      Kakao.API.request({
						        url: '/v1/user/unlink',
						        success: function (response) {
						        	console.log(response)
						        },
						        fail: function (error) {
						          console.log(error)
						        },
						      })
						      Kakao.Auth.setAccessToken(undefined)
						    }
						  }  
						</script>
				</div>
			</div>
		</div>
	</div>



	<jsp:include page="/common/footer.jsp" />
</html>