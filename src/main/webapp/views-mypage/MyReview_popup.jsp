<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>[세모]세탁의 모든것</title>
    <link rel="stylesheet" href="/common/css/button.css">
    <link rel="stylesheet" href="/css/MyReview_popup.css">
    <!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<!-- <form name="myform" id="myform" method="GET" action="/insertReview.do"> -->
<form id="myform" name="myform" method="post" >
<div class="wrapper">
<div class="review_table">
<div class="review_head"><h1>리뷰 작성</h1></div>
<div class="review_rating">
<div class="review_rating_title">서비스는 어떠셨나요?<span class="ft_gray mg_left">서비스에 대한 별점을 매겨주세요</span></div>
<div class="review_rating_star">

    <fieldset>
        <input type="radio" name="board_review_rating" value="5" id="rate1"><label for="rate1">⭐</label>
        <input type="radio" name="board_review_rating" value="4" id="rate2"><label for="rate2">⭐</label>
        <input type="radio" name="board_review_rating" value="3" id="rate3"><label for="rate3">⭐</label>
        <input type="radio" name="board_review_rating" value="2" id="rate4"><label for="rate4">⭐</label>
        <input type="radio" name="board_review_rating" value="1" id="rate5"><label for="rate5">⭐</label>
    </fieldset>

</div>
</div>
<div class="review_body">
<div class="review_body_content"><input name="board_review_title" placeholder="제목 작성해주세요"></input></div>
<div class="review_body_content"><textarea name="board_review_content" placeholder="서비스 이용 후기를 작성해주세요"></textarea></div>
</div>
<div class="review_notice">
<span class="ft_red ft_size_s">품질, 배송, 문의 응대 등 서비스의 이용 경험을 알려주세요.</span>
<br>
<span class="ft_gray ft_size_s">
욕설/비속어가 포함된 리뷰는 고지 없이 삭제될 수 있습니다.
</span>

</div>
<input type="hidden" value="${OrderInfo.customer_no}" name="customer_no">
<input type="hidden" value="${OrderInfo.order_no}" name="order_no">
<input type="hidden" value="${OrderInfo.order_customer_name}" name="board_review_name">
<div class="review_btn">

	<div class="end">
		<input type="button" onclick="fn_editFL();result();" id="nextBtn" class="action-button shadow animate blue"  value="저장"/>
		<div class="action-button shadow animate blue" onclick="self.close();">취소</div>
	</div>

</div>

</div>

</div>
</form>

 
<script>
function fn_editFL()
{
 console.log("adfasdfasdfasdf");

   $.ajax({
      url : "/insertReview.do",
      data : $("#myform").serialize(),
      dataType: "json",
      type: "post",
      success : function(xh)
            {      
    	  	console.log("adfadfgadfgadfgadgf");

               window.close();
            },
            complete: function(xh)
            {        	console.log("azzz");
                   window.close();
                }
   });
}

</script>    
    <script>
    function result(){
       
       opener.document.getElementById("chse").innerText="12";
       
    }
    </script>
    
</body>
</html>






