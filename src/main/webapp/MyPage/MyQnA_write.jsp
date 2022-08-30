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
<link rel="stylesheet" href="../css/MyQnA_write.css" />
<link rel="stylesheet" href="../css/button.css" />
<link rel="stylesheet" href="../css/sidebar.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript" src="/admin/js/fileupload.js"></script>

</head>

<body>
	<div class="wrap">
		<div class="wrap1">
			<!-- haeder 시작 -->
			<header>

				<div class="top-menu-wrapper">

					<h1>△■</h1>
					<nav class="top-menu">
						<ul class="top-list">
							<li><a href="#">로그인</a></li>
							<li><a href="#">회원가입</a></li>
							<li><a href="#">마이페이지</a></li>
							<li><a href="#">고객센터</a></li>
						</ul>
					</nav>

				</div>
			</header>
			<!-- haeder 끝 -->
			<nav id="cbp-hrmenu" class="cbp-hrmenu">
				<ul>
					<li><a href="#">처음이세야?</a>
						<div class="cbp-hrsub">
							<div class="cbp-hrsub-inner">
								<div>
									<h4>이용방법</h4>
									<ul>
										<li><a href="#">주문방법</a></li>
										<li><a href="#">수거방법</a></li>
									</ul>
								</div>
							</div>
							<!-- hrsub inner -->
						</div> <!-- hrsub --></li>
					<li><a href="#">서비스 지역</a>
						<div class="cbp-hrsub">
							<div class="cbp-hrsub-inner">
								<div>
									<h4>서비스 지역</h4>
									<ul>
										<li><a href="#">서울</a></li>
									</ul>
								</div>
							</div>
							<!-- hrsub inner -->
						</div> <!-- hrsub --></li>
					<li><a href="#">세탁서비스</a>
						<div class="cbp-hrsub">
							<div class="cbp-hrsub-inner">
								<div>
									<h4>일반 클리닝</h4>
									<ul>
										<li><a href="#">일반의류</a></li>
										<li><a href="#">와이셔츠</a></li>
										<li><a href="#">이불</a></li>
										<li><a href="#">운동화</a></li>
									</ul>
									<h4>특수 클리닝</h4>
									<ul>
										<li><a href="#">일반 클리닝</a></li>
										<li><a href="#">특수 클리닝</a></li>
									</ul>
								</div>
								<div>
									<h4></h4>
									<ul>
										<li><a href="#">아웃도어</a></li>
										<li><a href="#">교복</a></li>
										<li><a href="#">모자/인형/가방</a></li>
									</ul>
								</div>

							</div>
							<!-- hrsub inner -->
						</div> <!-- hrsub --></li>
					<li><a href="#">회사 소개</a>
						<div class="cbp-hrsub">
							<div class="cbp-hrsub-inner">
								<div>
									<h4>어서오세야</h4>
									<ul>
										<li><a href="#">인삿말</a></li>
										<li><a href="#">회사소개</a></li>
									</ul>
								</div>
							</div>
							<!-- hrsub inner -->
						</div> <!-- hrsub --></li>
				</ul>
				<script>
					var cbpHorizontalMenu = (function() {

						var $listItems = $('#cbp-hrmenu > ul > li'), $menuItems = $listItems
								.children('a'), $body = $('body'), current = -1;

						function init() {
							$menuItems.on('click', open);
							$listItems.on('click', function(event) {
								event.stopPropagation();
							});
						}

						function open(event) {

							if (current !== -1) {
								$listItems.eq(current)
										.removeClass('cbp-hropen');
							}

							var $item = $(event.currentTarget).parent('li'), idx = $item
									.index();

							if (current === idx) {
								$item.removeClass('cbp-hropen');
								current = -1;
							} else {
								$item.addClass('cbp-hropen');
								current = idx;
								$body.off('click').on('click', close);
							}

							return false;

						}

						function close(event) {
							$listItems.eq(current).removeClass('cbp-hropen');
							current = -1;
						}

						return {
							init : init
						};

					})();

					$(function() {
						cbpHorizontalMenu.init();
					});
				</script>
			</nav>

			<!-- -본문- -->
			<div class="main">
				<div class="space_left"></div>
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

						<div class="main_text5">
							<div class="type_title1">파일첨부</div>
							<div class="name">
								<input type="file" readonly id="textbar2">
							</div>
						</div>
					</div>
					<div class="end_btn">
						<a href="#" class="action-button shadow animate blue">저장</a> <a
							href="MyQnA.jsp" class="action-button shadow animate blue">목록</a>
					</div>
				</div>

				<div class="space_right"></div>

			</div>

		</div>
	</div>

</body>

<footer>
	<div class="bottom-menu">
		<ul>
			<li><a href="#">개인정보처리방침</a></li>
			<li><a href="#">이용약관</a></li>
			<li><a href="#">의류보관 이용약관</a></li>
		</ul>
	</div>
	<div class="bottom-info">
		<h2>△■</h2>
		<div class="bottom-info-list">
			<span>상호명 : 세탁의 모든것</span> <span>대표전화 : 02-000-0000</span> <span>사업자
				번호 : no.00000000000</span>
		</div>
	</div>
</footer>
</html>