<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<style>
#t_code, #t_invoice {
	width: 500px;
	height: 30px;
	padding-left: 10px;
	font-size: 18px;
	color: #0000ff;
	border: 1px solid #006fff;
	border-radius: 3px;
}
</style>


<body>
	<h1>로그인</h1>


	<hr>
	<form action="/login-origin.do" method="post">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" value="${userVO.id}" /></td>
				<!-- <td><input type="test" name="id" /></td> -->
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="password"
					value="${userVO.password}"/></td>
				<!-- <td><input type="password" name="password" /></td> -->
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="로그인" /></td>
			</tr>
		</table>
	</form>

    택배 조회 시스템
	<form action="http://info.sweettracker.co.kr/tracking/5" method="post">
		<div class="form-group">
			<input type="hidden" class="form-control" id="t_key" name="t_key"
				value="C4ZceGqwto2gktE38ahkRA"> <!-- 가입코드를 value안에 넣어라(한달짜리 무료 키) -->
		</div>
		<div class="form-group">
			<label for="t_code">택배사 코드</label> 
			<select id="t_code"  name="t_code"></select><br/>		
			<!-- <input class="form-control" name="tekbeCompnayList" id="tekbeCompnayList" placeholder="택배사 코드"> -->
		</div> ↑ 택배사 : 오늘의픽업
		<div class="form-group">
			<label for="t_invoice">운송장 번호</label> <input type="text"
				class="form-control" name="t_invoice" id="t_invoice"
				placeholder="운송장 번호">  
		</div>↑ 운송장 : 058810740677<br>
		<button type="submit" class="btn btn-default">조회하기</button>
	</form>
	
	<form action ="signup.jsp" method="get">
	<button type="submit" class="btn btn-default">회원가입</button>
	</form>
	       
        
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous">
        </script>
        
        
   <script>
// 택배사 목록 조회 company-api
	$(document).ready(function(){
		var myKey = "C4ZceGqwto2gktE38ahkRA"; // sweet tracker에서 발급받은 자신의 키 넣는다.

   $.ajax({
       type:"GET",
       dataType : "json",                       //택배사 조회 api
       url:"http://info.sweettracker.co.kr/api/v1/companylist?t_key="+myKey,
       success:function(data){
       		
       		// 방법 1. JSON.parse 이용하기
       		var parseData = JSON.parse(JSON.stringify(data));
        		console.log(parseData.Company); // 그중 Json Array에 접근하기 위해 Array명 Company 입력
       		
       		// 방법 2. Json으로 가져온 데이터에 Array로 바로 접근하기
       		var CompanyArray = data.Company; // Json Array에 접근하기 위해 Array명 Company 입력
       		console.log(CompanyArray); 
       		
       		var myData="";
       		$.each(CompanyArray,function(key,value) {
           			myData += ('<option value='+value.Code+'>' +'key:'+key+', Code:'+value.Code+',Name:'+value.Name + '</option>');        				
       		});
       		$("#t_code").html(myData);
       }
   });
   
		
	});
   </script>     
</body>
</html>