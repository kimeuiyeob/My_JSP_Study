<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>로그인 성공!!</h1>
	<h3>
		<%
		String id = request.getParameter("id");
		String pw = request.getParameter("password");

		out.print("나의 아이디 : " + id);
		out.print("나의 비밀번호 : " + pw);
		%>
	</h3>

</body>
</html>