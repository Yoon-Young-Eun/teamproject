<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="/css/payAddressList.css">
<link rel="stylesheet" href="/common/css/button.css">


<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<title>Document</title>
</head>
<body>
	<div class="main_box">

		<%-- <c:forEach var="address" items=${addressList}">
			<tr>
				
				<td>${address.cm_address1}</td>
				<td>${address.cm_address2}</td>
				<td>${address.cm_address_name}</td>
				<td>${address.cm_gate_passwd}</td>
				<td>${address.customer_no}</td>
			</tr>
		</c:forEach> --%>


		<div class="main_text2">
			<div class="address1">주소록</div>
			
			
			<input type="text" value="${customer_no}" name="customer_no" style="display: none" id="customerNum">
			
			
			<c:forEach var="address" items="${AddressList}">
			
			<input type="text" value="${address.customer_no }" name="customer_no" style="display: none" id="customerNumer">
			<input type="text" value="${address.cm_address_no }" name="cm_address_no" style="display: none">
			<div class="address2">
				
				<%-- <input type="number" value="${address.cm_customer_no}"> --%>
				<div class="line">
					<div class="address3">
						<div class="aa">
							<input type="text" value="${address.cm_address_name}" id="ad2" readonly name="cm_address_name">

						</div>
						<div class="button1">
							<input type="button" value="주소지선택" id="button2"
								onclick="setParentText(this); location.href='/updateCustomerAddress.do?'"
								class="action-button shadow animate blue"
								style="width: 100px; height: 30px; margin: 0px; padding: 0px; font-size: 15px;">
						</div>
					</div>
					<div class="address4">
						연락처 :<input type="text" id="phone" value="${address.cm_phone_number}" readonly name="cm_phone_number">
					</div>
					<div class="first_address">
						주소 : <input type="text" id="address1-1" value="${address.cm_address1}" name="cm_address1"
							readonly>
					</div>
					<div class="second_address">
						나머지주소:<input type="text" id="address1-2" value="${address.cm_address2}" name="cm_address2"
							readonly>
					</div>
					<div class="address5">
						출입비밀번호:<input type="text" id="password" value="${address.cm_gate_passwd}" name="cm_gate_passwd"> 
						<div class="button3">
							<input type="button" value="수정" id="button3" 
								class="action-button shadow animate blue" id="abc123"
								style="padding: 0px; font-size: 15px; width: 100px; height: 25px;" onclick="location.href='/sendAddressList.do?cm_address_no=${address.cm_address_no}'">
							<input type="button" value="삭제" id="button4"
								class="action-button shadow animate blue" onclick="location.href='/deleteAddressList.do?cm_address_no=${address.cm_address_no}&customer_no=${address.customer_no}'"
								style="padding: 0px; font-size: 15px; width: 100px; height: 25px;">
						</div>
					</div>
					
			</div>
			</div>
			
			</c:forEach>
		
			
		</div>
	</div>

	<div class="add_button">
	<%-- <input type="text" value="${addressList.customer_no }"> --%>
		<input type="button" id="add_button1" value="+ 주소지 추가하기" 
			onclick="location.href='/getAddressList1.do?customer_no='+${customer_no}"
			class="action-button shadow animate blue"
			style="margin: 0px; font-size: 25px; height: 60px; width: 300px;">
			
			
	</div>
	
	</div>
	<script type="text/javascript">
        function setParentText(e){
        	console.log(e.parentNode.parentNode.parentNode.childNodes[9].childNodes[1]);
        	var addressname=e.parentNode.parentNode.parentNode.childNodes[1].childNodes[1].childNodes[1];
          opener.document.getElementsByClassName("name_address1")[0].innerText = e.parentNode.parentNode.childNodes[1].childNodes[1].value
          opener.document.getElementsByClassName("phone9")[0].innerText = e.parentNode.parentNode.parentNode.childNodes[3].childNodes[1].value
          opener.document.getElementsByClassName("address_2")[0].innerText =e.parentNode.parentNode.parentNode.childNodes[5].childNodes[1].value
          opener.document.getElementsByClassName("address_4")[0].innerText = e.parentNode.parentNode.parentNode.childNodes[7].childNodes[1].value
          opener.document.getElementsByClassName("address_pass2")[0].innerText =e.parentNode.parentNode.parentNode.childNodes[9].childNodes[1].value
          window.close();
        }
      </script>
      <script>
      var cn = Number(document.getElementById("customNumber").value);
      </script>
</body>




</html>