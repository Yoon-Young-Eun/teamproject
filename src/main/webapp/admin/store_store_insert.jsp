<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<link href="/admin/css/store_store_insert.css" rel="stylesheet" />

</head>
<body class="sb-nav-fixed">

<%@ include file="/admin/ad_menu.jsp"%>

		<div id="layoutSidenav_content">
			<main>

				<div class="container-fluid px-4">
					<h1 class="mt-4">매장 관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="/index.mdo">대시보드</a></li>
						<li class="breadcrumb-item active">매장 등록</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">새로운 매장을 등록합니다.</div>
					</div>

<!-- ---------- 본문내용 시작 ---------- -->

<div class="popup_wrapper">

<form action="/insertStore.mdo" method="GET" onsubmit="return confirm('매장 정보를 등록하겠습니까?');">

<div class="popup_head"><h1>매장</h1>
</div>
<div class="popup_title">
<div class="popup_text">매장명</div><div class="popup_inputbox"><input type="text" name="store_name" placeholder=""></div>
</div>
<div class="popup_type">
<div class="popup_text">구분</div>
<div class="popup_select">
<!-- <input class="office_type" type="radio" name="office_type_radio" id="office_type1" checked="checked"><label for="office_type1">직영</label></div> -->
<!-- <div class="popup_radio"> -->
<!-- <input class="office_type" type="radio" name="office_type_radio" id="office_type2"><label for="office_type2">외주</label> -->
<select class="store_type" name="store_type">
	<option value="직영">직영</option>
	<option value="외주">외주</option>
</select>
</div>
</div><!-- /popup_content -->
<div class="popup_status">
<div class="popup_text">매장상태</div><div class="popup_select">
<select class="manager_level" name="store_status">
	<option value="운영중">운영중</option>
	<option value="휴점">휴점</option>
	<option value="폐점">폐점</option>
</select>
</div>
</div>
<div class="popup_office">
<div class="popup_text">주소</div><div class="popup_inputbox"><input type="text" id="b2" name="store_address1" placeholder="우편변호 검색"></div>
<div class="popup_search"><input type="button" value="검색" id="search" onclick="sample6_execDaumPostcode()"></div>
</div>

<div class="popup_office">
<div class="popup_text"></div><div class="popup_inputbox"><input type="text" name="store_address2" placeholder="상세주소 입력"></div>
</div>
<div class="popup_office_phone">
<div class="popup_text">전화번호</div><div class="popup_inputbox"><input type="text" name="store_phone" placeholder="010-1234-5678"></div>
</div>

<div class="popup_office">
<div class="popup_text">위도</div><div class="popup_inputbox"><input type="text" name="store_latitude" placeholder="위도 입력"></div>
</div>

<div class="popup_office">
<div class="popup_text">경도</div><div class="popup_inputbox"><input type="text" name="store_longitude" placeholder="경도 입력"></div>
</div>

<div class="end">
		<div class="popup_btn">
			<input type="submit" value="등록">
		</div>

		<div class="popup_btn">
			<a href="/StoreList.mdo">취소</a>
		</div>
	</div>
</form>
</div>

<!-- ---------- 본문내용 끝 ---------- -->

				</div>
			</main>
	
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
	
<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>