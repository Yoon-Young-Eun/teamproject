<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/cancle_popup.css" />
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
</head>
<body>
	<div class="wrap">
		<div class="del_confirm">
			<div class="cont">주문을 취소하시겠습니까?</div>
			<div class="btn">
				<div class="action-button shadow animate blue y" onclick="">네</div>
				<div class="action-button shadow animate blue"
					onclick="self.close();">아니요</div>
			</div>
		</div>
	</div>
</body>
</html>