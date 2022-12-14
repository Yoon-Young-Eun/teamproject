<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/admin/ad_header.jsp"%>

<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script>
function onEnterLogin(){
    var keyCode = window.event.keyCode;
    
    if (keyCode == 13) { //엔터키 이면
       loginform.submit();
    }
 } //onEnterLogin()
</script>
</head>
<body class="bg-primary" onkeydown="javascript:onEnterLogin();">
	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content">
			<main>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-5">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header">
									<h3 class="text-center font-weight-light my-4">Login</h3>
								</div>
								<div class="card-body">
									<form action="/logon.mdo" method="post" name="loginform" id="form">
										<div class="form-floating mb-3">
											<input class="form-control" id="inputEmail" type="email"
												name="admin_id" placeholder="name@example.com" /> <label
												for="inputEmail">Email address</label>
										</div>
										<div class="form-floating mb-3">
											<input class="form-control" id="inputPassword"
												type="password" name="admin_passwd" placeholder="Password" />
											<label for="inputPassword">Password</label>
										</div>
										<div style="font-size: 5px; color: gray;">&nbsp;&nbsp;영문(대소문자),
											숫자, 특수문자 포함, 비밀번호 8~20자로 입력바랍니다.</div>
										<div
											class="d-flex align-items-center justify-content-between mt-4 mb-0">
											<!-- <a class="small" href="password.html">Forgot Password?</a> -->
											<button type="button" onclick="chkPW()"	style="border-style: none;">
												<a class="btn btn-primary">Login</a>
											</Button>
										</div>
									</form>
								</div>
								<div class="card-footer text-center py-3">
									<!--  <div class="small"><a href="/admin/register.jsp">Need an account? Sign up!</a></div> -->
								</div>
							</div>
						</div>
					</div>
				</div>

			</main>
		</div>
		<div id="layoutAuthentication_footer">
		
<%@ include file="/admin/ad_footer.jsp"%>

		</div>
	</div>
	<script>
   //이메일 정규직 
   //비밀번호 정규식: 영문(대소문자), 숫자, 특수문자 포함, 비밀번호 8~20자, 공백x 
   function chkPW(){
	console.log("!@!@!ㅋㅋㅋㅋ");
	   var pw = $("#inputPassword").val();
	   var num = pw.search(/[0-9]/g);
	   var eng = pw.search(/[a-z]/ig);
	   var spe = pw.search(/[`~!@#$%^&*?]/gi);
	 
	   var id = $("#inputEmail").val();
	   var email = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	   
	   
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
	   }else {
	  	console.log("통과"); 
	  	  form.submit();
	   }
	  }
   </script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="/admin/js/scripts.js"></script>
</body>
</html>


