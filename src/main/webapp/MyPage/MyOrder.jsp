<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <script src="../js/jquery-3.6.0.min.js"></script>
  <link rel="stylesheet" href="../css/MyOrder.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
  <title>Document</title>

<!-- 팝업 -->
<script language="javascript">
  function showPopup() { window.open("cancle_popup.jsp", "취소확인", "width=350, height=200, left=570, top=300, resizeable=no"); }
  </script>
  
  <script language="javascript">
   
    function agreeCheck(frm)
    {
       if (frm.button1.disabled==true)
        frm.button1.disabled=false
        
       else
        frm.button1.disabled=true
       
    }
    
    </script>
  
</head>
<body>

  <div class="wrap">
    <div class="wrap1">
<!-- haeder 시작 -->
<header>
  <div class = "top-menu-wrapper">
     <h1>△■</h1>
     <nav class = "top-menu">
        <ul class = "top-list"> 
           <li><a href = "#">로그인</a></li>
           <li><a href = "#">회원가입</a></li>
           <li><a href = "#">마이페이지</a></li>
           <li><a href = "#">고객센터</a></li>
        </ul>
     </nav>
  </div>
</header>
<!-- haeder 끝 -->
<nav id="cbp-hrmenu" class="cbp-hrmenu">
<ul>
   <li>
      <a href="#">처음이세야?</a>
      <div class = "cbp-hrsub">
         <div class="cbp-hrsub-inner">
            <div>
               <h4>이용방법</h4>
               <ul>
                  <li><a href="#">주문방법</a></li>
                  <li><a href="#">수거방법</a></li>
               </ul>
            </div>
         </div><!-- hrsub inner -->
      </div><!-- hrsub -->
   </li>
   <li>
      <a href="#">서비스 지역</a>
      <div class = "cbp-hrsub">
         <div class="cbp-hrsub-inner">
            <div>
               <h4>서비스 지역</h4>
               <ul>
                  <li><a href="#">서울</a></li>
               </ul>
            </div>
         </div><!-- hrsub inner -->
      </div><!-- hrsub -->
   </li>
   <li>
      <a href="#">세탁서비스</a>
      <div class = "cbp-hrsub">
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
               <h4>　</h4>
               <ul>
                  <li><a href="#">아웃도어</a></li>
                  <li><a href="#">교복</a></li>
                  <li><a href="#">모자/인형/가방</a></li>
               </ul>
            </div>
            
         </div><!-- hrsub inner -->
      </div><!-- hrsub -->
   </li>
   <li>
      <a href="#">회사 소개</a>
      <div class = "cbp-hrsub">
         <div class="cbp-hrsub-inner">
            <div>
               <h4>어서오세야</h4>
               <ul>
                  <li><a href="#">인삿말</a></li>
                  <li><a href="#">회사소개</a></li>
               </ul>
            </div>
         </div><!-- hrsub inner -->
      </div><!-- hrsub -->
   </li>
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



<div class="body_wrapper">
<div class="margin_side">
<div class="side_menu">
<div class="side_menu_name"><a href="MyMain.jsp">으아아아</a></div>
<div class="side_menu_title">마이 페이지</div>
<div class="side_menu_content"><a href="MyOrderlist.jsp">내 세탁물 관리</a></div>
<div class="side_menu_content"><a href="#">내 주소지 관리</a></div>
<div class="side_menu_content"><a href="MyQnA.jsp">내 문의 내역</a></div>
<div class="side_menu_content"><a href="MyCoupon.jsp">쿠폰 관리</a></div>
<div class="side_menu_content"><a href="PassConfirm.jsp">회원 정보수정</a></div>
<div class="side_menu_content"><a href="MyDropUser.jsp">회원 탈퇴</a></div>
</div>
</div>
<div class="body_content">


<!---------- 본문 시작 ---------->



<div class="wrapper">
<div class="order_row_title">
<div class="order_title"><h1>주문상세</h1></div>
<div class="order_box_btn">
<div class="order_cancle_btn action-button shadow animate red" onclick="showPopup();">주문취소</div>
</div>
</div>
<div class="order_box_top">
<div class="order_row">
<div class="order_box_title">주문번호</div>
<div class="order_box_content">001</div></div>
<div class="order_row">
<div class="order_box_title">수거예약일</div>
<div class="order_box_content">7월15일(금) 오전 8시</div>
<div class="order_box_title">배송예정일</div>
<div class="order_box_content">7월20일(수)~7월21일(목) 배송예정</div></div>
</div>

<div class="order_navi_bar">
<div class="order_navi_bar_img"><img src="../image/delivery-progress-1.png"></div>
<div class="order_navi_bar_content">
<div class="condition">주문접수</div>
<div class="condition">수거 중</div>
<div class="condition">세탁 중</div>
<div class="condition">배송 중</div>
<div class="condition">배송완료</div>
</div>
<!-- <div class="order_navi_bg_round">주문접수</div> -->
<!-- <div class="order_navi_arrow"></div> -->
<!-- <div class="order_navi_bg_round">수거 중</div> -->
<!-- <div class="order_navi_arrow"></div> -->
<!-- <div class="order_navi_bg_round">세탁 중</div> -->
<!-- <div class="order_navi_arrow"></div> -->
<!-- <div class="order_navi_bg_round">배송 중</div> -->
<!-- <div class="order_navi_arrow"></div> -->
<!-- <div class="order_navi_bg_round">배송완료</div> -->
</div>

<div class="order_map">

<div class="map_wrap">
    <div id="map"></div>
	
	<div class="menu_wrap_end">
    <div id="menu_wrap" class="bg_white">
        <div class="option">
            <div>
                <form onsubmit="searchPlaces(); return false;">
                    키워드 : <input type="text" value="세탁소" id="keyword" size="15"> 
                    <button type="submit">검색하기</button> 
                </form>
            </div>
        </div>
        <hr>
        <ul id="placesList"></ul>
        <div id="pagination"></div>
    </div>
    </div>
</div>

</div>
	<!-- services 라이브러리 불러오기 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=02e5f2db16b1888a0191b2bbe1098628&libraries=services"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=02e5f2db16b1888a0191b2bbe1098628&libraries=LIBRARY"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=02e5f2db16b1888a0191b2bbe1098628"></script>
	<script>
	// 마커를 담을 배열입니다
	var markers = [];

	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(37.5130206, 126.9400814), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  

	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 

	// 장소 검색 객체를 생성합니다
	var ps = new kakao.maps.services.Places();

	// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
	var infowindow = new kakao.maps.InfoWindow({zIndex:1});

	// 키워드로 장소를 검색합니다
	searchPlaces();

	// 키워드 검색을 요청하는 함수입니다
	function searchPlaces() {

	    var keyword = document.getElementById('keyword').value;

	    if (!keyword.replace(/^\s+|\s+$/g, '')) {
	        alert('키워드를 입력해주세요!');
	        return false;
	    }

	    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
	    ps.keywordSearch( keyword, placesSearchCB); 
	}

	// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
	function placesSearchCB(data, status, pagination) {
	    if (status === kakao.maps.services.Status.OK) {

	        // 정상적으로 검색이 완료됐으면
	        // 검색 목록과 마커를 표출합니다
	        displayPlaces(data);

	        // 페이지 번호를 표출합니다
	        displayPagination(pagination);

	    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

	        alert('검색 결과가 존재하지 않습니다.');
	        return;

	    } else if (status === kakao.maps.services.Status.ERROR) {

	        alert('검색 결과 중 오류가 발생했습니다.');
	        return;

	    }
	}

	// 검색 결과 목록과 마커를 표출하는 함수입니다
	function displayPlaces(places) {

	    var listEl = document.getElementById('placesList'), 
	    menuEl = document.getElementById('menu_wrap'),
	    fragment = document.createDocumentFragment(), 
	    bounds = new kakao.maps.LatLngBounds(), 
	    listStr = '';
	    
	    // 검색 결과 목록에 추가된 항목들을 제거합니다
	    removeAllChildNods(listEl);

	    // 지도에 표시되고 있는 마커를 제거합니다
	    removeMarker();
	    
	    for ( var i=0; i<places.length; i++ ) {

	        // 마커를 생성하고 지도에 표시합니다
	        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
	            marker = addMarker(placePosition, i), 
	            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
	        // LatLngBounds 객체에 좌표를 추가합니다
	        bounds.extend(placePosition);

	        // 마커와 검색결과 항목에 mouseover 했을때
	        // 해당 장소에 인포윈도우에 장소명을 표시합니다
	        // mouseout 했을 때는 인포윈도우를 닫습니다
	        (function(marker, title) {
	            kakao.maps.event.addListener(marker, 'mouseover', function() {
	                displayInfowindow(marker, title);
	            });

	            kakao.maps.event.addListener(marker, 'mouseout', function() {
	                infowindow.close();
	            });

	            itemEl.onmouseover =  function () {
	                displayInfowindow(marker, title);
	            };

	            itemEl.onmouseout =  function () {
	                infowindow.close();
	            };
	        })(marker, places[i].place_name);

	        fragment.appendChild(itemEl);
	    }

	    // 검색결과 항목들을 검색결과 목록 Element에 추가합니다
	    listEl.appendChild(fragment);
	    menuEl.scrollTop = 0;

	    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
	    map.setBounds(bounds);
	}

	// 검색결과 항목을 Element로 반환하는 함수입니다
	function getListItem(index, places) {

	    var el = document.createElement('li'),
	    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
	                '<div class="info">' +
	                '   <h5>' + places.place_name + '</h5>';

	    if (places.road_address_name) {
	        itemStr += '    <span>' + places.road_address_name + '</span>' +
	                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
	    } else {
	        itemStr += '    <span>' +  places.address_name  + '</span>'; 
	    }
	                 
	      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
	                '</div>';           

	    el.innerHTML = itemStr;
	    el.className = 'item';

	    return el;
	}

	// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
	function addMarker(position, idx, title) {
	    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
	        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
	        imgOptions =  {
	            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
	            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
	            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
	        },
	        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
	            marker = new kakao.maps.Marker({
	            position: position, // 마커의 위치
	            image: markerImage 
	        });

	    marker.setMap(map); // 지도 위에 마커를 표출합니다
	    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

	    return marker;
	}

	// 지도 위에 표시되고 있는 마커를 모두 제거합니다
	function removeMarker() {
	    for ( var i = 0; i < markers.length; i++ ) {
	        markers[i].setMap(null);
	    }   
	    markers = [];
	}

	// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
	function displayPagination(pagination) {
	    var paginationEl = document.getElementById('pagination'),
	        fragment = document.createDocumentFragment(),
	        i; 

	    // 기존에 추가된 페이지번호를 삭제합니다
	    while (paginationEl.hasChildNodes()) {
	        paginationEl.removeChild (paginationEl.lastChild);
	    }

	    for (i=1; i<=pagination.last; i++) {
	        var el = document.createElement('a');
	        el.href = "#";
	        el.innerHTML = i;

	        if (i===pagination.current) {
	            el.className = 'on';
	        } else {
	            el.onclick = (function(i) {
	                return function() {
	                    pagination.gotoPage(i);
	                }
	            })(i);
	        }

	        fragment.appendChild(el);
	    }
	    paginationEl.appendChild(fragment);
	}

	// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
	// 인포윈도우에 장소명을 표시합니다
	function displayInfowindow(marker, title) {
	    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

	    infowindow.setContent(content);
	    infowindow.open(map, marker);
	}

	 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
	function removeAllChildNods(el) {   
	    while (el.hasChildNodes()) {
	        el.removeChild (el.lastChild);
	    }
	}
	</script>
	
	
	
<!-- <div class="map_store_list"> -->


<!-- <div class="chart"> -->
<!-- <div class="chart_item_mg"><img src=../image/blue_85.png width=35px height=43px></div> -->
<!-- <div class="chart_item"> -->
<!-- <span class="chart_title"> -->
<!-- 2001아울렛(분당점) -->
<!-- </span> -->
<!-- <br> -->
<!-- <span class="chart_icon"> -->
<!-- <img src=../image/icon_store01.png>&nbsp;<img src=../image/icon_store02.png>&nbsp;<img src=../image/icon_store03.png>&nbsp;<img src=../image/icon_store05.png>&nbsp;<img src=../image/icon_store06.png>&nbsp; -->
<!-- </span> -->
<!-- <br> -->
<!-- <span class="chart_body"> -->
<!-- 경기도 성남시 분당구 미금일로154번길<br> -->
<!-- 20(구미동) 2001아울렛분당점 지하2층<br> -->
<!-- 031-786-2929<br> -->
<!-- </span> -->
<!-- </div> -->
<!-- <div class="chart_item_mg_r"></div> -->
<!-- </div> -->
<!-- <hr> -->



<!-- <div class="chart"> -->
<!-- <div class="chart_item_mg"><img src=../image/blue_85.png width=35px height=43px></div> -->
<!-- <div class="chart_item"> -->
<!-- <span class="chart_title"> -->
<!-- 2001아울렛(분당점) -->
<!-- </span> -->
<!-- <br> -->
<!-- <span class="chart_icon"> -->
<!-- <img src=../image/icon_store01.png>&nbsp;<img src=../image/icon_store02.png>&nbsp;<img src=../image/icon_store03.png>&nbsp;<img src=../image/icon_store05.png>&nbsp;<img src=../image/icon_store06.png>&nbsp; -->
<!-- </span> -->
<!-- <br> -->
<!-- <span class="chart_body"> -->
<!-- 경기도 성남시 분당구 미금일로154번길<br> -->
<!-- 20(구미동) 2001아울렛분당점 지하2층<br> -->
<!-- 031-786-2929<br> -->
<!-- </span> -->
<!-- </div> -->
<!-- <div class="chart_item_mg_r"></div> -->
<!-- </div> -->
<!-- <hr> -->





<!-- <div class="chart"> -->
<!-- <div class="chart_item_mg"><img src=../image/blue_85.png width=35px height=43px></div> -->
<!-- <div class="chart_item"> -->
<!-- <span class="chart_title"> -->
<!-- 2001아울렛(분당점) -->
<!-- </span> -->
<!-- <br> -->
<!-- <span class="chart_icon"> -->
<!-- <img src=../image/icon_store01.png>&nbsp;<img src=../image/icon_store02.png>&nbsp;<img src=../image/icon_store03.png>&nbsp;<img src=../image/icon_store05.png>&nbsp;<img src=../image/icon_store06.png>&nbsp; -->
<!-- </span> -->
<!-- <br> -->
<!-- <span class="chart_body"> -->
<!-- 경기도 성남시 분당구 미금일로154번길<br> -->
<!-- 20(구미동) 2001아울렛분당점 지하2층<br> -->
<!-- 031-786-2929<br> -->
<!-- </span> -->
<!-- </div> -->
<!-- <div class="chart_item_mg_r"></div> -->
<!-- </div> -->
<!-- <hr> -->





<!-- <div class="chart"> -->
<!-- <div class="chart_item_mg"><img src=../image/blue_85.png width=35px height=43px></div> -->
<!-- <div class="chart_item"> -->
<!-- <span class="chart_title"> -->
<!-- 2001아울렛(분당점) -->
<!-- </span> -->
<!-- <br> -->
<!-- <span class="chart_icon"> -->
<!-- <img src=../image/icon_store01.png>&nbsp;<img src=../image/icon_store02.png>&nbsp;<img src=../image/icon_store03.png>&nbsp;<img src=../image/icon_store05.png>&nbsp;<img src=../image/icon_store06.png>&nbsp; -->
<!-- </span> -->
<!-- <br> -->
<!-- <span class="chart_body"> -->
<!-- 경기도 성남시 분당구 미금일로154번길<br> -->
<!-- 20(구미동) 2001아울렛분당점 지하2층<br> -->
<!-- 031-786-2929<br> -->
<!-- </span> -->
<!-- </div> -->
<!-- <div class="chart_item_mg_r"></div> -->
<!-- </div> -->
<!-- <hr> -->

<!-- </div> -->




<div class="order_sub_title mg_top">주문품목정보</div>

<div class="order_box_item">
<div class="order_row">
<div class="order_item_name_data">양복/교복상의</div>
<div class="order_item_count_data">1</div>
<div class="order_item_price_data">1,800원</div></div>
<div class="order_row">
<div class="order_item_name_data">흰색 와이셔츠</div>
<div class="order_item_count_data">2</div>
<div class="order_item_price_data">4,200원</div></div>
<div class="order_row">
<div class="order_item_name_data">컬러 와이셔츠</div>
<div class="order_item_count_data">1</div>
<div class="order_item_price_data">1,200원</div></div>
</div>

<div class="order_sub_title">예약자정보</div>

<div class="order_box_user">
<div class="order_row">
<div class="order_box_title">이름</div>
<div class="order_box_content">홍길동</div></div>
<div class="order_row">
<div class="order_box_title">연락처</div>
<div class="order_box_content">010-1234-5678</div></div>
<div class="order_row">
<div class="order_box_title">주소</div>
<div class="order_box_content">서울시 강북구 삼각산로 123-3 501호</div></div>
<div class="order_row">
<div class="order_box_title">출입</div>
<div class="order_box_content">현관0000</div></div>
</div>

<div class="order_sub_title">요청메세지</div>

<div class="order_box_req">
<div class="order_row">
<div class="order_box_title">세탁소</div>
<div class="order_box_content">특수오염 제거요청</div></div>
<div class="order_row">
<div class="order_box_title">기사님</div>
<div class="order_box_content">배송 전에 전화주세요</div></div>
</div>

<div class="order_sub_title">결제정보</div>

<div class="order_row">
<div class="order_box_pay">
<div class="order_row order_row_a">
<div class="order_box_title">결제수단</div>
<div class="order_box_content">신한카드/일시불</div></div>
</div>
<div class="order_box order_box_a">
<div class="order_row">
<div class="order_box_title">총상품가격</div>
<div class="order_box_content">29,800</div></div>
<div class="order_row">
<div class="order_box_title">배송비</div>
<div class="order_box_content">3,000</div></div>
<div class="order_row">
<div class="order_box_title">카드/일시불</div>
<div class="order_box_content">29,800</div></div>
<div class="order_row order_row">
<div class="order_box_title">총 결제금액</div>
<div class="order_box_content order_box_content_r pd_btm">29,800</div></div>
</div>
</div>
<div class="margin_end"></div>
</div>




<!---------- 본문 끝 ---------->


</div>
<div class="margin_side"></div>
</div>



</div>
</div>

</body>
</html>