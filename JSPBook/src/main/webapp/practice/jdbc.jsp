<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- JDBC 사용시 필요한 임포트 -->
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- Mysql데이터 베이스 연결 -->
	<%
	Connection conn = null;
	try {
		String url = "jdbc:mysql://localhost:3306/데이터베이스이름";
		String user = "root";
		String pw = "1234";

		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, pw);
		out.print("데이터 베이스 연결 성공!!");
	} catch (SQLException e) {
		out.print("데이터 베이스 연결 실패~~");
		out.print("SQLException : " + e.getMessage());
	} finally {
		if (conn != null) {
			conn.close();
		}
	}
	%>

</body>
</html>