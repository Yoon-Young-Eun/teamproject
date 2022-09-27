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
					<h1 class="mt-4">매니저수정</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="/admin/index.jsp">Dashboard</a></li>
						<li class="breadcrumb-item active">매니저수정화면</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">매니저 정보를 수정합니다.</div>
					</div>
					
					<!-- 상세정보 -->

	<form action = "/updatestaff.mdo" method="post" id= "form" class="form" onsubmit="return confirm('매니저 정보를 수정 하시겠습니까? ');">
	 <%-- 히든으로 no 값을 보냄 다음 update할때 where admin_no =#{admin_no}를 해주기위해,, --%>
		<input type="hidden" name="admin_no" value="${adminInfo.admin_no}">
	<div class="popup_wrapper">
		<div class="popup_head">
			<h1>매니저 관리</h1>
			<div class="popup_head_index">매니저 직급을 수정합니다</div>
		</div>
		<div class="popup_title">
			이&nbsp;&nbsp;름&nbsp;&nbsp;<input type="text" value="${adminInfo.admin_name}" placeholder="" disabled >
		</div>
		<div class="popup_index">
			담&nbsp;&nbsp;당&nbsp; 
			<select  name="admin_position" class="manager_dept">
			    <option value="${adminInfo.admin_position}" selected>${adminInfo.admin_position}</option>
				<option value="세탁">세탁</option>
				<option value="배송" >배송</option>
				<option value="웹페이지">웹페이지</option>
				<option value="고객관리">고객관리</option>
				<option value="기타">기타</option>
			</select>
		</div>

			직&nbsp;&nbsp;급&nbsp; 
			<select name="admin_title" class="manager_level">
				<option	value="${adminInfo.admin_title}" selected>${adminInfo.admin_title}</option>
				<option	value="사원">사원</option>
				<option value="대리" >대리</option>
				<option value="과장">과장</option>
				<option value="차장">차장</option>
			</select>
			<br><br>
	
		<div class="popup_login">
			<div class="popup_text1">아이디</div>
			<div class="popup_inputbox">
				<input type="text" placeholder="" value="${adminInfo.admin_id}" disabled>
			</div>
		</div>
		<div class="popup_login">
			<div class="popup_text2">비밀번호</div>
			&nbsp;
			<div class="popup_inputbox">
				<input type="password" class="pass" id="inputPassword" placeholder="">
			</div>
		</div>
		<div class="popup_login" style="margin-bottom : 0px;">
			<div class="popup_text3">비밀번호&nbsp;확인</div>
			&nbsp;
			<div class="popup_inputbox">
				<input type="password" name="admin_passwd" class="repass" placeholder="">
			</div>
		</div>
		<div><span id="pwChecking" style="font-size: 5px;"></span></div>
		<!-- <div class="popup_img"><img src="image/gorae.jpg" width="60px" height="60px"><br><br></div> -->


		<div class="end">
			<div class="popup_btn">
			 <input type="button"  onclick="chkPW()" id="login-btn" value="저장" style="border-style:none;"> 
			</div>
			<div class="popup_btn">
				<a href="/staffList.mdo" onclick="self.close();">취소</a>
			</div>
		</div>
	</div>
	</form>
</main>
	
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
	
	<script>
	  function chkPW(){
	console.log("!@!@!ㅋㅋㅋㅋ");

	   var pw = $("#inputPassword").val();
	   var num = pw.search(/[0-9]/g);
	   var eng = pw.search(/[a-z]/ig);
	   var spe = pw.search(/[`~!@#$%^&*?]/gi);
	   
	   var pass = $(".pass").val();
	   var repass = $(".repass").val();

	   if(pw.length < 8 || pw.length > 20){
		   console.log("11");
	    alert("8자리 ~ 20자리 이내로 입력해주세요.");
	    return false;
	   }else if(pw.search(/\s/) != -1){
		   console.log("22");
	    alert("비밀번호는 공백 없이 입력해주세요.");
	    return false;
	   }else if(num < 0 || eng < 0 || spe < 0 ){
		   console.log("33");
	    alert("영문,숫자, 특수문자를 혼합하여 입력해주세요.");
	    return false;
	   }else if(pass.trim() != repass.trim()){
		   console.log("44");
		    alert("비밀번호를 동일하게 입력해주세요.");
		    return false;
	   }else {
		   console.log("55");
	  	console.log("통과"); 
	  	  form.submit();
	   }
	  }
   </script>
	
<%@ include file="/admin/ad_footer.jsp"%>
<%@ include file="/admin/ad_end.jsp"%>			