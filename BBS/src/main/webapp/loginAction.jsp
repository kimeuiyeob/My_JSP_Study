<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 해당 클래스 임포트 -->
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!-- useBean JAVA BEANS사용 , User클래스를 사용한다, scope = 해당 페이지 내에서 -->
<jsp:useBean id="user" class="user.User" scope="page" />

<!-- form태그 해당 name값을 setProperty로 데이터를 받는다. -->
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>

	<%
	/* 세션에서 값을 가져와 값이 있다면 이미 로그인된 상태이므로 조건문 걸어주기 */
	String userID = null;
	if (session.getAttribute("userId") != null) {
		userID = (String) session.getAttribute("userId");
	}
	if (userID != null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 로그인 되어있습니다.')");
		script.println("location.href = 'main.jsp'");
		script.println("</script>");
	}

	/* ============================================================= */

	/* 로그인 화면에서 아이디와 비밀번호 입력시 조건문 */
	UserDAO userDAO = new UserDAO();
	int result = userDAO.login(user.getUserID(), user.getUserPassword());
	//1 : 비밀번호 일치
	if (result == 1) {
		//로그인 성공시 세션 담기
		session.setAttribute("userID", user.getUserID());

		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = 'main.jsp'");
		script.println("</script>");
	}
	//0 : 비밀번호 불일치
	else if (result == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호가 틀렸습니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
	//-1 : 아이디가 없음
	else if (result == -1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('아이디가 존재하지 않습니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
	//-2 : 데이터베이스 오류
	else if (result == -2) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('데이터베이스 오류가 발생했습니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
	%>

</body>
</html>