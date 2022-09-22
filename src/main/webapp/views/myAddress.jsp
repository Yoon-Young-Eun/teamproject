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
<link rel="stylesheet" href="/css/myAddress.css"/>
<link rel="stylesheet" href="/common/css/header.css"/>
<link rel="stylesheet" href="/common/css/button.css"/>
<link rel="stylesheet" href="/common/css/footer.css"/>
<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
</head>
<body>

<jsp:include page="/common/logined-header.jsp"></jsp:include> 

 <div class="whole-wrapper">
      <div class="main">
      <jsp:include page="../common/mypageSide.jsp"/>
      <form>
         <div class="main_text">
            <div class="MyQnA_title">
               <h1>내 주소 관리</h1>
            </div>

            <!-- <div class="MyQnA_search">
               <div class="search_condition">
                  <select class="condition">
                     <option>제목</option>
                     <option>내용</option>
                     <option>제목+내용</option>
                  </select>
               </div>
               <div class="search_input">
                  <input type="text" onfocus="value=''" value="검색어를 입력해주세요">
               </div>
               <div class="search_btn">
                  <a href="#" class="action-button shadow animate blue" style="padding:5px 20px; margin-top:8px;">검색</a>
               </div>
            </div> -->
			<input type="hidden" value="21" name="customer_no">
            <div class="MyQnA_body" style="margin-top:114px;">
               <div class="MyQnA_body_title">
                 <input type="text" value="기본주소" id="address" readonly>
                 <input type="button" value="주소변경" id="button1" onclick="showPopup();">
               </div>

               <div class="MyQnA_body_content">
                  <div class="value1" style="display: flex" style="width:968px;">
                  <input type="text" value="연락처" id="t_value" readonly>
                  <input type="text" value="${sendCustomer.customer_phone }" id="phone" readonly name="customer_phone">
                  </div>
                  <div class="value2" style="display: flex" style="width:968px;">	
                  <input type="text" value="기본주소" id="t_value" readonly>
                  <input type="text" value="${sendCustomer.customer_address1 }" id="address1" readonly name="customer_address1">
                  </div>
                  <div class="value3" style="display: flex" style="width:968px;">
                  <input type="text" value="나머지주소" id="t_value" readonly>
                  <input type="text" value="${sendCustomer.customer_address2 }" id="address2" readonly name="customer_address2">
                  </div>
                  <div class="vlaue4" style="display: flex" style="width:968px;">
                  <input type="text" value="출입비밀번호" id="t_value" readonly readonly>
                  <input type="text" value="${sendCustomer.cm_gate_passwd }" id="gate_pw" readonly name="cm_gate_passwd">
                  </div>
               </div>
            </div>

<div id="chse" style="display: none">1</div>            
         </div>
         </form>
      </div>

   </div>
   
<script type="text/javascript">
  var url="/getmyAddressList.do?customer_no="+${num};
   function showPopup() { 
	   window.open(url, "", "width=720, height=850"); }
   </script>
   
   <script>
$("#chse").on("DOMSubtreeModified",function(){
	console.log("d1");
	setTimeout(() => {
		console.log("d2");
		location.reload();}, 700);
	
})
</script>   


<jsp:include page="../common/footer.jsp"/> 
</body>

</html>