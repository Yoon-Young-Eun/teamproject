<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<!-- font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
<!-- resources -->
<link rel="stylesheet" href="/css/serviceMain.css"/>
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

<form action="/login.do">
	<div id="header">
	<script>
		$(function() {
			var id = "${id}";
			if (id == "") {
				$('#header').load("/common/header.jsp");
			} else {
				$('#header').load("/common/logined-header.jsp");
			}
		});
	</script>
	</div>
</form>

<div class = "page-wrapper">
	<!-- 사이드메뉴 -->
	<div class = "sidemenu">
		<jsp:include page="/common/centerSide.jsp"></jsp:include>
	</div>

	<!-- 본문 -->
	<jsp:include page = "/common/quick-menu.jsp"/>
	<div class = "content-wrapper">
	<!-- 제목 -->
		<div class = "content-title-wrapper">
			<div class = "content-title">
				<h2>고객센터</h2>
			</div>
			<!-- 소제목 -->
			<div class = "content-subtitle-wrapper">
				<p>세모의 고객, 당신을 위한 공간입니다.</p>		
			</div><!-- content-subtitle-wrapper -->
		</div> <!-- content-title-wrapper -->	
		
		<div class = "main-wrapper">
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
         <a href="#" id="aa2"><img src="/image/service2.jpg" id="image2">
        <p id="p1">문의 및 제안</p><br>
        <p id="p2">세탁서비스 및 서비스이용에 대한<br>
        문의/제안 사항을 남겨주세요</p></a>
         <a href="/getBoardList.do" id="aa2"><img src="/image/service3.jpg" id="image3">
          <p id="p1">공지사항</p><br>
          <p id="p2">세탁서비스 이용에 관한 공지사항<br>
          게시판 입니다.</p></a></a>
        </div>
        
      </div>
      </div>

      
    </div>
		
		      
		   
		</div>
	</div>
</div>	