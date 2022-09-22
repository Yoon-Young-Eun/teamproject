<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script><!-- jQuery CDN --->
 <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js">
 </script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/refund2.css"/>
</head>
<body>

<div class="moveTopBtn">TOP</div>
<div class="moveOrderBtn">예약</div>

<form action="/getRefund.do" onsubmit="return confirm('정말 취소하시겠습니까?');" method="get">
<input type="hidden" value="${PayInfo.imp_uid}" name="imp_uid">
${PayInfo.order_no}

${PayInfo.imp_uid}

<input type="submit" value="환불">
</form>
<br><br><br><br><br>
<img src="/image/oh_whale.jpg">
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<img src="/image/oh_whale.jpg">
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<img src="/image/oh_whale.jpg">
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<img src="/image/oh_whale.jpg">
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<img src="/image/oh_whale.jpg">

<script>
const $topBtn = document.querySelector(".moveTopBtn");

//버튼 클릭 시 맨 위로 이동
$topBtn.onclick = () => {
window.scrollTo({ top: 0, behavior: "smooth" });  
}
const $bottomBtn = document.querySelector(".moveOrderBtn");

//버튼 클릭 시 주문 페이지로 이동
$bottomBtn.onclick = () => {
	window.location.href = '/pay/payUseText.jsp';
}
</script>
</body>
</html>