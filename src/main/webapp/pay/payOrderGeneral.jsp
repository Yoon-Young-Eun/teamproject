<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
<link rel="stylesheet" href="/css/payOrderGeneral.css">
<link rel="stylesheet" href="/common/css/button.css">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>[세모]세탁의 모든것</title>

<script>
    function openCloseToc(){
    if(document.getElementById('view0').style.display === 'block'){
        document.getElementById('view0').style.display='none';
      }
    else{
      document.getElementById('view0').style.display = 'block';
      document.getElementById('view1').style.display = 'none';
      document.getElementById('view2').style.display = 'none';
      document.getElementById('view3').style.display = 'none';
      document.getElementById('view4').style.display = 'none';
      document.getElementById('view5').style.display = 'none';
    }
  }
  
  
  
  
  
  function openCloseToc1(){
    if(document.getElementById('view1').style.display === 'block'){
      document.getElementById('view1').style.display='none';
      
      
    }else{
      document.getElementById('view1').style.display = 'block';
      document.getElementById('view0').style.display = 'none';
      document.getElementById('view2').style.display = 'none';
      document.getElementById('view3').style.display = 'none';
      document.getElementById('view4').style.display = 'none';
      document.getElementById('view5').style.display = 'none';
    }
  }
  
  
  
  function openCloseToc2(){
    if(document.getElementById('view2').style.display === 'block'){
      document.getElementById('view2').style.display='none';
      
    }else{
      document.getElementById('view2').style.display = 'block';
      document.getElementById('view0').style.display = 'none';
      document.getElementById('view1').style.display = 'none';
      document.getElementById('view3').style.display = 'none';
      document.getElementById('view4').style.display = 'none';
      document.getElementById('view5').style.display = 'none';
    }
  }
  
  function openCloseToc3(){
    if(document.getElementById('view3').style.display === 'block'){
      document.getElementById('view3').style.display='none';
      
    }else{
      document.getElementById('view3').style.display = 'block';
      document.getElementById('view0').style.display = 'none';
      document.getElementById('view1').style.display = 'none';
      document.getElementById('view2').style.display = 'none';
      document.getElementById('view4').style.display = 'none';
      document.getElementById('view5').style.display = 'none';
    }
  }
  
  function openCloseToc4(){
    if(document.getElementById('view4').style.display === 'block'){
      document.getElementById('view4').style.display='none';
    }else{
      document.getElementById('view4').style.display = 'block';
      document.getElementById('view0').style.display = 'none';
      document.getElementById('view1').style.display = 'none';
      document.getElementById('view2').style.display = 'none';
      document.getElementById('view3').style.display = 'none';
      document.getElementById('view5').style.display = 'none';
    }
  }
  
  function openCloseToc5(){
    if(document.getElementById('view5').style.display === 'block'){
      document.getElementById('view5').style.display='none';
      
    }else{
      document.getElementById('view5').style.display = 'block';
      document.getElementById('view0').style.display = 'none';
      document.getElementById('view1').style.display = 'none';
      document.getElementById('view2').style.display = 'none';
      document.getElementById('view3').style.display = 'none';
      document.getElementById('view4').style.display = 'none';
    }
  }
  
  </script>



</head>
<body>

	<div class="wrap">
		<div class="wrap1">

			<jsp:include page="/common/logined-header.jsp"></jsp:include>

			<div class="main">
				<div class="space_left"></div>
				<div class="content_box">
					<form action="/OrderGeneral.do" id="form1">
						<div class="main_text">
							<div class="main_text1">일반세탁 결제하기</div>
							<div class="main_text2">세탁할 옷의 종류를 선택하세요</div>

							<div class="main_text3">
								<div class="aaaa">
									<div class="top">
										<input type="button" id="toggle" onclick="openCloseToc()"
											value="상의" name="product_category_parent"
											class="action-button shadow animate blue"
											style="width: 154px; height: 50px; font-weight: normal; margin-top: 8px;">
									</div>
									<div class="top1">
										<input type="button" id="toggle1" onclick="openCloseToc1()"
											value="하의" name="product_category_parent"
											class="action-button shadow animate blue"
											style="width: 154px; height: 50px; font-weight: normal; margin-top: 8px;">
									</div>
									<div class="top2">
										<input type="button" id="toggle2" onclick="openCloseToc2()"
											value="신발" name="product_category_parent"
											class="action-button shadow animate blue"
											style="width: 154px; height: 50px; font-weight: normal; margin-top: 8px;">
									</div>
									<div class="top3">
										<input type="button" id="toggle3" onclick="openCloseToc3()"
											value="외투" name="product_category_parent"
											class="action-button shadow animate blue"
											style="width: 154px; height: 50px; font-weight: normal; margin-top: 8px;">
									</div>
									<div class="top4">
										<input type="button" id="toggle4" onclick="openCloseToc4()"
											value="기타" name="product_category_parent"
											class="action-button shadow animate blue"
											style="width: 154px; height: 50px; font-weight: normal; margin-top: 8px;">
									</div>
									<div class="top5">
										<input type="button" id="toggle5" onclick="openCloseToc5()"
											value="침구류" name="product_category_parent"
											class="action-button shadow animate blue"
											style="width: 154px; height: 50px; font-weight: normal; margin-top: 8px;">
									</div>

								</div>
								<div id="view0">
									<c:forEach var="Top" items="${top}">
										<div class="main_text4">
											<div class="main_text9">
											<input type="hidden" value="${Top.product_code }" name="product_Array_code">
			<input type="hidden" value="${Top.product_category_parent }"name="order_mtArray_category1"> 
	        <input type="text" value="${Top.product_category_median }" id="median" readonly name="order_mtArray_category2">

											</div>
											<div class="main_text5">
												<input type="text" value="${Top.product_name }"
													name="order_mtArray_product" id="product_name" readonly>
											</div>
											<div class="price">
												<input type="text" value="${Top.product_price }"
													name="order_mtArray_price" class="product_price" readonly>
												<input type="text" value="원" id="won" readonly>
											</div>
											<div class="count">
												<input type='button' value='-' id="button1" class="button1">
												<input type="text" value="0" class="result" readonly
													name="order_mtArray_count"> <input type='button'
													value='+' id="button1" class="button">
											</div>
											<div class="price1">
												<input type="text" class="price2" readonly value="0"
													name="order_mtArray_sumPrice"> 원
											</div>

										</div>
									</c:forEach>

								</div>


								<div id="view1">
									<c:forEach var="Bottom" items="${bottom}">
										<div class="main_text4">
											<div class="main_text9">
											<input type="hidden" value="${Bottom.product_code }" name="product_Array_code">
												<input type="hidden"
													value="${Bottom.product_category_parent }"
													name="order_mtArray_category1"> <input type="text"
													value="${Bottom.product_category_median }" id="median"
													readonly readonly name="order_mtArray_category2">

											</div>
											<div class="main_text5">
												<input type="text" value="${Bottom.product_name }"
													name="order_mtArray_product" id="product_name" readonly>
											</div>
											<div class="price">
												<input type="text" value="${Bottom.product_price }"
													name="order_mtArray_price" class="product_price" readonly>
												<input type="text" value="원" id="won" readonly>
											</div>
											<div class="count">
												<input type='button' value='-' id="button1" class="button1">
												<input type="text" value="0" class="result" readonly
													name="order_mtArray_count"> <input type='button'
													value='+' id="button1" class="button">
											</div>
											<div class="price1">
												<input type="text" class="price2" readonly value="0"
													name="order_mtArray_sumPrice"> 원
											</div>

										</div>
									</c:forEach>


								</div>

								<div id="view2">
									<c:forEach var="Shoes" items="${shoes}">
										<div class="main_text4">
											<div class="main_text9">
											<input type="hidden" value="${Shoes.product_code }" name="product_Array_code">
												<input type="hidden"
													value="${Shoes.product_category_parent }"
													name="order_mtArray_category1"> <input type="text"
													value="${Shoes.product_category_median }" id="median"
													readonly readonly name="order_mtArray_category2">

											</div>
											<div class="main_text5">
												<input type="text" value="${Shoes.product_name }"
													name="order_mtArray_product" id="product_name" readonly>
											</div>
											<div class="price">
												<input type="text" value="${Shoes.product_price }"
													name="order_mtArray_price" class="product_price" readonly>
												<input type="text" value="원" id="won" readonly>
											</div>
											<div class="count">
												<input type='button' value='-' id="button1" class="button1">
												<input type="text" value="0" class="result" readonly
													name="order_mtArray_count"> <input type='button'
													value='+' id="button1" class="button">
											</div>
											<div class="price1">
												<input type="text" class="price2" readonly value="0"
													name="order_mtArray_sumPrice"> 원
											</div>

										</div>
									</c:forEach>



								</div>

								<div id="view3">
									<c:forEach var="Outer" items="${outer}">
										<div class="main_text4">
											<div class="main_text9">
											<input type="hidden" value="${Outer.product_code }" name="product_Array_code">
												<input type="hidden"
													value="${Outer.product_category_parent }"
													name="order_mtArray_category1"> <input type="text"
													value="${Outer.product_category_median }" id="median"
													readonly readonly name="order_mtArray_category2">

											</div>
											<div class="main_text5">
												<input type="text" value="${Outer.product_name }"
													name="order_mtArray_product" id="product_name" readonly>
											</div>
											<div class="price">
												<input type="text" value="${Outer.product_price }"
													name="order_mtArray_price" class="product_price" readonly>
												<input type="text" value="원" id="won" readonly>
											</div>
											<div class="count">
												<input type='button' value='-' id="button1" class="button1">
												<input type="text" value="0" class="result" readonly
													name="order_mtArray_count"> <input type='button'
													value='+' id="button1" class="button">
											</div>
											<div class="price1">
												<input type="text" class="price2" readonly value="0"
													name="order_mtArray_sumPrice"> 원
											</div>

										</div>
									</c:forEach>


								</div>

								<div id="view4">
									<c:forEach var="ETC" items="${etc}">
										<div class="main_text4">
											<div class="main_text9">
											<input type="hidden" value="${ETC.product_code }" name="product_Array_code">
												<input type="hidden" value="${ETC.product_category_parent }"
													name="order_mtArray_category1"> <input type="text"
													value="${ETC.product_category_median }" id="median"
													readonly readonly name="order_mtArray_category2">

											</div>
											<div class="main_text5">
												<input type="text" value="${ETC.product_name }"
													name="order_mtArray_product" id="product_name" readonly>
											</div>
											<div class="price">
												<input type="text" value="${ETC.product_price }"
													name="order_mtArray_price" class="product_price" readonly>
												<input type="text" value="원" id="won" readonly>
											</div>
											<div class="count">
												<input type='button' value='-' id="button1" class="button1">
												<input type="text" value="0" class="result" readonly
													name="order_mtArray_count"> <input type='button'
													value='+' id="button1" class="button">
											</div>
											<div class="price1">
												<input type="text" class="price2" readonly value="0"
													name="order_mtArray_sumPrice"> 원
											</div>

										</div>
									</c:forEach>

								</div>

								<div id="view5">
									<c:forEach var="Bedding" items="${bedding}">
										<div class="main_text4">
											<div class="main_text9">
											<input type="hidden" value="${Bedding.product_code }" name="product_Array_code">
												<input type="hidden"
													value="${Bedding.product_category_parent }"
													name="order_mtArray_category1"> <input type="text"
													value="${Bedding.product_category_median }" id="median"
													readonly readonly name="order_mtArray_category2">

											</div>
											<div class="main_text5">
												<input type="text" value="${Bedding.product_name }"
													name="order_mtArray_product" id="product_name" readonly>
											</div>
											<div class="price">
												<input type="text" value="${Bedding.product_price }"
													name="order_mtArray_price" class="product_price" readonly>
												<input type="text" value="원" id="won" readonly>
											</div>
											<div class="count">
												<input type='button' value='-' id="button1" class="button1">
												<input type="text" value="0" class="result" readonly
													name="order_mtArray_count"> <input type='button'
													value='+' id="button1" class="button">
											</div>
											<div class="price1">
												<input type="text" class="price2" readonly value="0"
													name="order_mtArray_sumPrice"> 원
											</div>

										</div>
									</c:forEach>
								</div>
							</div>


							<div class="price5">
								합계 금액: <input type="text" class="price3" id="pppp"readonly value=""
									name="order_price"> 원
							</div>




							<div class="main_text6">세탁시 요청사항</div>
							<div class="service1">
								<input type="checkbox" id="checkbox1"
									value="특수오염 제거 요청 (혈흔/음식물/토사물/기타 등)" name="data1" style="margin-left:-10px;"> <label
									for="checkbox1" style="margin-left:10px;">특수오염 제거 요청 (혈흔/음식물/토사물/기타 등)</label>


							</div>
							<div class="service2">
								<input type="checkbox" id="checkbox2"
									value="흰색 의류 전처리 요청 (불림/표백작업 ※추가금액발생)" name="data2" style="margin-left:-10px;"> <label
									for="checkbox2" style="margin-left:10px;">흰색 의류 전처리 요청 (불림/표백작업 ※추가금액발생)</label>

							</div>

							<div class="main_text7">
								<textarea id="textarea1" maxlength="99999"
									placeholder="세탁시 요청사항을 입력하세요" name="data3"></textarea>
							</div>
							<div class="service">기사님께 요청사항</div>
							<div class="service3">
								<input type="checkbox" id="checkbox3" value="수거시 사용한 가방은 돌려주세요"
									name="data4" style="margin-left:-10px;"> <label for="checkbox3" style="margin-left:10px;">수거시 사용한
									가방은 돌려주세요</label>

							</div>
							<div class="service4">
								<input type="checkbox" id="checkbox4" value="방문전 연락 부탁드려요"
									name="data5" style="margin-left:-10px;"> <label for="checkbox4" style="margin-left:10px;">방문전 연락
									부탁드려요</label>
							</div>
							<div class="service5">
								<input type="checkbox" id="checkbox5" value="안전한 배송 부탁드려요"
									name="data6" style="margin-left:-10px;"> <label for="checkbox5" style="margin-left:10px;">안전한 배송
									부탁드려요</label>
							</div>

							<div class="service6">
								<textarea id="textarea2" maxlength="99999"
									placeholder="수거/배달시 요청사항을 입력해주세요" name="data7"></textarea>
							</div>

							<input type="hidden" value="${OrderData.customer_no}"
								name="customer_no"> <input type="hidden"
								value="${OrderData.order_address1 }" name="order_address1">
							<input type="hidden" value="${OrderData.order_address2}"
								name="order_address2"> <input type="hidden"
								value="${OrderData.order_customer_name}"
								name="order_customer_name"> <input type="hidden"
								value="${OrderData.order_customer_phone }"
								name="order_customer_phone"> <input type="hidden"
								value="${OrderData.cm_gate_passwd }" name="cm_gate_passwd">
							<input type="hidden" value="${OrderData.order_pickup_date }"
								name="order_pickup_date"> <input type="hidden"
								value="${OrderData.order_pickup_time }" name="order_pickup_time">
							<input type="hidden" value="${OrderData.order_type}"
								name="order_type">
							<input type="hidden" value="0" name="order_use_coupon_price">

							<div class="main_text10">
								<input type="button" value="주문하기" id="pay" onclick="order()"
									class="action-button shadow animate blue" > 
								<input type="button" value="취소하기" id="paycancel" onclick="#"
									class="action-button shadow animate blue">
							</div>
						</div>




					</form>
				</div>
				<div class="space_right"></div>
			</div>
			 <script>
        document.getElementById("pay").addEventListener("click",function order(){
          var money1 = document.getElementById("pppp").value;
          var abc = /[^0-9]/g;
          var totalpay = Number(money1.replace(abc,""));
          var totalpay2 = Number(money1);
			console.log(totalpay2);
          if(totalpay2 < 15000){
         	alert("최소주문금액은 15000원 입니다.");
          }else{
        	  document.getElementById("form1").submit();
          }

        })

        
      </script>
			
			
			
			<!-- <script>
			if(Number(document.getElementById("pppp").value) >= 15000){
				document.getElementById("form1").submit();
			}
			
			</script> -->
			
			
			
			<script>
  
  // 현재 화면에 표시된 값
  const resultElement = document.getElementsByClassName('button');
  
  // console.log(resultElement);
  for(let i = 0 ;i< resultElement.length; i++){
    
	
    resultElement[i].addEventListener("click", function (e){
      
      e.target.parentNode.childNodes[3].value = Number(e.target.parentNode.childNodes[3].value)+1; 
      console.log(e.target.parentNode.childNodes[3].value); // +버튼 클릭시 숫자가 올라갈 위치 타겟으로 찾기
      if(e.target.parentNode.childNodes[3].value > 10){
        alert('최대 수량은 10개 입니다.');
        e.target.parentNode.childNodes[3].value = 10;
    }
   
    var str =document.getElementsByClassName('product_price');
    
    for(let j=0; j<str.length; j++){
      a = Number(str[j].value);
    //console.log(e.target.parentNode.parentNode.childNodes[5].childNodes[1].value); 상품가격 타겟으로 찾아가기
    //console.log(a); 상품하나당 가격   (a)
   
	var str1 = document.getElementsByClassName('result');
    // console.log(str1); */
    str11 = Number(str1[j].value);
    // console.log(e.target.p); */
    
    var str2 = document.getElementsByClassName('price2');
    // console.log(str2[j]); */
    str2[j].value = (a * str11);
    sum=0;
    
   //  console.log(a,str11);
    //console.log(str2[j].value);
 
    // sum+=str2[j].value;
    // console.log(sum);
    var price = document.getElementsByClassName('price2');
    z = 0;
    for(let k=0; k<price.length; k++){
      z=z+Number(price[k].value);
    }
    document.getElementsByClassName('price3')[0].value = z;
    

    }
    
    
    
    
  
    })

    
    
  }


  // 현재 화면에 표시된 값
  const resultElement1 = document.getElementsByClassName('button1');
 
  //console.log(resultElement1);
  for(let i = 0 ;i< resultElement1.length; i++){
    

    resultElement1[i].addEventListener("click", function (e){
      
      e.target.parentNode.childNodes[3].value = Number(e.target.parentNode.childNodes[3].value)-1; 
      //console.log(e.target.parentNode.childNodes[3].value);
      if(e.target.parentNode.childNodes[3].value < 0){
      alert('최소 수량은 1개 입니다.');
      e.target.parentNode.childNodes[3].value = 0;
    }
      var str =document.getElementsByClassName('product_price');

    for(let j=0; j<str.length; j++){
      a = Number(str[j].value);
    //console.log(a);

    var str1 = document.getElementsByClassName('result');
    //console.log(str1[j].value);
    str11 = Number(str1[j].value);
    
    var str2 = document.getElementsByClassName('price2');
    //console.log(str2[j]);
    str2[j].value = (a * str11);
    //console.log(a,str11);
    //console.log(str2[j].value);

    var price = document.getElementsByClassName('price2');
    z = 0;
    for(let k=0; k<price.length; k++){
      z=z+Number(price[k].value);
    }
    document.getElementsByClassName('price3')[0].value = z;


    }
    
    })      
  }
  
  
  </script>

		</div>
	</div>
</body>

<jsp:include page="/common/footer.jsp" />
</html>