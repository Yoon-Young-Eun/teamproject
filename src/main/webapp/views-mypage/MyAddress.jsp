<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<!-- font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
<!-- resources -->
<link rel="stylesheet" href="/views-mypage/resources/css/MyAddress.css"/>
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

<div class = "address-wrapper">
	
	<div class = "address-title">
		<h2>${addressdetail.cm_address_name}</h2>	
	</div>
	<div class = "address-content">
		<div class = "contect">
			<div class = title>연락처</div>
			<div class = content>${addressdetail.cm_phone_number}</div>
		</div>
		<div class = "address1">
			<div class = title>주소</div>
			<div class = content>${addressdetail.cm_address1}</div>
		</div>
		<div class = "address2">
			<div class = title>상세주소</div>
			<div class = content>${addressdetail.cm_address2}</div>
		</div>
		<div class = "passwd">
			<div class = title>공동현관</div>
			<div class = content>${addressdetail.cm_gate_passwd}</div>
		</div>
	</div>
	<div class = "button">
		<button>닫기</button>
		<button>삭제</button>
	</div>
	
</div>
	

</body>
</html>