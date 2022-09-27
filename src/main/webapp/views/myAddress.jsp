<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<!-- font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
<!-- resources -->
<link rel="stylesheet" href="/css/myAddress.css"/>
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

<jsp:include page="/common/logined-header.jsp"></jsp:include> 


<div class = "page-wrapper">
	<!-- 사이드메뉴 -->
	<div class = "sidemenu">
		<jsp:include page="/common/mypageSide.jsp"/>
	</div>
	
	<!-- 본문 제목 -->
	<div class = "content-wrapper">
		<!-- 제목 -->
		<div class = "content-title-wrapper">
			<div class = "content-title">
				<h2>내 주소 관리</h2>
			</div>
			<!-- 소제목 -->
			<div class = "content-subtitle-wrapper">
				<p>&nbsp;</p>
			</div><!-- content-subtitle-wrapper -->
		</div> <!-- content-title-wrapper -->	
	
	<!-- 상세 내용 -->
	<form>
	<div class = "address-wrapper">
		<div class = "address-content">
			<div class = "address-content-title">
				 <p><b>기본주소</b></p>
                 <input type="button" value="주소변경" id="button1" onclick="showPopup();">
			</div>
			<div class = "address-content-content">
			<div class = "address-tel">
				<div class = "title">
					<p id="t_value">연락처</p>
				</div>
				<div class = "content">
					<input type="text" value="${sendCustomer.customer_phone }" id="phone" readonly name="customer_phone">
				</div>
			</div>	
			
			<div class = "address-1">
				<div class = "title">
					<p id="t_value">주소</p>
				</div>
				<div class = "content">
					<input type="text" value="${sendCustomer.customer_address1 }" id="address1" readonly name="customer_address1">
				</div>
			</div>
			
			<div class = "address-2">	
				<div class = "title">
					<p id="t_value">상세주소</p>
				</div>
				<div class = "content">
					 <input type="text" value="${sendCustomer.customer_address2 }" id="address2" readonly name="customer_address2">
				</div>
			</div>
			<div class = "address-passwd">
				<div class = "title">
					<p id="t_value">공동현관</p>
				</div>
				<div class = "content">
					<input type="text" value="${sendCustomer.cm_gate_passwd }" id="gate_pw" readonly name="cm_gate_passwd">
				</div>
			</div>
		</div>
		</div><!-- address-content-->
		<div id="chse" style="display: none">1</div>   
	</div><!-- address-wrapper -->
	</form>
	</div><!-- content-wrapper -->

</div>
  
   
<script type="text/javascript">
  var url="/getmyAddressList.do?customer_no="+${num};
   function showPopup() { 
	   window.open(url, "", "width=720, height=850"); }
   </script>
   
   <script>
$("#chse").on("DOMSubtreeModified",function(){
	console.log("d1");
	setTimeout(() => {
		console.log("d2");
		location.reload();}, 700);
	
})
</script>   
 
</body>

<jsp:include page="../common/footer.jsp"/> 
</body>

</html>
