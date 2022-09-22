<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=dev
        ice-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Login - SB Admin</title>
        <link href="/admin/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Login</h3></div>
                                    <div class="card-body">
                                        <form action ="/login.mdo" method="post" id="login_mdo">
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputEmail" type="email" name="admin_id" placeholder="name@example.com" />
                                                <label for="inputEmail">Email address</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputPassword" type="password" name="admin_passwd" placeholder="Password" />
                                                <label for="inputPassword">Password</label>
                                            </div>
 
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <!-- <a class="small" href="password.html">Forgot Password?</a> -->
                                               <Button style="border-style : none;"><a class="btn btn-primary">Login</a></Button> 
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
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2022</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script>
      //휴대폰 번호 인증
        var code2 = "";
        $("#phoneChk").click(function(){
        	alert("인증번호 발송이 완료되었습니다.\n휴대폰에서 인증번호 확인을 해주십시오.");
        	var phone = $("#phone").val();
        	$.ajax({
                type:"GET",
                url:"phoneCheck?phone=" + phone,
                cache : false,
                success:function(data){
                	if(data == "error"){
                		alert("휴대폰 번호가 올바르지 않습니다.")
        				$(".successPhoneChk").text("유효한 번호를 입력해주세요.");
        				$(".successPhoneChk").css("color","red");
        				$("#phone").attr("autofocus",true);
                	}else{	        		
                		$("#phone2").attr("disabled",false);
                		$("#phoneChk2").css("display","inline-block");
                		$(".successPhoneChk").text("인증번호를 입력한 뒤 본인인증을 눌러주십시오.");
                		$(".successPhoneChk").css("color","green");
                		$("#phone").attr("readonly",true);
                		code2 = data;
                	}
                }
            });
        });
     
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/admin/js/scripts.js"></script>
    </body>
</html>


