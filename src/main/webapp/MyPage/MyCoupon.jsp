<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
<title>SEMO-MyPage</title>
<meta name="author" content="www.twitter.com/cheeriottis">
<link href="../css/MyCoupon.css" rel="stylesheet" />

<!-- 폰트 -->
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="../js/coupon_spec.js"></script>
</head>
<body>
<div class="whole-wrapper">
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
    
    var $listItems = $( '#cbp-hrmenu > ul > li' ),
        $menuItems = $listItems.children( 'a' ),
        $body = $( 'body' ),
        current = -1;
 
    function init() {
        $menuItems.on( 'click', open );
        $listItems.on( 'click', function( event ) { event.stopPropagation(); } );
    }
 
    function open( event ) {
 
        if( current !== -1 ) {
            $listItems.eq( current ).removeClass( 'cbp-hropen' );
        }
 
        var $item = $( event.currentTarget ).parent( 'li' ),
            idx = $item.index();
 
        if( current === idx ) {
            $item.removeClass( 'cbp-hropen' );
            current = -1;
        }
        else {
            $item.addClass( 'cbp-hropen' );
            current = idx;
            $body.off( 'click' ).on( 'click', close );
        }
 
        return false;
 
    }
 
    function close( event ) {
        $listItems.eq( current ).removeClass( 'cbp-hropen' );
        current = -1;
    }
 
    return { init : init };
 
})();

$(function() {
            cbpHorizontalMenu.init();
});
</script>
	</nav>


	<div class="wrapper">
		<div class="coupon_title">
			<h1>할인쿠폰</h1>
		</div>
		<div class="title_box">
			<div class="usable">
				<div class="usable_title">사용가능 쿠폰</div>
				<div class="usable_num">0 개</div>
			</div>
			<div class="attention">
				<div class="attention_title">할인쿠폰 적용시 주의사항</div>
				<div id="layer_btn">
					<a href="#">자세히 보기</a>
				</div>
			</div>
		</div>
		<div class="layer" id="layer_content">
			<div class="popup_wrapper">
				<div class="pop_content1">*쿠폰 1개당 1회 적용할 수 있습니다.</div>
				<div class="pop_content2">*할인쿠폰별 적용대상이 다를 수 있습니다.</div>
				<div class="pop_content3">*최소결제금액 조건에 맞는 쿠폰이 있을 수 있습니다.</div>
			</div>
		</div>
		<div class="coupon_body">
			<div class="list_title">나의 쿠폰 목록</div>
			<div class="coupon_list">
				<div class="list_cnum">쿠폰번호</div>
				<div class="list_name">쿠폰명</div>
				<div class="list_num">개수</div>
				<div class="list_discount">할인금액</div>
				<div class="list_expiration">유효기간</div>
			</div>

			<div class="coupon_db">
				<div class="db_cnum">123456</div>
				<div class="db_name">생일빵쿠폰</div>
				<div class="db_num">1</div>
				<div class="db_discount">2000</div>
				<div class="db_expiration">22.08.24~22.08.31</div>
			</div>
			
			<div class="coupon_db">
				<div class="db_cnum">123456</div>
				<div class="db_name">생일빵쿠폰</div>
				<div class="db_num">1</div>
				<div class="db_discount">2000</div>
				<div class="db_expiration">22.08.24~22.08.31</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>