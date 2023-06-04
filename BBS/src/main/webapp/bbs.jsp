<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.io.PrintWriter"%>
<%@ page import="board.BoardDAO"%>
<%@ page import="board.Board"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<!-- css연결 -->
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">

<title>JSP 게시판 웹 사이트</title>
</head>

<style type="text/css">
a, a:hover {
	color: black;
	text-decoration: none;
}
</style>

<body>
	<%
	/* 만약 로그인이 되어있다면 해당 세션값을 변수에 담아준다.ㄹ */
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	/* 첫 페이지 = 1 , 페이지 값이 넘어오면 해당 페이지*/
	int pageNumber = 1;
	if (request.getParameter("pageNumber") != null) {
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
	}
	%>

	<!-- 네비게이션 바============================================================== -->
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs=example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">JSP Website</a>
		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">메 인</a></li>
				<li class="active"><a href="bbs.jsp">게시판</a></li>
			</ul>

			<!-- 만약 userID 값이 없다면 세션에 등록되지 않은 즉 로그인이 안된
			 상태이므로 아래 네비게이션바를 안보이게 조건문을 걸어준다.-->
			<%
			if (userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"> 접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul></li>
			</ul>
			<!-- 값이 있다면 로그인이 된상태이므로 조건문에 맞는 네비게이션바 출력 -->
			<%
			} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul></li>
			</ul>
			<%
			}
			%>

		</div>
	</nav>
	<!-- ======================================================================== -->
	<!-- 게시판 테이블 -->
	<div class="container">
		<div class="row">

			<table class="table table-striped"
				style="text-align: center; border: 1px solid #ddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
					<!-- 게시판 반복으로 출력 -->
					<%
					BoardDAO boardDAO = new BoardDAO();
					ArrayList<Board> boardList = boardDAO.getList(pageNumber);
					for (int i = 0; i < boardList.size(); i++) {
					%>
					<tr>
						<td><%=boardList.get(i).getBoardID()%></td>
						<td><a
							href="view.jsp?boardID=<%=boardList.get(i).getBoardID()%>"> <%=boardList.get(i).getBoardTitle()%></a></td>
						<td><%=boardList.get(i).getUserID()%></td>
						<td><%=boardList.get(i).getBoardDate().substring(0, 11) + boardList.get(i).getBoardDate().substring(11, 13) + "시"
		+ boardList.get(i).getBoardDate().substring(14, 16) + "분"%></td>
					</tr>
					<%
					}
					%>

				</tbody>
			</table>
			<!-- ======================================================================== -->
			<!-- 이전, 다음 페이지 처리 -->
			<%
			if (pageNumber != 1) {
			%>
			<a href="bbs.jsp?pageNumber=<%=pageNumber - 1%>"
				class="btn btn-success btn-arrow-left">이전</a>
			<%
			}
			if (boardDAO.nextPage(pageNumber + 1)) {
			%>
			<a href="bbs.jsp?pageNumber=<%=pageNumber + 1%>"
				class="btn btn-success btn-arrow-left">다음</a>
			<%
			}
			%>
			<!-- ======================================================================== -->
			<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>

		</div>
	</div>
	<!-- ======================================================================== -->
</body>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>

</html>
