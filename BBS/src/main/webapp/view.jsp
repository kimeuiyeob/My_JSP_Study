<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- PrintWriter라이브러리 임포트 -->
<%@ page import="java.io.PrintWriter"%>
<%@ page import="board.Board"%>
<%@ page import="board.BoardDAO"%>

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

<body>
	<%
	/* 만약 로그인이 되어있다면 해당 세션값을 변수에 담아준다.ㄹ */
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}

	//======================================================================
	/* 제목 클릭시 해당 게시물아이디 url로 넘어온 데이터값을 파라미터로 받는다. */
	int boardID = 0;
	if (request.getParameter("boardID") != null) {
		boardID = Integer.parseInt(request.getParameter("boardID"));
	}
	Board board = new BoardDAO().getBoard(boardID);
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
	<!-- 게시판 테이블 상세 보기-->
	<div class="container">
		<div class="row">

			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3"
							style="background-color: #eeeeee; text-align: center;">게시판 글
							보기</th>
					</tr>
				</thead>
				<tbody>

					<tr>
						<td style="width: 20%">글 제목</td>
						<!-- 특수문자를 해결해줌으로써 보안상에도 문제를 해결할수있다.  -->
						<!-- 만약 제목에 <script>alert를 띄우게 되면 게시판을 들어올때마다 경고창이 뜨게된다.</script> -->
						<!-- 크로스 사이트 스크립트 공격 -->
						<td colspan="2"><%=board.getBoardTitle().replaceAll(" ", "&nbsp").replaceAll("<", "&lt;").replaceAll(">", "&gt;")
		.replaceAll("\n", "<br>")%></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td colspan="2"><%=board.getUserID()%></td>
					</tr>
					<tr>
						<td>작성일자</td>
						<td colspan="2"><%=board.getBoardDate().substring(0, 11) + board.getBoardDate().substring(11, 13) + "시"
		+ board.getBoardDate().substring(14, 16) + "분"%></td>
					</tr>
					<tr>
						<td>내용</td>
						<!-- 디비에 저장할때 해당 특수문자들은 HTML 언어로 확실히 픽스해서 담아주면된다.-->
						<td colspan="2" style="min-hight: 200px; text-align: left"><%=board.getBoardContent().replaceAll(" ", "&nbsp").replaceAll("<", "&lt;").replaceAll(">", "&gt;")
		.replaceAll("\n", "<br>")%></td>
					</tr>

				</tbody>
			</table>
			<!-- ======================================================================== -->
			<!-- 내가 쓴 글이라면 수정 -->
			<a href="bbs.jsp" class="btn btn-primary">목록</a>
			<%
			if (userID != null && userID.equals(board.getUserID())) {
			%>

			<a href="update.jsp?boardID=<%=boardID%>" class="btn btn-primary">수정</a>
			<a onclick="return confirm('정말로 삭제 하시겠습니까?')"
				href="deleteAction.jsp?boardID=<%=boardID%>" class="btn btn-primary">삭제</a>

			<%
			}
			%>
			<!-- ======================================================================== -->

		</div>
	</div>
</body>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>

</html>
