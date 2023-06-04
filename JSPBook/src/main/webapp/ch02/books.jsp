<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.Date"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- 부트스트랩은 웹 디자인을 쉽게 하귀 위해 CSS,HTML,JS을 모아놓은 프론트엔드 프레임워크 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<body>


	<%@ include file="header.jsp"%>
	<!-- ============================================================== -->
	<%!String greeting = "도서 목록";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>
	<!-- ============================================================== -->
	<jsp:useBean id="book" class="dao.Book" scope="page" />
	<div class="container">
		<div class="text-center">
			<%
			String title = "Hello Coding";
			String Content = "코딩은 무척 재밌습니다.";
			String name = "김의엽";
			Integer price = 30000;
			%>
			<jsp:setProperty name="book" property="bTitle" value="<%=title%>" />
			<jsp:setProperty name="book" property="bContent" value="<%=Content%>" />
			<jsp:setProperty name="book" property="bName" value="<%=name%>" />
			<jsp:setProperty name="book" property="bPrice" value="<%=price%>" />
			<h1>
				<jsp:getProperty name="book" property="bTitle" />
			</h1>
			<br>
			<h4>
				<jsp:getProperty name="book" property="bContent" /><br>
				지은이 : <jsp:getProperty name="book" property="bName" /><br>
				<jsp:getProperty name="book" property="bPrice" />원<br>
			</h4>
		</div>
		<hr>
	</div>
	<!-- ============================================================== -->
	<%@ include file="footer.jsp"%>


</body>
</html>