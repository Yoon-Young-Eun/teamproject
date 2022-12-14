<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>[세모]세탁의 모든것</title>

<!-- font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
<!-- resources -->
<link rel="stylesheet" href="/views-menu/resources/css/how_to.css"/>
<link rel="stylesheet" href="/common/css/header.css"/>
<link rel="stylesheet" href="/common/css/button.css"/>
<link rel="stylesheet" href="/common/css/footer.css"/>
<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<!-- map api -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=23ba625f7534454f4f7553b3ef9cfd1c"></script>
</head>
<body>

<%-- <jsp:include page="/common/logined-header.jsp"/> --%>

<form action="/login.do">
<div id = "header">
<script>
$(function(){
	
	var id = "${id}";
	
	if (id == ""){
		$('#header').load("/common/header.jsp");
	} else {
		$('#header').load("/common/logined-header.jsp");
	}
	

});
</script>
</div>
</form>
<jsp:include page = "/common/quick-menu.jsp"/>
<div class = "wrapper" style = "margin-top : 100px;">

<div id = "howto" class = "howto">
<img alt="" src="/views-menu/resources/img/howto1.png">
<img alt="" src="/views-menu/resources/img/howto2.png">
<img alt="" src="/views-menu/resources/img/howto3.png">
<img alt="" src="/views-menu/resources/img/howto4.png">
<img alt="" src="/views-menu/resources/img/howto5.png">
<img alt="" src="/views-menu/resources/img/howto6.png">
<img alt="" src="/views-menu/resources/img/howto7.png">
<img alt="" src="/views-menu/resources/img/howto8.png">
</div>
<div id = "delivery" class = "delivery">
<img alt="" src="/views-menu/resources/img/del1.png">
<img alt="" src="/views-menu/resources/img/del2.png">
<img alt="" src="/views-menu/resources/img/del3.png">
<img alt="" src="/views-menu/resources/img/del4.png">
<img alt="" src="/views-menu/resources/img/del5.png">
</div>
</div>
<jsp:include page="/common/footer.jsp"/> 
</body>
</html>