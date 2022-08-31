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

<!-- 팝업 -->
<script language="javascript">
	function showPopup() {
		window.open("unregister_popup.jsp", "탈퇴확인",
				"width=350, height=200, left=570, top=300, resizeable=no");
	}
</script>

<title>SEMO-MyPage</title>
</head>
<body>

	<div class="whole-wrapper">
		<jsp:include page="/common/header.jsp"></jsp:include>
		<div class="main">
			<div class="space_left">
				<jsp:include page="/common/mypageSide.jsp" />
			</div>
			<div class="main_text">
				<div class="MyInfo_title">
					<h1>내 정보 수정</h1>
				</div>

				<!-- 회원가입 -->
				<div class="sectionInner container">
					<div class="content">
						<table class="tableWrap">
							<tbody class="personalInfo">
								<tr>
									<th class="tableNumber">아이디</th>
									<td class="tableTitle"><label for="checkId"> <input
											class="inputBox" id="email1" type="text" class="box"
											style="width: 25%;"> @  <input class="inputBox"
											id="email2" type="text" class="box" style="width: 25%;">
											<script>
												$(function() {
													$(document)
															.ready(
																	function() {
																		$(
																				'select[name=emailSelection]')
																				.change(
																						function() {
																							if ($(
																									this)
																									.val() == "1") {
																								$(
																										'#email2')
																										.val(
																												"");
																							} else {
																								$(
																										'#email2')
																										.val(
																												$(
																														this)
																														.val());
																								$(
																										"#email2")
																										.attr(
																												"readonly",
																												true);
																							}
																						});
																	});
												});
											</script></td>
								</tr>
								<tr>
									<th class="tableNumber">비밀번호</th>
									<td class="tableTitle"><label for="insertPw"><input
											type="password" id="insertPw" class="inputBox" /></label> <span
										class="text">비밀번호는 8자리 이상이며, 숫자영문 혼용은 필수입니다.</span></td>
								</tr>
								<tr>
									<th class="tableNumber">비밀번호 확인</th>
									<td class="tableTitle"><label for="checkPw"><input
											type="password" id="checkPw" class="inputBox" /></label> <span
										class="text">입력하신 비밀번호를 확인합니다.</span></td>
								</tr>
								<tr>
									<th class="tableNumber">이름</th>
									<td class="tableTitle"><label for="name"><input
											type="text" id="name" class="inputBox" /></label>
									<td>
								</tr>

								<tr>
									<th class="tableNumber">생년월일</th>
									<td class="tableTitle"><label for="date"><input
											type="date" id="date" class="inputBox"></label></td>
								</tr>
								<tr>
									<th class="tableNumber">휴대폰</th>
									<td class="tableTitle"><label for="phone"> <input
											type="tel" class="inputBox" name="tel" id="telInput" required
											pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}" maxlength="13"
											placeholder="예) 010-1234-5678" /> <script>
												function autoHypenTel(str) {
													str = str.replace(
															/[^0-9]/g, '');
													var tmp = '';

													if (str.substring(0, 2) == 02) {
														// 서울 전화번호일 경우 10자리까지만 나타나고 그 이상의 자리수는 자동삭제
														if (str.length < 3) {
															return str;
														} else if (str.length < 6) {
															tmp += str.substr(
																	0, 2);
															tmp += '-';
															tmp += str
																	.substr(2);
															return tmp;
														} else if (str.length < 10) {
															tmp += str.substr(
																	0, 2);
															tmp += '-';
															tmp += str.substr(
																	2, 3);
															tmp += '-';
															tmp += str
																	.substr(5);
															return tmp;
														} else {
															tmp += str.substr(
																	0, 2);
															tmp += '-';
															tmp += str.substr(
																	2, 4);
															tmp += '-';
															tmp += str.substr(
																	6, 4);
															return tmp;
														}
													} else {
														// 핸드폰 및 다른 지역 전화번호 일 경우
														if (str.length < 4) {
															return str;
														} else if (str.length < 7) {
															tmp += str.substr(
																	0, 3);
															tmp += '-';
															tmp += str
																	.substr(3);
															return tmp;
														} else if (str.length < 11) {
															tmp += str.substr(
																	0, 3);
															tmp += '-';
															tmp += str.substr(
																	3, 3);
															tmp += '-';
															tmp += str
																	.substr(6);
															return tmp;
														} else {
															tmp += str.substr(
																	0, 3);
															tmp += '-';
															tmp += str.substr(
																	3, 4);
															tmp += '-';
															tmp += str
																	.substr(7);
															return tmp;
														}
													}

													return str;
												}

												$('#telInput')
														.keyup(
																function(event) {
																	event = event
																			|| window.event;
																	var _val = this.value
																			.trim();
																	this.value = autoHypenTel(_val);
																});
											</script></label></td>
								</tr>
								<tr>
									<th class="tableNumber">우편번호</th>
									<td class="tableTitle"><label for="PostalCode"><input
											type="text" id="PostalCode" class="inputBox"
											style="width: 30%;" /></label> <a href="#" class="btn01">우편번호 검색</a></td>
								</tr>
								<tr class="address">
									<th class="tableNumber">주소</th>
									<td class="tableTitle"><label for="address1"><input
											type="text" id="address1" class="inputBox"
											style="width: 70%;" /></label> <label for="address2"><input
											type="text" id="address2" class="inputBox"
											style="width: 70%;" placeholder="나머지 주소를 입력해주세요" /></label></td>
								</tr>


							</tbody>
						</table>
					</div>

					<div class="end_btn">
						<div class="action-button shadow animate blue mo">수정</div>
						<div class="action-button shadow animate blue dro"
							onclick="showPopup();">탈퇴</div>
						<div class="action-button shadow animate blue mai">메인</div>
					</div>
				</div>
			</div>
			<div class="space_right"></div>
		</div>
	</div>
</body>
<jsp:include page="/common/footer.jsp" />
</html>