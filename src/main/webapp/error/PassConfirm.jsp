<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/PassConfirm.css" />
<meta name="viewport"
   content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="/common/css/header.css" />
<link rel="stylesheet" href="/common/css/footer.css" />
<link rel="stylesheet" href="/common/css/button.css" />
<link rel="stylesheet" href="/common/css/sidebar.css" />

<!-- 폰트 -->
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
   rel="stylesheet">
   
<title>SEMO-MyPage</title>
</head>
<body>

      <div class="whole-wrapper">
      <jsp:include page="/common/logined-header.jsp"></jsp:include>
      <div class="main">
         <div class="space_left">
            <jsp:include page="/common/mypageSide.jsp" />
         </div>
         <form>

      <div class="wrapper">
         <div class="MyInfo_title">
            <h1>내 정보 수정</h1>
         </div>

         <div class="password">
            <div class="password-title">비밀번호 입력</div>
            <div class="password-input">
               <input type="password"  id="pw" name="customer_passwd">
            </div>
            <div class="btn">
               <!-- <input type="submit" id="pwCheck" class="action-button shadow animate blue" value="확인"/> -->
               <input type="button" onclick = "pwCheck()" id="confirm" class="action-button shadow animate blue" value="확인"/>
            </div>
         </div>
      </div>
         </form>   
      </div>
      
         <div class="space_right"></div>
      </div>

		<script> 	
 		function pwCheck() {
 			var pw = $('#pw').val();
 			var sc = ["!","@","#","$","%"];
 			var check_sc = 0;
 			
 			for(var i = 0; i < sc.length; i ++){
				if(pw.indexOf(sc[i]) != -1){
				check_sc = 1;
				}
			}
 			
 			console.log("함수실행"); 			
 			$.ajax({
 				url : "/pwCheck.do?customer_no=${num}",
 				type : "get",
 				data : {pw : pw},
 				success : function(result) {
 					if (result == 0 && check_sc == 0) {
 						alert("비밀번호가 일치하지 않습니다.");
 					} else if (result == 1 && check_sc == 1) {
 						location.href="/getCustomer.do?customer_no=${num}&customer_passwd="+pw;
					}
				}
 			});
 		};
	</script>

	
	
</body>
<jsp:include page="/common/footer.jsp" />
</html>