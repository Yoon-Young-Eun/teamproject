<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

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

function check_on() {
	var from=document.chek;
	var checkCount = 0;
	for (i=0; i<from.check1.length; i++) {
	if(from.check1[i].checked==true) {
	checkCount++;
	}
	}
	if(checkCount==0) {
	alert('체크상자 선택해주세요');
	return false;
	}
	}
	</script>
	<script language="JavaScript">
	<!-- 체크폼
	function check_it() {
	var from=document.chek;
	if(from.result.checked==true){
	for (i=0; i<from.check1.length; i++) {
	from.check1[i].checked = true;
	}
	} else {
	for (i=0; i<from.check1.length; i++) {
	from.check1[i].checked =false;
	}
	}

	}
</script>
<form action="list.php" method="post" name="chek" id="chek">
<input name="result" type="checkbox" id="result" onclick="check_on();">
<input type="checkbox" name="check1[]" id="check1" value="1">
<input type="checkbox" name="check1[]" id="check1" value="2">
<input type="checkbox" name="check1[]" id="check1" value="3">
</form>

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

	<div class="yak">
		<c:forEach var="t" items="${tlist}">
			<div class="yak1">
				<div class="yak2">
					<div id="terms">${t.terms_title}[필수]				
					<input type="button" value=" ▼ " onclick="showYak(this)" id="yakk33">
					</div>
					<div id="check_td">
					동의<input type="checkbox" name="check1[]" id="check1" >
					</div>
				</div>
				<div class="yak33" id="yak3">
					<textarea>${t.terms_content}</textarea>
				</div>
			</div>
		</c:forEach>
		<div class="all_agree">
				<div id="check_td" class="agree">
				전체동의<input type="checkbox" name="check1[]" id="check1" class="allcheck"></div>
		</div>

		
		<div class = "btn">
   			<a href="/views/main.jsp" class="action-button shadow animate blue">이전</a>
   			<a href="/views/certificate.jsp" class="action-button shadow animate blue" onClick="check_on();">다음</a>

									 
		</div> 
	</div>

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