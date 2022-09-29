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
<link rel="stylesheet" href="/service/css/FAQ.css"/>
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
				<h2>FAQ</h2>
			</div>
			<!-- 소제목 -->
			<div class = "content-subtitle-wrapper">
				<p>자주 묻는 질문</p>		
			</div><!-- content-subtitle-wrapper -->
		</div> <!-- content-title-wrapper -->	
    <div class="main-wrapper">
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

<jsp:include page="/common/footer.jsp" />
</body>


</html>