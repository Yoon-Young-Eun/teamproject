<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>[세모]세탁의 모든것</title>

<!-- font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
<!-- resources -->
<link rel="stylesheet" href="/common/css/sidebar.css"/>
<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

<body>
	<input type="hidden" value="${num}" name="customer_no" />
    <div class="sidebar">
        <h1>　</h1>

        <ul style = "background : #f7f7f7;" >
        
           <!--  
           <li class="listItemA"><a></a></li> 
           -->      
           <li class="listItemT" style="left:0px; background: #a9d3f0; color : #1f2427; font-weight:bold;">MY 세탁</li>
           <li class="listItemA"><i class="fas fa-list-ul"></i><a href="/myorderlist.do?customer_no=${num}">주문 관리</a></li>
           <li class="listItemA"><i class="fas fa-tasks"></i><a href="/getmyEstimate.do?customer_no=${num}">견적서 관리</a></li>

            <li class="listItemT" style="left:0px; background: #a9d3f0; color : #1f2427; font-weight:bold;">MY 정보</li>
            <li class="listItemA"><i class="fas fa-user-edit"></i><a href="/getno.do?customer_no=${num}">회원 정보 수정</a></li>
            <li class="listItemA" style = "margin-left:5px;"><i class="fas fa-map-marker-alt"></i><a href="/myAddress.do?customer_no=${num}">내 주소 관리</a></li>
            <li class="listItemA"><i class="fas fa-ticket-alt"></i><a href="/mycoupon.do?customer_no=${num}">할인쿠폰</a></li>
            
            <li class="listItemT" style="left:0px; background: #a9d3f0; color :#1f2427; font-weight:bold;">MY 활동</li>
            <li class="listItemA"><i class="far fa-question-circle"></i><a href="/myask.do?customer_no=${num}">문의하기</a></li>
            <li class="listItemA"><i class="fas fa-list-ul"></i><a href="/myasklist.do?customer_no=${num}">내 문의 내역 확인</a></li>
            <li class="listItemA"><i class="fas fa-edit"></i><a href="/myReview.do?customer_no=${num }">내 리뷰 관리</a></li>
             
        </ul>
    </div>

</body>
</html>