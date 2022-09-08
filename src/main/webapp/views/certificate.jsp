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
<!-- fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
</head>
<body>

<jsp:include page="../common/header.jsp"/> 


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
<div class = "btn">
   <a href="terms.jsp" class="action-button shadow animate blue">이전</a>
   <a href="form.jsp" class="action-button shadow animate blue">다음</a>
</div>
</form>

<jsp:include page="../common/footer.jsp"/> 

</body>
</html>