<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<!-- font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
<!-- resources -->
<link rel="stylesheet" href="/views-mypage/resources/css/MyAsklist.css"/>
<link rel="stylesheet" href="/common/css/header.css"/>
<link rel="stylesheet" href="/common/css/button.css"/>
<link rel="stylesheet" href="/common/css/footer.css"/>
<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

<!-- 체크박스 js -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="/admin/js/checkbox.js"></script>

</head>
<body>

<jsp:include page="/common/logined-header.jsp"/> 

<div class = "page-wrapper">
	<!-- 사이드메뉴 -->
	<div class = "sidemenu">
		<jsp:include page="/common/mypageSide.jsp"/>
	</div>
	
	<!-- 본문 -->
	<jsp:include page = "/common/quick-menu.jsp"/>
	<div class = "content-wrapper">
		<!-- 제목 -->
		<div class = "content-title-wrapper">
			<div class = "content-title">
				<h2>문의내역</h2>
			</div>
			<!-- 소제목 -->
			<div class = "content-subtitle-wrapper">
				<p>총 <b>${cnt3}</b>개의 글</p>		
				<!-- 검색창 --> 
				<div class = "searchbar-wrapper">
					 <!-- 분류 -->
					<div class = "sort">
						<button onclick="location.href='/myask.do?customer_no=${num}'">글쓰기</button>
						<input type="button" value="삭제" id="delBtn">
					</div>	
				</div><!-- content-subtitle-wrapper -->
			</div> <!-- content-title-wrapper -->	
		
		<!-- 주문 상세 내용 -->
		<div class = "order-wrapper">
			<table>
				<thead class = "order-body-title">
					<tr>
						<th class = "check-title" style = "width : 10%; text-align : center;"><input type = "checkbox" name="check" class="allcheck"></th>
						<th class = "num-title" style = "width : 10%;">번호</th>
						<th class = "content-content-title" style = "width : 30%;">제목</th>
						<th class = "address-title" style = "width : 20%;">날짜</th>
						<th class = "address-title" style = "width : 20%;">비고</th>
					</tr>
				</thead>
				
				<tbody class = "order-body-content">
					<c:forEach var = "asklist" items = "${asklist}">
					<tr style = "border-bottom : 1px solid #cdcdcd;">
						<td class = "check-title" style = "width : 10%; text-align : center;"><input type = "checkbox" name="check" class="checkone"></td>
						<td class = "num-content" style = "width : 10%; text-align : center;">${asklist.board_qna_no }</td>
						<td class = "num-content" style = "width : 30%; text-align : center;">[${asklist.board_qna_type}] <a href = "/askdetail.do?board_qna_no=${asklist.board_qna_no}&board_qna_status=${asklist.board_qna_status}">${asklist.board_qna_title}</a></td>
						<td class = "content-content" style = "width : 20%; text-align : center;">${asklist.board_qna_reg_date}</td>
						<td class = "address-content" style = "width : 20%; text-align : center;">
							<c:choose> 
                                 <c:when test="${asklist.board_qna_status eq 0}">
                                    답변대기
                                 </c:when>  
                                 
                                 <c:otherwise>
                                    답변완료
                                 </c:otherwise> 
                           	</c:choose> 
						</td>
					</tr>
					</c:forEach>	
				</tbody>
			</table>
			
						<!-- pagaing 처리 -->
						<div class = "paging-wrapper">					
							<c:if test="${cnt3 > 0}">
								<div class="paging">
							    <div class="paging-text">
								<c:if test="${startPage > pageBlock}"> <!-- 시작번호가 5보다 크면, 앞에 '이전'을 붙여줌 -->
									<a href="/myasklist.do?pageNum=${startPage-pageBlock}&customer_no=${num}"><i class="fas fa-chevron-left"></i></a>
								</c:if>
								</div>
								<div class="paging-num">
								<c:forEach var="i" begin="${startPage}" end="${endPage}">
										<a href="/myasklist.do?pageNum=${i}&customer_no=${num}">${i}</a>
								</c:forEach>
								</div>							
								<div class="paging-text">
								<c:if test="${endPage < pageCount}">
									<a href="/myasklist.do?pageNum=${startPage + pageBlock}&customer_no=${num}"><i class="fas fa-chevron-right"></i></a>
								</c:if>
								</div>
								</div>
							</c:if>
						</div>
						<!-- 페이징 종료 -->
			
		</div><!-- order-wrapper -->
	</div><!-- content-title-wrapper -->
	<script>
	function all(){
		const checkboxes = document.getElementByName("all");
		checkboxes.forEach((checkbox) =>{
			checkbox.checked = all.checked;
		})
	}
	
	</script>
	
		<script type="text/javascript">
		//체크삭제
		$("#delBtn").click(function() {
			console.log("1");
			var rowData = new Array();
			var num = new Array();
			var checkbox = $("tbody input[name=check]:checked");

			// 체크된 체크박스 값을 가져온다
			checkbox.each(function(i) {
				var tr = checkbox.parent().parent().eq(i);
				console.log(tr);	
				var td = tr.children();
				rowData.push(tr.text());
				// td.eq(0)은 체크박스 이므로  td.eq(4)=전화번호 의 값을 가져온다.

				var number = td.eq(1).text() + ",";
				number = number.substring(0, number.length - 1); //마지막 , 제거
				// 가져온 값을 배열에 담는다.
				num.push(number);
				console.log(num);

				$.ajax({
					url : "deleteQnA.do",
					type : "get",
					traditional : true,
					data : {
						num : num,
					},
					dataType : 'text',
					success : function(data) {
						location.href = "/myasklist.do?customer_no="+${num};
						console.log(data);
					}
				});
			});
		});
	</script>

	
	
</div><!-- content-wrapper -->	
</div>
	<jsp:include page="/common/footer.jsp" />
</body>
</html>