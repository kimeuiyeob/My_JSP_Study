<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>주민 번호 : <%= request.getParameter("id") %></h1>
<h1>이름 : <%= request.getParameter("name") %></h1>
<h1>나이 : <%= request.getParameter("age") %></h1>

</body>
</html>