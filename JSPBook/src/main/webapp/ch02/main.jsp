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
	<%!String greeting = "Welcome to Web Shopping Mall";
	String tagline = "Welcome to Web Market!";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>
	<!-- ============================================================== -->
	<div class="container">
		<div class="text-center">
			<h3><%=tagline%></h3>
			<%
			Date day = new java.util.Date();
			String am_pm;
			int hour = day.getHours();
			int min = day.getMinutes();
			if (hour / 12 == 0) {
				am_pm = "AM";
			} else {
				am_pm = "PM";
				hour = hour - 12;
			}
			;
			%>
			<h4>현재 시간 : <%=hour%>시<%=min%>분</h4>
		</div>
		<hr>
	</div>
	<!-- ============================================================== -->
	<%@ include file="footer.jsp"%>


</body>
</html>