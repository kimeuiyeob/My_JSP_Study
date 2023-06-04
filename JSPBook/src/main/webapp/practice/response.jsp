<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 페이지 이동방법 -->
	<!-- forward 페이지이동 url은 바뀌지 않고 페이지 이동 -->
	<%-- <jsp:forward page="http://www.naver.com"> --%>

	<!-- response.sendRedirect 해당페이지로 이동 -->
	<%
	response.sendRedirect("http://www.naver.com");
	%>

</body>
</html>