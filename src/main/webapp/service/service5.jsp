<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="/css/serviceNoticeView.css">
  <link rel="stylesheet" href="/common/css/button.css">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>[세모]세탁의 모든것</title>
</head>
<body>

<div class="wrap">
    <div class="wrap1">
    <jsp:include page="/common/header.jsp"></jsp:include>
    <div class="main">
	<div class="space_left">
	<jsp:include page="/common/centerSide.jsp"></jsp:include>
	</div>
	<div class="main_box">
	<div class="main_text">
	<div class="main_text1">
	공지사항
	</div>
	<div class="title">
	<input type="text" value="제목" id="title1">
	<input type="text" value="[공지사항] 2조 세모 세모 2조 세모 2조" id="title2" readonly>
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