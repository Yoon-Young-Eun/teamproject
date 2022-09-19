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
</head>
<body>

<form action="/getRefund.do" method="get">
<input type="hidden" value="4" name="order_no">
<input type="hidden" value="${PayInfo.imp_uid}" name="imp_uid">
${PayInfo.merchant_uid}
<input type="submit" value="환불">
</form>

</body>
</html>