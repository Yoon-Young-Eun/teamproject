<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="/css/serviceNotice.css">
  <link rel="stylesheet" href="/common/css/button.css">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>[세모]세탁의 모든것</title>
</head>
<body>

<div class="wrap">
    <div class="wrap1">
      <!-- 헤더 : 로그인 유무에 따라 달라짐 -->  
    <form action="/login.do">
		<div id = "header">
			<script>
				$(function(){
					var id = "${id}";
	
					if (id == ""){
						$('#header').load("/common/header.jsp");
					} else {
						$('#header').load("/common/logined-header.jsp");
					}
				});
			</script>
		</div>
	</form>
    
    
    <div class="main">
	<div class="space_left">
	<jsp:include page="/common/centerSide.jsp"></jsp:include>
	</div>
	<div class="main_box">
	
	<div class="main_text">
      <div class="main_text1">
         공지사항
         
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
									</select> entries per page
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
												<div>
													<input type="submit" value="검색" />
												</div>
												<div> <input type="reset" value="초기화" /></div>
										</div>
									</form>
								</div>
							</div>

						</div>
      </div>
      
      


						<table class="main_text3">
							<thead>
							<tr>
							<th class="main_textNumber">글번호</th>
							<th class="main_textTitle">제목</th>
							<th class="main_textContent">내용</th>
							<th class="main_textDate">작성일</th>
							</tr>
							</thead>
							<tbody>
					
							<c:forEach var="notice" items="${boardList}">	
				
									<tr class="notice_title" onclick="location.href='/getBoard.do?notice_no=${notice.notice_no}'">
										<td>${notice.notice_no}</td>
										<td>${notice.notice_title}</td>
										<td>${notice.notice_content}</td>
										<td class="center">${notice.notice_reg_date}</td>
									</tr>
							</c:forEach>

						
						</tbody>
						
					</table>
					<!-- pagaing 처리 -->
		
						<div>
							<c:if test="${count > 0}"> <!-- 조회된 데이터 개수가 0보다 크면 if문 실행 -->
								<div class="icon_flex">
								<div>
								<c:if test="${startPage > pageBlock}"> <!-- 시작번호가 5보다 크면, 앞에 '이전'을 붙여줌 -->
									<a href="getBoardList.do?pageNum=${startPage-pageBlock}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}"><div class="paging2">이전</div></a>
								</c:if>
								</div>
								<div>
								<div class="icon_flex">
								<c:forEach var="i" begin="${startPage}" end="${endPage}">
										<a href="getBoardList.do?pageNum=${i}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}"><div class="paging">${i}</div></a>
								</c:forEach>
								</div>
								</div>							
								<div>
								<c:if test="${endPage < pageCount}">
									<a href="getBoardList.do?pageNum=${startPage + pageBlock}&selectPage=${search.selectPage}&searchKeyword=${search.searchKeyword}&searchCondition=${search.searchCondition}"><div class="paging2">다음</div></a>
								</c:if>
								</div>
								</div>
							</c:if>
						</div><!-- 페이징 종료 -->
		</div>
					
	
	</div><!-- main_box -->
	

	<div class="space_right"></div>
	</div><!-- main -->
    </div><!-- wrap1 -->
    </div><!-- wrap -->
</body>
<jsp:include page="/common/footer.jsp" />
</html>