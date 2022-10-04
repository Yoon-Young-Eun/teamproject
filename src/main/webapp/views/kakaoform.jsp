
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>[세모]세탁의 모든것</title>

<!-- font awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
<!-- resources -->
<link rel="stylesheet" href="/views/resources/css/kakaoform.css" />
<link rel="stylesheet" href="/common/css/button.css" />
<link rel="stylesheet" href="/common/css/header.css" />
<link rel="stylesheet" href="/common/css/footer.css" />
<!-- JQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

</head>


<body>



	<jsp:include page="/common/header.jsp" />

	<div class="progress-bar">
		<div class="progress-img">
			<img src="./resources/img/progress-3.png">
		</div>
		<div class="progress-text">
			<ul>
				<li>이용약관</li>
				<li>본인인증</li>
				<li><b>회원정보</b></li>
				<li>가입완료</li>
			</ul>
		</div>
	</div>

	<form action="/complete.do" method="GET" name = "joinForm"  id = "joinForm" onsubmit="return joinCorrection()">
		<div class="wrapper">
			<div class="sectionInner container">
				<div class="content">
					<table class="tableWrap">
						<tbody class="personalInfo">
							<tr>
								<th class="tableNumber">아이디</th>
								<td class="tableTitle" style="display: flex; align-items: center; margin-left:0px; margin-right:5px;">
								<input class="inputBox" value="K${userInfo}" id="email1" onkeyup="idCheck()" type="text" class="box" name="customer_id" style="width:60%; height: 36px; border-style:none;" readonly>
								 
								
									</td>
							</tr>
							<tr>
								<th class="tableNumber">비밀번호</th>
								<td class="tableTitle"><label for="insertPw"><input
										type="password" id="insertPw" class="inputBox" name = "customer_passwd" name = "customer_passwd"/></label> <span
									class="text">비밀번호는 8자리 이상이며, 숫자와 영문, 특수문자(@,!,#,$,%)를
										혼용해서 입력해주세요.</span> <span id="pwCorrection"></span> <script>
									
									
									</script></td>

							</tr>
							<tr>
								<th class="tableNumber">비밀번호 확인</th>
								<td class="tableTitle"><label for="checkPw"><input
										type="password" id="checkPw" class="inputBox" /></label> <span
									class="text">입력하신 비밀번호를 확인합니다.</span> <span id="pwChecking"></span>
									</td>
							</tr>
							<tr>
								<th class="tableNumber">이름</th>
								<td class="tableTitle"><label for="name"><input
										type="text" id="name" class="inputBox" name = "customer_name"/></label>
										<span id = "nameCheck"></span>
								<td>
							</tr>

							<tr>
								<th class="tableNumber">생년월일</th>
								<td class="tableTitle"><label for="date"><input
										type="date" id="date" class="inputBox" name = "customer_birth"></label>
										<span id = "birthCheck"></span>
										</td>
							</tr>
							<tr>
								<th class="tableNumber">휴대폰</th>
								<td class="tableTitle"><label for="phone"> 
								<input type="tel" class="inputBox" name="customer_phone" id="telInput" required pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}" maxlength="13" placeholder="예) 010-1234-5678" /> 

										</label> 
										
										<span style="margin-left: 25px; margin-right: 10px;">이벤트 수신</span>
										<input type="radio" id="" name="=" checked = "checked" />
										<label for="r1">
										<span></span>동의
										</label>
										<input type="radio" id="" name="=" />
										<label for="r1">
										<span></span>비동의
										</label>
										<br>
										<span id = "phoneCheck"></span>
								</td>

							</tr>
							<tr>
								<th class="tableNumber">우편번호</th>
								<td class="tableTitle">
								<label for="PostalCode">
								<input id = "uupeon" onclick = "findAddr()" type = "text" placeholder="우편번호" readonly class="inputBox" style="width: 30%;" name = "customer_zipcode"/>
								<button id = "uupeon" onclick = "findAddr()" type = "button" >우편번호 찾기</button>
								</label> 
							</tr>
							<tr class="address">
								<th class="tableNumber" style = "border-top:none;">주소</th>
								<td class="tableTitle" style = "border-top : 1px dashed #b6ada8;">
								<label for="address1">
								<input type="text" id="address1" type = "text" class="inputBox" placeholder = "주소" style="width: 70%;" name = "customer_address1" readonly /></label>
								<label for="address2">
								<input type="text" id="address2" class="inputBox" style="width: 70%;" placeholder="나머지 주소를 입력해주세요" name = "customer_address2" /></label>
									
									<br>
									<span id = "addressCheck"></span>
								</td>
							</tr>


						</tbody>
					</table>
				</div>
			</div>
		</div>


		<div class="btn" style = "display : flex; justify-content : center;">
			<a href="certificate.jsp" id = "reset" class="action-button shadow animate blue">이전</a>
			<a type = "submit" id = "Join" class="action-button shadow animate blue" >다음</a>
		</div>
	
	<jsp:include page="../common/footer.jsp" />
	
	
		</form>
<!---------------------- 스트립트 ---------------------->

	
<!-- 아이디 중복 체크 -->
	<script> 	
		function idCheck() {
			var id = $('#email1').val();
			console.log("함수실행");
			$.ajax({
				url : "/idCheck.do",
				type : "get",
				data : {id : id},
				success : function(result) {
					if (result == 0 && id.length > 3) {
						$('#checking').css("color", "green");
						$('#checking').html("사용가능한 아이디입니다.");
					} else if (result == 1 && id.length > 3) {
						$('#checking').css("color", "red");
						$('#checking').html("다른 누군가가 사용한 아이디네요!");
					}
				},
				error : function() {
					$('#checking').html("에러라고 에러 에러 에러났따고 에러")
				}
			});
		};
	</script>

											
<!-- 비밀번호 체크 -->
	<script type="text/javascript">
	$(document).ready(function(){
										
		$('#insertPw').keyup(function(){
												
			var pw = $('#insertPw').val()
			var sc = ["!","@","#","$","%"]
			var check_sc = 0;
													
			for(var i = 0; i < sc.length; i ++){
				if(pw.indexOf(sc[i]) != -1){
				check_sc = 1;
				}
			}
			
			if(pw.length < 8) {
				$('#pwCorrection').css("color", "red");
				$('#pwCorrection').html("비밀번호를 8자 이상 입력해주세요.");
			} else if(pw.length >= 8 && check_sc == 0) {
				$('#pwCorrection').css("color", "red");
				$('#pwCorrection').html("특수문자 입력은 필수입니다.");
			} else {
				$('#pwCorrection').html(" ");
			}
												
		});
											
		$('#checkPw').keyup(function(){
			if($('#insertPw').val() != $('#checkPw').val()){
				$('#pwChecking').css("color", "red");
				$('#pwChecking').html("비밀번호가 일치하지 않습니다. 다시 확인해주세요!");
			}else {
				$('#pwChecking').css("color", "green");
				$('#pwChecking').html("비밀번호가 일치합니다. 회원가입을 계속 진행해주세요!");
			}
		});
										
	});
	</script>

<!-- 전화번호 -->
	<script>
	function autoHypenTel(str) {
		str = str.replace(/[^0-9]/g, '');
		var tmp = '';

		if (str.substring(0, 2) == 02) {
			// 서울 전화번호일 경우 10자리까지만 나타나고 그 이상의 자리수는 자동삭제
			if (str.length < 3) {
				return str;
			} else if (str.length < 6) {
				tmp += str.substr(0, 2);
				tmp += '-';
				tmp += str.substr(2);
				return tmp;
			} else if (str.length < 10) {
				tmp += str.substr(0, 2);
				tmp += '-';
				tmp += str.substr(2, 3);
				tmp += '-';
				tmp += str.substr(5);
				return tmp;
			} else {
				tmp += str.substr(0, 2);
				tmp += '-';
				tmp += str.substr(2, 4);
				tmp += '-';
				tmp += str.substr(6, 4);
				return tmp;
			}
		} else {
			// 핸드폰 및 다른 지역 전화번호 일 경우
			if (str.length < 4) {
			return str;
			} else if (str.length < 7) {
				tmp += str.substr(0, 3);
				tmp += '-';
				tmp += str.substr(3);
				return tmp;
			} else if (str.length < 11) {
				tmp += str.substr(0, 3);
				tmp += '-';
				tmp += str.substr(3, 3);
				tmp += '-';
				tmp += str.substr(6);
				return tmp;
			} else {
				tmp += str.substr(0, 3);
				tmp += '-';
				tmp += str.substr(3, 4);
				tmp += '-';
				tmp += str.substr(7);
				return tmp;
			}
		}
	};

	$('#telInput').keyup(function(event) {
		event = event || window.event;
		var _val = this.value.trim();
		this.value = autoHypenTel(_val);
	});
	</script>

<!-- 주소 검사 -->
	<script>
	function findAddr(){
		new daum.Postcode({
			oncomplete: function(data) {
										        	
				console.log(data);
											        	
				 // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				 // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
				 // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				 var roadAddr = data.roadAddress; // 도로명 주소 변수
				 var jibunAddr = data.jibunAddress; // 지번 주소 변수
				 // 우편번호와 주소 정보를 해당 필드에 넣는다.
				 document.getElementById('uupeon').value = data.zonecode;
				 if(roadAddr !== ''){
						document.getElementById("address1").value = roadAddr;
				 } else if(jibunAddr !== ''){
						document.getElementById("address2").value = jibunAddr;
				 }
			 }
		}).open();
	}
</script>	
									
									
<!-- 회원 정보 유효성 검사 -->
<script>

	$('#Join').click(function(){
		var joinForm = document.joinForm;
		
		var id = $('#email1').val();
		var passwd = $('#insertPw').val();
		var check_passwd = $('#checkPw').val();
		var name = $('#name').val();
		var birth = $('#date').val();
		var zipcode = $('#address1').val();
		var address = $('#address2').val();
		
		console.log("회원가입 유효성 실행");
		
		if (id == "" || id == null) {
			$('#checking').css("color", "red");
			$('#checking').html("아이디를 입력해주세요.");
			$('#email1').focus();
			return false;
		} else if (passwd == "" || passwd == null) {
			$('#pwCorrection').css("color", "red");
			$('#pwCorrection').html("비밀번호를 입력해주세요.");
			$('#insertPw').focus();
			return false;
		} else if (check_passwd == "" || check_passwd == null) {
			$('#pwChecking').css("color", "red");
			$('#pwChecking').html("비밀번호를 확인해주세요.");
			$('#checkPw').focus();
			return false;
		} else if (name == "" || name == null){
			$('#nameCheck').css("color", "red");
			$('#nameCheck').html("이름을 입력해주세요.");
			$('#name').focus();
			return false;
		} else if (birth == "" || birth == null) {
			$('#birthCheck').css("color", "red");
			$('#birthCheck').html("생년월일을 입력해주세요.");
			$('#date').focus();
			return false;
		}  else if ($('#telInput').val() == "" || $('#telInput').val() == null) {
			$('#phoneCheck').css("color", "red");
			$('#phoneCheck').html("전화번호를 입력해주세요.");
			$('#telInput').focus();
			return false;
		} else if (zipcode == "") {
			$('#addressCheck').css("color", "red");
			$('#addressCheck').html("우편번호 찾기를 실행해주세요.");
			$('#telInput').focus();
			return false;
		} else if (address == "") {
			$('#addressCheck').css("color", "red");
			$('#addressCheck').html("상세주소를 입력해주세요.");
			$('#telInput').focus();
			return false;
			
		}
			joinForm.submit();
		
		
	});
	
	</script>

</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</html>