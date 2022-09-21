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
<link rel="stylesheet" href="/views/resources/css/complete.css"/>
<link rel="stylesheet" href="/common/css/header.css"/>
<link rel="stylesheet" href="/common/css/button.css"/>
<link rel="stylesheet" href="/common/css/footer.css"/>
<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- fonts -->
<!-- <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet"> -->
</head>
<body>

<jsp:include page="/common/header.jsp"/> 

<div class = "progress-bar">
	<div class = "progress-img"><img src="/views/resources/img/progress-4.png"></div>
	<div class = "progress-text">
		<ul>
			<li>이용약관</li>
			<li>본인인증</li>
			<li>회원정보</li>
			<li><b>가입완료</b></li>
		</ul>
	</div>
</div>

<div class = "msg">
	<span class = "text-1">환영합니다, <b>${user_name}</b> 님!</span><br>	
	<span class = "text-1">회원가입이 완료되었습니다.</span><br>
	<span class = "text-2">세모의 다양한 서비스를 지금 만나보세요!</span>
</div>

<div class = "btn">
   <a href="/views/login.jsp" class="action-button shadow animate blue">로그인</a>
   <a href="/views/main.jsp" class="action-button shadow animate blue">메인으로</a>
</div>

<jsp:include page="/common/footer.jsp"/> 

</body>
</html>