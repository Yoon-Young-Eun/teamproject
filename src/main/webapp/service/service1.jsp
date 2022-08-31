<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="/css/service1.css">
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
		
		<div class="tabs">
      <div class="tab-2">
        <label for="tab2-1" id="tab2-3" onclick="colorChange()">고객의소리</label>
        <input id="tab2-1" name="tabs-two" type="radio" checked="checked">
        <div class="body1">
          <img src="/image/service1.JPG"  id="image1" width="100%">
        </div>
        
      </div>
      <div class="tab-2">
        <label for="tab2-2" id="tab2-4">온라인상담</label>
        <input id="tab2-2" name="tabs-two" type="radio">
        <div class="body2">
          <div class="image0">
         <a href="./service1.html" id="aa2"><img src="/image/service2.jpg" id="image2">
        <p id="p1">문의 및 제안</p><br>
        <p id="p2">세탁서비스 및 서비스이용에 대한<br>
        문의/제안 사항을 남겨주세요</p></a>
         <a href="./service2.html" id="aa2"><img src="/image/service3.jpg" id="image3">
          <p id="p1">공지사항</p><br>
          <p id="p2">세탁서비스 이용에 관한 공지사항<br>
          게시판 입니다.</p></a></a>
        </div>
        
      </div>
      </div>

      
    </div>
	
	
	</div>
	<div class="space_right"></div>
	</div><!-- main -->
    


</div><!--wrap1  -->
</div><!--wrap  -->

</body>
<jsp:include page="/common/footer.jsp" />
</html>