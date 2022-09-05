<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
<title>SEMO-MyPage</title>
<link rel="stylesheet" href="/css/MyQnA_write.css" />
<link rel="stylesheet" href="/common/css/header.css" />
<link rel="stylesheet" href="/common/css/footer.css" />
<link rel="stylesheet" href="/common/css/button.css" />
<link rel="stylesheet" href="/common/css/sidebar.css" />

<!-- 폰트 -->
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- <script type="text/javascript" src="/js/fileupload.js"></script> -->

</head>

<body>


			<jsp:include page="/common/header.jsp"></jsp:include>

			<!-- -본문- -->
			<div class="whole-wrapper">
			<div class="main">
				<jsp:include page="/common/mypageSide.jsp" />

				<div class="main_text">
					<div class="main_text1">내 문의 내역</div>

					<div class="main_text2">* 필수항목입니다.</div>
					<div class="main_content">
						<div class="type1">
							<div class="type_title">
								분류 <span id="span1">*</span>
							</div>
							<div class="type2">
								<div class="type_Choice">

									<input type="radio" name="choice"> <label>문의 및
										제안</label>
								</div>
								<div class="type_Choice1">

									<input type="radio" name="choice"> <label>서비스
										불만족</label>
								</div>
							</div>
						</div>

						<div class="main_text3">
							<div class="type_title1">
								작성자 <span id="span1">*</span>
							</div>
							<div class="name">
								<input type="text" readonly id="textbar1">
							</div>
						</div>

						<div class="main_text3">
							<div class="type_title1">
								휴대전화 <span id="span1">*</span>
							</div>
							<div class="name">
								<input type="text" readonly id="textbar1">
							</div>
						</div>

						<div class="main_text3">
							<div class="type_title1">
								이메일 <span id="span1">*</span>
							</div>
							<div class="name">
								<input type="text" readonly id="textbar1">
							</div>
						</div>

						<div class="main_text3">
							<div class="type_title1">
								제목 <span id="span1">*</span>
							</div>
							<div class="name">
								<input type="text" readonly id="textbar1">
							</div>
						</div>

						<div class="main_text4">
							<div class="type_title1">
								내용 <span id="span1">*</span>
							</div>
							<div class="name">
								<textarea id="write_area"></textarea>
							</div>
						</div>

						<!-- 						<div class="main_text5"> -->
						<!-- 							<div class="type_title1">파일첨부</div> -->
						<!-- 							<div class="name"> -->
						<!-- 								<input type="file" id="textbar2" style=“width:100px; display:inline-block;”> -->
						<!-- 							</div> -->
						<!-- 						</div> -->
						<div class="file_wrap">
							<input type="file" name="file" accept="*" id="bizFile" />
							<div class="main_text3 mg">
								<div class="type_title1">
									<label for="bizFile" id="label1">파일 업로드</label>
								</div>
								<div class="name">
									<span id="textbar1" style="align-items: center; display: flex;">선택된
										파일없음</span>
								</div>

								<script>
									document
											.getElementById("bizFile")
											.addEventListener(
													"change",
													function() {
														var filename = document
																.getElementById("fileName");
														if (this.files[0] == undefined) {
															filename.innerText = "선택된 파일없음";
															return;
														}
														var size = this.files[0].size;
														if (size > 1024 * 1024 * 5) {
															alert("첨부 파일은 5M를 초과 할 수 없습니다.");
															return false;
														}
														filename.innerText = this.files[0].name;
													});
								</script>
							</div>
						</div>
					</div>


					<div class="end_btn">
						<a href="#" class="action-button shadow animate blue">저장</a> <a
							href="MyQnA.jsp" class="action-button shadow animate blue">목록</a>
					</div>
				</div>

			</div>

		</div>
</body>

<jsp:include page="/common/footer.jsp" />
</html>