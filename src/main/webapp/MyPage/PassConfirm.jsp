<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/PassConfirm.css" />
<meta name="author" content="www.twitter.com/cheeriottis">
<link href='https://fonts.googleapis.com/css?family=Pacifico'
	rel='stylesheet' type='text/css'>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>SEMO-MyPage</title>
</head>
<body>
		<!-- 헤더 -->
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
		<!-- 바디 -->
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
							$listItems.eq(current).removeClass('cbp-hropen');
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
		<div class="wrapper">
			<div class="MyInfo_title">
				<h1>내 정보 수정</h1>
			</div>

			<div class="password">
				<div class="password-title">비밀번호 입력</div>
				<div class="password-input">
					<input type="password" name="password">
				</div>
				<div class="btn">
					<a href="MyInfoModification.jsp" class="action-button shadow animate blue">확인</a>
				</div>
			</div>
		</div>
</body>
</html>