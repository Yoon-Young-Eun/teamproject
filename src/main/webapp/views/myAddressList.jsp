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
<title>[세모]세탁의 모든것</title>
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
			
			
			<c:forEach var="address" items="${AddressList}" begin="0" end="3">
			
			
			<input type="text" value="${address.customer_no }" name="customer_no" style="display: none" id="customerNumer">
			<input type="text" value="${address.cm_address_no }" name="cm_address_no" style="display: none">
			<div class="address2">
				
				<%-- <input type="number" value="${address.cm_customer_no}"> --%>
				<div class="line">
					<div class="address3" style="height: 30px;">
						<div class="aa">
							<input type="text" value="${address.cm_address_name}" id="ad2" readonly name="cm_address_name">

						</div>
						<div class="button1" >
							
								<input type="button" value="기본주소지등록" id="button5" onclick="F5(${address.cm_address_no},${address.customer_no},this)"
								class="action-button shadow animate blue" 
								style="width: 150px; height: 25px; margin-bottom: 12px; padding: 0px; font-size: 13px; margin-left:5px;"
								>
							
								
						</div>
					</div>
					<div class="address4" style="height:30px;">
						연락처 :<input type="text" id="phone" value="${address.cm_phone_number}" readonly name="cm_phone_number">
					</div>
					<div class="first_address" style="height:30px;">
						주소 : <input type="text" id="address1-1" value="${address.cm_address1}" name="cm_address1"
							readonly style="width:400px;">
					</div>
					<div class="second_address" style="height:30px;">
						나머지주소:<input type="text" id="address1-2" value="${address.cm_address2}" name="cm_address2"
							readonly>
					</div>
					<div class="address5" style="height:30px;">
						출입비밀번호:<input type="text" id="password" value="${address.cm_gate_passwd}" name="cm_gate_passwd" readonly> 
						<div class="button3">
							<input type="button" value="수정" id="button3" 
								class="action-button shadow animate blue" id="abc123"
								style="padding: 0px; font-size: 10px; width: 100px; height: 20px; margin-bottom:30px;" onclick="location.href='/sendmyAddressList.do?cm_address_no=${address.cm_address_no}'">
							<input type="button" value="삭제" id="button4"
								class="action-button shadow animate blue" onclick="location.href='/deletemyAddressList.do?cm_address_no=${address.cm_address_no}&customer_no=${address.customer_no}'"
								style="padding: 0px; font-size: 10px; width: 100px; height: 20px; margin-bottom:30px;">
						</div>
					</div>
					
			</div>
			</div>
	
			 <script>

      
      </script>
     
    
     
			
			
			</c:forEach>
		
			
		</div>
	</div>
	<div class="d" style="display: flex; justify-content: center;">※ 주소지는 최대 4개까지 등록이 가능합니다.</div>
	<div class="add_button">
	<%-- <input type="text" value="${addressList.customer_no }"> --%>
		<input type="button" id="add_button1" value="+ 주소지 추가하기" 
			onclick="location.href='/getmyAddressList1.do?customer_no='+${customer_no}"
			class="action-button shadow animate blue"
			style="margin: 0px; font-size: 25px; height: 60px; width: 300px;">
			
		
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
    
    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <script>
    function F5(cm_address_no,customer_no,e){
    	console.log(cm_address_no,customer_no);
    	console.log($(e));
    	opener.document.getElementById("chse").innerText=Number(opener.document.getElementById("chse").innerText)+1;
    	location.href=`/updatemyAddress.do?cm_address_no=`+cm_address_no+`&customer_no=${customer_no}`;
    	
    	//window.opener.location.reload();
    	
    	
    }
   
    
    </script>
    
      		
</body>




</html>