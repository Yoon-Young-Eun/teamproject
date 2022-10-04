<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="./resources/css/signup.css" rel="stylesheet" />
<link rel="stylesheet" href="/css/MyInfoModification.css" />
<link rel="stylesheet" href="/common/css/header.css" />
<link rel="stylesheet" href="/common/css/footer.css" />
<link rel="stylesheet" href="/common/css/button.css" />
<link rel="stylesheet" href="/common/css/sidebar.css" />

<!-- 폰트 -->
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

<title>SEMO-MyPage</title>
</head>
<body>

	<div class="whole-wrapper">
		<jsp:include page="/common/logined-header.jsp"></jsp:include>
		<div class="main">
			<div class="space_left">
				<jsp:include page="/common/mypageSide.jsp" />
			</div>
			<form action="/updateCustomer.do" name="UpdateForm" id="form" onsubmit="chkPW()">
			<jsp:include page = "/common/quick-menu.jsp"/>

			<input type="hidden" name="customer_no" value="${info.customer_no}">
			<div class="main_text">
				<div class="MyInfo_title">
					<h1>내 정보 수정</h1>
				</div>

				<div class="wrapper">
			<div class="sectionInner container">
				<div class="content">
					<table class="tableWrap">
						<tbody class="personalInfo">
							<tr>
								
								<th class="tableNumber">이메일</th>
								<td class="tableTitle">${info.customer_id }</td>
							</tr>
							<tr>
								<th class="tableNumber">비밀번호</th>
								<td class="tableTitle"><label for="insertPw">
								<input type="password" id="insertPw" class="inputBox pass" name = "customer_passwd" value="${pw.customer_passwd}" /></label>
								 <span class="text">비밀번호는 8자리 이상이며, 숫자와 영문, 특수문자(@,!,#,$,%)를
										혼용해서 입력해주세요.</span> <span id="pwCorrection"></span> <script>
									
									
									</script></td>

							</tr>
							<tr>
								<th class="tableNumber">비밀번호 확인</th>
								<td class="tableTitle"><label for="checkPw">
								<input type="password" id="checkPw" class="inputBox repass" value="${pw.customer_passwd}" /></label> 
										<span class="text">입력하신 비밀번호를 확인합니다.</span> <span id="pwChecking"></span>
									</td>
							</tr>
							<tr>
								<th class="tableNumber">이름</th>
								<td class="tableTitle">${info.customer_name }

							</tr>

							<tr>
								<th class="tableNumber">생년월일</th>
								<td class="tableTitle">${info.customer_birth }
										</td>
							</tr>
							<tr>
								<th class="tableNumber">휴대폰</th>
								<td class="tableTitle"><label for="phone"> 
								<input type="tel" class="inputBox" name="customer_phone" id="telInput" required pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}" maxlength="13" placeholder="예) 010-1234-5678" value="${info.customer_phone }"/> 
										</label> 
										
										<span id = "phoneCheck"></span>
								</td>

							</tr>

							<tr class="address">
								<th class="tableNumber" style = "border-top:none;">주소</th>
								<td class="tableTitle" style = "border-top : 1px dashed #b6ada8;">
								<div id="address1" class="inputBox" style="width: 70%;" name = "customer_address1" >${info.customer_address1 }</div>
								<div id="address2" class="inputBox" style="width: 70%;" name = "customer_address2" >${info.customer_address2 }</div>
								<span class="text" style=color:red;">주소는 내 주소관리 메뉴에서 변경가능합니다.</span>
								</td>
							</tr>


						</tbody>
					</table>
				</div>
			</div>
		</div>

					<div class="end_btn">
						<input type="submit" id="Update" class="action-button shadow animate blue " value="수정"/>
						<div class="action-button shadow animate blue" id="bye">탈퇴</div>
						<div class="action-button shadow animate blue" onclick="window.location='/mypage.do'">메인</div>
					</div>
				</div>
				
				</form>
			</div>
			<div class="space_right"></div>
		</div>
		
<!---------------------- 스트립트 ---------------------->

<script>

$(document).ready(function () {
    $("#bye").click(function () {
        Swal.fire({
            text: "정말 탈퇴하시겠습니까?", 
            icon: 'warning', // 아이콘 무늬
            showCancelButton: true, // 취소버튼 보일건지
            confirmButtonColor: '#d33', // 확인 버튼 색상
            cancelButtonColor: '#3085d6', // 취소 버튼 색상
            confirmButtonText: '예', // confirm 버튼의 text 를 나는 예로!
            cancelButtonText: '아니오' // cancel 버튼의 text 를 나는 아니오로!
        }).then((result) => { // 여기서 고른 결과가 result 이고
            if (result.isConfirmed) { // 만약에 result 의 값이 isConfirmed(예) 라면
               Swal.fire({
                   text: "메인페이지로 되돌아갑니다.", // 내가 띄워줄 text 내용
                   icon: "success", // 그에 맞는 아이콘 무늬 
                   showConfirmButton: false, // Confirm 버튼을 보여줄 것인지? -> 나는 false 로 값이 안나타나고 바로 로딩돼서 없어지도록 만들어줬어!
                   timer: 5000, // 타이머 걸어둬서 1.5초 지나면 바로 modal 없어지지롱
                })
                location.href="/deleteCustomer.do?customer_no=${info.customer_no}"; // 이건 내가 어느 주소로 보내줄건지
            }else if(result.isDismissed){ // 만약에 result 를 아니오로 선택한 경우에는
               return false; // false 로 아무것도 안해줌!
            }
        })
    });
});
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
				$('#pwChecking').html("비밀번호가 일치합니다.");
			
			}
		});
										
	});
	</script>
	
	<!-- 회원 정보 유효성 검사 -->
<script>

	$('#Update').click(function(){
		var UpdateForm = document.UpdateForm;
		var passwd = $('#insertPw').val();
		var check_passwd = $('#checkPw').val();

		
		console.log("정보수정 유효성 실행");

		if(passwd.trim() != check_passwd.trim()){
		    alert("비밀번호를 동일하게 입력해주세요.");
		    return false;
		}else{
		form.submit();
		}
		
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
									
									

	

	
</body>
<jsp:include page="/common/footer.jsp" />
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</html>