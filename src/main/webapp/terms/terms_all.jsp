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
<link rel="stylesheet" href="/css/terms_all.css"/>

<!-- fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

<script src="/js/jquery-3.6.0.min.js"></script>
</head>
<body>

<div class="main">
<c:forEach var="terms" items="${TermsList}">
<h1>
${terms.terms_title}
</h1>
<br>
<textarea disabled>${terms.terms_content}</textarea><br><br>
</c:forEach>
</div>

<div class="moveTopBtn">&#128580;</div>
<input type="button" value="닫기"  onClick="window.close()">
<script>
$(document).ready(function() {
	  $('textarea').on( 'keyup', function (e){
	    $(this).css('height', 'auto');
	    $(this).height(this.scrollHeight);
	  });
	  $('textarea').keyup();
	});
</script>
<script>
const $topBtn = document.querySelector(".moveTopBtn");
//버튼 클릭 시 맨 위로 이동
$topBtn.onclick = () => {
window.scrollTo({ top: 0, behavior: "smooth" });  
}
const $bottomBtn = document.querySelector(".moveOrderBtn");
</script>


</body>
</html>