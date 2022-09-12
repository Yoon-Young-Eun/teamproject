<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<!-- font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
<!-- resources -->
<link rel="stylesheet" href="/common/css/sidebar1.css"/>
<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

<body>

    <div class="sidebar">
        <h1>　</h1>

        <ul>
           <!--  
           <li class="listItemA"><a></a></li> 
           -->
           <li class="listItemT" style="left:0px; border-bottom: 2px solid #a9d3f0; color : #2b92da; font-weight:bold;">고객센터</li>
           <li class="listItemA"><i class="far fa-question-circle"></i><a href="/getFaqList.do">자주묻는 질문</a></li>
           <li class="listItemA"><i class="fas fa-exclamation-circle"></i><a href="/service/serviceNotice.jsp">공지사항</a></li>
           <li class="listItemA"><i class="far fa-calendar-alt"></i><a href="/service/serviceEvent.jsp">이벤트</a></li>            
        </ul>
    </div>

</body>
</html>