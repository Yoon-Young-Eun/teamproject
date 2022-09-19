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
<link rel="stylesheet" href="/views-mypage/resources/css/MyAddresslist.css"/>
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

<jsp:include page="/common/logined-header.jsp"/> 

<div class = "page-wrapper">
	
	<!-- 사이드메뉴 -->
	<div class = "sidemenu">
	<jsp:include page="/common/mypageSide.jsp"/>
	</div>

	<!-- 본문 -->
	<div class = "content-wrapper">
	
		<!-- 제목 -->
		<div class = "content-title-wrapper">
			<div class = "content-title">
				<h2>내 주소 관리</h2>
			</div>
			<!-- 소제목 -->
			<div class = "content-subtitle-wrapper">
				<p>총 <b>2</b>개의 주소지</p>
				<!-- 추가/삭제버튼 -->
				<div class = "button">
					<button>추가</button>
					<button>삭제</button>
				</div>
			</div><!-- content-subtitle-wrapper -->
		</div><!-- content-title-wrapper -->
		
		<!-- 주소지 목록 -->
		<c:forEach var="addresslist" items="${addresslist}">
		<div class = "address-wrapper">
			<table>
				<thead class = "address-body-title">
					<tr>
						<th class = "check-title" style = "width : 10%; text-align : center;"><input type = "checkbox" /></th>
						<th class = "address-title" style = "width : 10%; text-align : center;">번호</th>
						<th class = "address-title" style = "width : 80%; text-align : center;">주소</th>
					</tr>
				</thead>
				<tbody class = "address-body-content">
					<tr>
						<td class = "check-content" style = "width : 10%; text-align : center;"><input type = "checkbox" /></td>
						<td class = "address-title" style = "width : 10%; text-align : center;">${addresslist.cm_address_no}</td>
						<td class = "address-title" id = "address" style = "width : 80%; text-align : center; cursor:pointer;">
							<a href = "/addressdetail.do?cm_address_no=${addresslist.cm_address_no}">${addresslist.cm_address1 } ${addresslist.cm_address2 }</a>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		</c:forEach>
		<!-- 기본주소지로 등록 버튼 -->
		<div class = "make-default">
		<a href="#" class="action-button shadow animate blue" style = "width : 140px; text-align : center; font-size : 16px;" >기본 주소지로 등록</a>
		</div>
	</div>
</div>

<!-------------------- 스크립트 -------------------->

<!-- 상세주소 팝업창 -->
<script>
	function go_pop(){
		window.open("/views-mypage/MyAddress.jsp","Adress","width=500, height=500, resizable=no, status=no, location=no, directories=no;");
	}
</script>

</body>
</html>