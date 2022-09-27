<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<link href="/admin/css/member_staff.css" rel="stylesheet" />

</head>
<body class="sb-nav-fixed">

<%@ include file="/admin/ad_menu.jsp"%>

		<div id="layoutSidenav_content">
			<main>

				<div class="container-fluid px-4">
					<h1 class="mt-4">매니저등록</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.mdo">대시보드</a></li>
						<li class="breadcrumb-item active">매니저등록화면</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">신규 매니저 계정을 생성합니다.</div>
					</div>

					<!-- 상세정보 -->



					<form action="/insertAdmin.mdo" method="post" id="form"
						class="form" onsubmit="return confirm('신규 매니저 계정을 등록하겠습니까?');">
						<div class="popup_wrapper">
							<div class="popup_head">
								<h1>매니저 등록</h1>
								<div class="popup_head_index">직급을 부여하여 매니저를 등록합니다</div>
							</div>
							<div class="popup_title">
								이&nbsp;&nbsp;름&nbsp;&nbsp;<input type="text" id="inputName"
									placeholder="" name="admin_name">
							</div>
							<div class="popup_index">
								담&nbsp;&nbsp;당&nbsp; <select id="inputPosition"
									class="manager_dept" name="admin_position"><option
										value="0">세탁</option>
									<option value="0" selected>선택</option>
									<option value="물류팀">물류팀</option>
									<option value="전산팀">전산팀</option>
									<option value="마케팅팀">마케팅팀</option>
									<option value="영업팀">영업팀</option>
									<option value="경영팀">경영팀</option>
								</select>
							</div>

							<div class="popup_content">
								직&nbsp;&nbsp;급&nbsp; <select id="inputTitle"
									class="manager_level" name="admin_title"><option
										value="0">사원</option>
									<option value="0" selected>선택</option>
									<option value="대리">대리</option>
									<option value="과장">과장</option>
									<option value="차장">차장</option>
									<option value="부장">부장</option>
									<option value="팀장">팀장</option>
								</select>
							</div>
							<div class="popup_login" style="margin-bottom: 0px;">
								<div class="popup_text1">아이디</div>
								<div class="popup_inputbox">
									<input type="text" id="inputEmail" placeholder=""
										name="admin_id">
								</div>
							</div>
							<div class="popup_inputbox">
								<button type="button" idCheck="" id="idCheck"
									style="font-size: 5px; border: 1px solid gray;">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IdCheck&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</button>
							</div>
							<div class="popup_login">
								<div class="popup_text2">비밀번호</div>
								&nbsp;
								<div class="popup_inputbox">
									<input type="password" class="pass" id="inputPassword"
										placeholder="">
								</div>
							</div>
							<div class="popup_login" style="margin-bottom: 0px;">
								<div class="popup_text3">비밀번호&nbsp;확인</div>
								&nbsp;
								<div class="popup_inputbox">
									<input type="password" class="repass" placeholder=""
										name="admin_passwd">
								</div>
							</div>
							<div>
								<span id="pwChecking" style="font-size: 5px;"></span>
							</div>

							<div class="end">
								<div class="popup_btn">
									<input type="button" onclick="chkPW()"
										style="border-style: none;" value="등록" />
								</div>
								<div class="popup_btn">
									<a href="/staffList.mdo" onclick="self.close();">취소</a>
								</div>
							</div>

						</div>
					</form>
			</main>

	<!-- 비밀번호 일치 불일치 언더바 -->
	<script type="text/javascript">
	$(document).ready(function(){
	
	$('.repass').keyup(function(){
		console.log("ASdasdads");
        if($('.pass').val() != $('.repass').val()){
           $('#pwChecking').css("color", "red");
           $('#pwChecking').html("비밀번호가 일치하지 않습니다. 다시 확인해주세요!");
        }else if($('.pass').val() == "" && $('.repass').val() == ""){
        	console.log("dddd");
        	$('#pwChecking').html(null)		 	
        } else {
           $('#pwChecking').css("color", "green");
           $('#pwChecking').html("비밀번호가 일치합니다. 회원가입을 계속 진행해주세요!");
        }
     });
	});
	</script>


<!-- 이메일 정규직  -->
<!-- 비밀번호 정규식: 영문(대소문자), 숫자, 특수문자 포함, 비밀번호 8~20자, 공백x  -->

   	<script>
   function chkPW(){
	   
	console.log("!@!@!ㅋㅋㅋㅋ");
	
	   var name = $("#inputName").val();
	   var position = $("#inputPosition").val();
	   var title = $("#inputTitle").val();
 
	   var id = $("#inputEmail").val();
	   var email = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	   
	   var pw = $("#inputPassword").val();
	   var num = pw.search(/[0-9]/g);
	   var eng = pw.search(/[a-z]/ig);
	   var spe = pw.search(/[`~!@#$%^&*?]/gi);
	   
	   var pass = $(".pass").val();
	   var repass = $(".repass").val();
	   

	   if(name.trim() == null || name.trim() == ""){
			  alert("이름을 작성해주세요.");
			  return false;
		   }
	   if(position==0){
			  alert("담당 업무를 선택해주세요.");
			  return false;
		   }
	   if(title==0){
			  alert("직급을 선택해주세요.");
			  return false;
		   }
	   
	   if(id.match(email)==null){
		  alert("이메일 형식대로 작성해주세요.");
		  return false;
	   }
	   
	   if(pw.length < 8 || pw.length > 20){
	    alert("8자리 ~ 20자리 이내로 입력해주세요.");
	    return false;
	   }else if(pw.search(/\s/) != -1){
	    alert("비밀번호는 공백 없이 입력해주세요.");
	    return false;
	   }else if(num < 0 || eng < 0 || spe < 0 ){
	    alert("영문,숫자, 특수문자를 혼합하여 입력해주세요.");
	    return false;
	   }else if(pass.trim() != repass.trim()){
		    alert("비밀번호를 동일하게 입력해주세요.");
		    return false;
	   }else {
	  	console.log("통과"); 
	  	  form.submit();
	   }
	  }
   </script>

   	<script>
	   $('#idCheck').click(function(){

			var valId = $('#inputEmail').val();	
			var request = $.ajax({
				url: "/idCheck.mdo", //통신할 url
				method: "POST", //통신할 메서드 타입
				data: { id : valId }, //전송할 데이타
				dataType: "json"
			});	 
			request.done(function(data) {
				console.log(data)
				if(data == 1){
						alert('사용 가능한 아이디입니다.');
				} else{
						alert('이미 가입된 아이디입니다.');
				}	
			});	 
			request.fail(function( jqXHR, textStatus ) {
			  alert( "Request failed: " + textStatus );
			});			
		});
	</script>

<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>