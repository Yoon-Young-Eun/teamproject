<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- <%
// 1. 사용자 입력 정보 추출 : 검색 기능은 나중에 구현
// 2. 데이터베이스 연동 처리
BoardVO vo = new BoardVO();
BoardDAO boardDAO = new BoardDAO();
List<BoardVO> boardList = boardDAO.getBoardList(vo);
// 3. 응답 화면 구성
%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board List</title>
</head>
<body>
	<h1>글 목록</h1>
	<h3>
		${userName} 회원님 환영합니다.<a href="logout.do">Log-Out</a>
	</h3>
	<!-- 검색 시작 -->
	<form action="getBoardList.do" method="post">
		<table border="1">
			<tr>
				<td><select name="searchCondition">
						<c:forEach items="${conditionMap}" var="option">
							<option value="${option.value}">${option.key}</option>
						</c:forEach>
				</select> <input type="text" name="searchKeyword" /> <input type="submit"
					value="검색" /></td>
			</tr>
		</table>
	</form>
	<br />
	<!-- 검색 종료 -->
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>등록일</th>
			<th>조회수</th>
		    <th>이미지</th>
		</tr>
		<c:forEach var="board" items="${boardList }">
			<tr>
				<td>${board.seq }</td>
				<td><a href="getBoard.do?seq=${board.seq }">${board.title }</a></td>
				<td>${board.writer }</td>
				<%-- <td>${board.regDate }</td> --%>
				<td>${board.regDate }</td>
				<td>${board.cnt }</td>
				<td><img src="${board.downloadFile}">   </td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<a href="insertBoard.jsp">새글 작성</a>
</body>
</html>