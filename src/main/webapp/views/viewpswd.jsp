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
				<div class="idContent">
				
				<span style="font-size:18px; font-weight: bold">${SearchId.customer_name }</span>님의 아이디는 <span style="font-size:18px; font-weight: bold">${SearchId.customer_id }</span> 입니다.
				<div class="password">
				<input type="text" value="비밀번호"><input type="password">
				</div>
				<div class="password1">
				<input type="text" value="비밀번호 확인"><input type="password">
				</div>
				
				
				<div class="button" style="display: flex; justify-content: center; margin-top:20px;">
				<input type="button" value="로그인" class="action-button shadow animate blue" id="button1" style="padding: 0px; font-size:20px; width:150px; height:50px;"
				onclick="location.href='/views/login.jsp'">
				
				</div>
				
				</div>
				
				
				
				
				
				
				
				</div>
				<div class="space_right"></div>
			</div>


		</div>
	</div>







</body>
<jsp:include page="/common/footer.jsp" />
</html>