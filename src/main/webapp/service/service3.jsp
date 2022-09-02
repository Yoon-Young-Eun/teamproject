<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="/css/service3.css">
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
      
      <div class="main_text3">
         <div class="main_textNumber">글번호</div>
         <div class="main_textType">타입</div>
         <div class="main_textTitle">제목</div>
         <div class="main_textWriter">글쓴이</div>
         <div class="main_textDate">작성일</div>
      </div>
      <div class="main_text4">
         <a href="#" id="a_list">
         <div class="main_text5">
            1
         </div>
         <div class="main_text6">
            공지
         </div>
         <div class="main_text7">
            세탁의 모든것 공지사항 입니다.
         </div>
         <div class="main_text8">
            세모
         </div>
         <div class="main_text9">
            2022-08-30
         </div>
      </a>
      </div>
      <div class="main_text4">
         <a href="#" id="a_list">
         <div class="main_text5">
            2
         </div>
         <div class="main_text6">
            공지
         </div>
         <div class="main_text7">
            세탁의 모든것 공지사항2 입니다.
         </div>
         <div class="main_text8">
            세모
         </div>
         <div class="main_text9">
            2022-08-31
         </div>
      </a>
      </div>

    </div>
	
	
	</div><!-- main_box -->
	<div class="space_right"></div>
	</div><!-- main -->
    </div><!-- wrap1 -->
    </div><!-- wrap -->
</body>
<jsp:include page="/common/footer.jsp" />
</html>