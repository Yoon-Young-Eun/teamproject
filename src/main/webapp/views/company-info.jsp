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
<link rel="stylesheet" href="/views/resources/css/company-info.css"/>
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
<div id = "hello">
<img alt="" src="/views/resources/img/info-1.png" style = "width : 100%;">
</div>
<div id = "info">
<img alt="" src="/views/resources/img/info-2.png" style = "width : 100%;">
<div class = "map-wrapper" style = "display:flex; justify-content:center;">
<div id="map" style="width:1000px;height:500px;"></div>
</div>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.51303467960978, 126.93994462752252), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.51303467960978, 126.93994462752252); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
</script>
<img alt="" src="/views/resources/img/info-3.png" style = "width : 100%;">
</div>

<jsp:include page="/common/footer.jsp"/> 

</body>


</html>