<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="/css/serviceFAQ.css">
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
	
	 
    <div class="tabtab">
      <div class="taps">
        <div class="tap-2">
          <label for="tap2-1" id="tap2-3">세탁서비스</label>
          <input id="tap2-1" name="taps-two" type="radio" checked="checked">
         <div class="main_que">
          <div id="Accordion_wrap">
           
           <c:forEach var="FaqList1" items="${faqList1}">
            <div class="que">
             <span>${FaqList1.board_faq_title}</span>
             </div>
            <div class="anw">
             <span>${FaqList1.board_faq_content}</span>
            </div>
            </c:forEach>
            
       </div>
       
       
         </div>
          
        </div>
        <div class="tap-2">
          <label for="tap2-2" id="tap2-4">배송</label>
          <input id="tap2-2" name="taps-two" type="radio">
          <div>
            <div id="Accordion_wrap">
              <c:forEach var="FaqList" items="${faqList}">
            <div class="que">
             <span>${FaqList.board_faq_title}</span>
             </div>
            <div class="anw">
             <span>${FaqList.board_faq_content}</span>
            </div>
            </c:forEach>
 
         </div>
          </div>
        </div>
    
        
      </div>
      
    </div>
	<div class="space_right"></div>
	</div><!-- main -->
    </div>
    </div>
    </div>

	<script>
      $(".que").click(function() {
       $(this).next(".anw").stop().slideToggle(300);
      $(this).toggleClass('on').siblings().removeClass('on');
      $(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
    });
    </script>


</body>

<jsp:include page="/common/footer.jsp" />
</html>