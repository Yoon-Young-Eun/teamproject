<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>[세모]세탁의 모든것</title>

<!-- font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
<!-- resources -->
<link rel="stylesheet" href="/views/resources/css/terms.css"/>
<link rel="stylesheet" href="/common/css/header.css"/>
<link rel="stylesheet" href="/common/css/button.css"/>
<link rel="stylesheet" href="/common/css/footer.css"/>
<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

<!-- 체크박스 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="/admin/js/checkbox.js"></script>

<script language="JavaScript" type="text/JavaScript">

$(document).ready(function(){
	 $("#nextBtn").click(function(){    
         if($("#allcheck").is(":checked") == false){
             alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
             return;
         }else{
             $("#terms_form").submit();
         }
     });    
 });

</script>


</head>
<body>

<jsp:include page="/common/header.jsp"/> 

<div class = "progress-bar">
	<div class = "progress-img"><img src="/views/resources/img/progress-1.png"></div>
	<div class = "progress-text">
		<ul>
			<li><b>이용약관</b></li>
			<li>본인인증</li>
			<li>회원정보</li>
			<li>가입완료</li>
		</ul>
	</div>
</div>
<form action="/views/certificate.jsp" id="terms_form" class="f" >
	<div class="yak">
		<c:forEach var="t" items="${tlist}">
			<div class="yak1">
				<div class="yak2">
					<div id="terms">${t.terms_title}[필수]				
					<input type="button" value=" ▼ " onclick="showYak(this)" id="yakk33">
					</div>
					<div id="check_td">
					동의<input type="checkbox" name="check" id="check1" >
					</div>
				</div>
				<div class="yak33" id="yak3">
					<textarea>${t.terms_content}</textarea>
				</div>
			</div>
		</c:forEach>
		<div class="all_agree">
				<div id="check_td" class="agree">
				전체동의<input type="checkbox" id="allcheck" class="allcheck" name="check"></div>
		</div>

		
		<div class = "btn">
   			<a href="/views/main.jsp" class="action-button shadow animate blue">이전</a>
<!--    			<a href="/views/certificate.jsp" class="action-button shadow animate blue" onClick="check_on();">다음</a> -->
			<input type="button" id="nextBtn" class="action-button shadow animate blue" value="다음"/>
									 
		</div> 
	</div>
</form>
	<script>
		function showYak(e) {
			console.log(e.parentNode.parentNode.parentNode.childNodes[3].childNodes[1]);

			if (e.parentNode.parentNode.parentNode.childNodes[3].childNodes[1].style.display === 'block') {
				e.parentNode.parentNode.parentNode.childNodes[3].childNodes[1].style.display = 'none';
			} else {
				e.parentNode.parentNode.parentNode.childNodes[3].childNodes[1].style.display = 'block';
			}

		}
	</script>


<jsp:include page="/common/footer.jsp"/> 
</body>

</html>