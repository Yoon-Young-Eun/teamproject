<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="/css/payAddAddress.css">
<link rel="stylesheet" href="/common/css/button.css">


<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
	
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>	
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("b2").value = extraAddr;

                } else {
                    document.getElementById("b2").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                //document.getElementById('searchBar').value = data.zonecode;
                document.getElementById("b2").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("b2").focus();
            }
        }).open();
    }
</script>
	
<title>[세모]세탁의 모든것</title>
</head>
<body>

	<div class="main_text">
    <div class="main_text1">
      배송지 추가
    </div>
    
    <form action="/setAddress.do" method="GET">
    <input type="number" name="customer_no" value="${customer_no}"  id="customnumber" style="display: none">
    <div class="main_text2">	
      <div class="main_text3">
        <input type="text" value="주소이름" id="a1" readonly>
      </div>
      <div class="main_text4">
        <input type="text" value="" id="b1" placeholder="집 / 회사 등" name="cm_address_name"> 
      </div>
    </div>
      <div class="main_text5">
        <div class="main_text3">
          <input type="text" value="우편번호 찾기" id="a2" readonly>
         
        </div>
        <div class="main_text4">
          <input type="text" value="" id="b2" placeholder="우편번호 찾기" readonly name="cm_address1"> 
          <input type="button" value="검색" id="search" onclick="sample6_execDaumPostcode()" readonly class="action-button shadow animate blue" style="padding: 0px; font-size: 15px; width: 70px; height: 35px;">
        </div>
     </div>
     <div class="main_text7">
      <div class="main_text3">
        <input type="text" value="나머지 주소" id="a4" readonly>
      </div>
      <div class="main_text4">
        <input type="text" value="" id="b4" placeholder="나머지 주소 입력" name="cm_address2"> 
      </div>
   </div>
     <div class="main_text6">
      <div class="main_text3">
        <input type="text" value="휴대폰 번호" id="a3" readonly >
      </div>
      <div class="main_text4">
        <input type="text" value="" id="b3" placeholder="휴대폰 번호" name="cm_phone_number" > 
      </div>
     </div>

     <div class="main_text6">
      <div class="main_text3">
        <input type="text" value="현관비밀번호" id="a3" readonly>
      </div>
      <div class="main_text4">
        <input type="text" value="" id="b3" placeholder="현관비밀번호 ex) 종 1234 , #1234" name="cm_gate_passwd">
      </div>
     </div>
     
     

     <div class="main_text8">
      <div class="button1">
        <input type="submit" value="추가하기" id="button1" class="action-button shadow animate blue" style="width: 100px; height: 35px; padding: 0px; margin-top: 5px; font-size: 17px;" >
        <input type="button" value="이전으로" id="button2" class="action-button shadow animate blue" style="width: 100px; height: 35px; padding: 0px; margin-top: 5px; font-size: 17px;" onclick="location.href='/getAddressList.do?customer_no='+cn">
      </div>
     </div>
     </form>
    
    <script>
    var cn = Number(document.getElementById("customnumber").value);
    </script>
    
  </div>
	

</body>
</html>