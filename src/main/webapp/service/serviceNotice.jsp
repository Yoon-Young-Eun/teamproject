<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<<<<<<< HEAD
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<!-- font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
<!-- resources -->
<link rel="stylesheet" href="/css/serviceNotice.css"/>
<link rel="stylesheet" href="/common/css/header.css"/>
<link rel="stylesheet" href="/common/css/button.css"/>
<link rel="stylesheet" href="/common/css/footer.css"/>
<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
=======
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="/css/serviceNotice.css">
  <link rel="stylesheet" href="/common/css/button.css">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>[세모]세탁의 모든것</title>

>>>>>>> main
</head>
<body>

<form action="/login.do">
	<div id="header">
	<script>
		$(function() {
			var id = "${id}";
			if (id == "") {
				$('#header').load("/common/header.jsp");
			} else {
				$('#header').load("/common/logined-header.jsp");
			}
		});
	</script>
	</div>
</form>

<div class = "page-wrapper">
	<!-- 사이드메뉴 -->
	<div class = "sidemenu">
		<jsp:include page="/common/centerSide.jsp"></jsp:include>
	</div>

	<!-- 본문 -->
	<jsp:include page = "/common/quick-menu.jsp"/>
	<div class = "content-wrapper">
	<!-- 제목 -->
		<div class = "content-title-wrapper">
			<div class = "content-title">
				<h2>공지사항</h2>
			</div>
			<!-- 소제목 -->
			<div class = "content-subtitle-wrapper">
				<p>세모의 소식을 확인해보세요</p>		
			</div><!-- content-subtitle-wrapper -->
		</div> <!-- content-title-wrapper -->	
    <div class="main-wrapper">
    
    	      <div class="b_button">
							<!-- 테이블 행 필터 -->
							<form name="selectname" action="getBoardList.do" method="get">
								<input type="hidden" name="searchCondition" value="${search.searchCondition}" /> 
								<input type="hidden" name="searchKeyword" value="${search.searchKeyword}" />

								<div class="selectP">
									<select name="selectPage" onchange="this.form.submit()">
										<option value="">선택</option>
										<option value="5">5</option>
										<option value="10">10</option>
										<option value="20">20</option>
										<option value="50">50</option>
									</select>
								</div>
							</form>

							<div class="icon_flex">
								<!-- 검색기능 -->
								<div>
									<form action="getBoardList.do" method="get">
										<div class="icon_flex">
											<select name="searchCondition">
													<c:forEach items="${condition}" var="option">
														<div>
															<option value="${option.value}">${option.key}</option>
														</div>
													</c:forEach>
											</select> <input type="text" name="searchKeyword" />
												
													<input type="submit" value="검색" style="height: 30px; width:45px;"/>

												 <input type="reset" value="초기화" style="height: 30px; width:45px;"/>
										</div>
									</form>
								</div>
							</div>

				</div>
      


						<table class="main_text3">
							<thead>
							<tr>					
							<th class="main_textNumber">글번호</th>
							<th class="main_textTitle">제목</th>
							<th class="main_textDate">작성일</th>
							</tr>
							</thead>

							<tbody>
							<c:forEach var="notice" items="${boardList}">	
							
									<tr class="notice_title" onclick="location.href='/getBoard.do?notice_no=${notice.notice_no}'">
										<td>${notice.notice_no}</td>
										<td stype="width:400px;">${notice.notice_title}</td>
										<td class="center">${notice.notice_reg_date}</td>
									</tr>
							</c:forEach>
						</tbody>
						
					</table>
						<!-- pagaing 처리 -->
				
						<div class = "paging-wrapper">					
							<c:if test="${count > 0}">
								<div class="paging">
							    <div class="paging-text">
								<c:if test="${startPage > pageBlock}"> <!-- 시작번호가 5보다 크면, 앞에 '이전'을 붙여줌 -->
									<a href="/getBoardList.do.do?pageNum=${startPage-pageBlock}&customer_no=${num}"><i class="fas fa-chevron-left"></i></a>
								</c:if>
								</div>
								<div class="paging-num">
								<c:forEach var="i" begin="${startPage}" end="${endPage}">
										<a href="/getBoardList.do.do?pageNum=${i}&customer_no=${num}">${i}</a>
								</c:forEach>
								</div>							
								<div class="paging-text">
								<c:if test="${endPage < pageCount}">
									<a href="/getBoardList.do.do?pageNum=${startPage + pageBlock}&customer_no=${num}"><i class="fas fa-chevron-right"></i></a>
								</c:if>
								</div>
								</div>
							</c:if>
						</div><!-- 페이징 종료 -->
		</div>
	</div>
	</div>
</div>	
</body>
<jsp:include page="/common/footer.jsp" />
</html>