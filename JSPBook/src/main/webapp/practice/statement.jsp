<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- JDBC 사용시 필요한 임포트 -->
<%@ page import="java.sql.*"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 쿼리문 실행 -->
	<!-- excuteQuery(String sql)  => select문을 실행할때 사용, ResultSet객체 반환 -->
	<%-- <%
	Connection conn = null;
	...(생략)...
	Statement stmt = conn.createStatement();
	String sql = "select * from [테이블명] where id = '1'";
	ResultSet rs = stmt.excuteQuery(sql);
	stmt.close();
	%> --%>
	<!-- excuteUpdate(String sql) => 삽입,수정,삭제 문 실행할때 사용, int 반환 -->
	<!-- update -->
	<%-- <%
	Connection conn = null;
	...(생략)...
	Statement stmt = conn.createStatement();
	String sql = "update [테이블명] set name = '김의엽' where id = '1'";
	ResultSet rs = stmt.excuteUpdate(sql);
	...(생략)...
	stmt.close();
	%> --%>
	<!-- delete -->
	<%-- <%
	Connection conn = null;
	...(생략)...
	Statement stmt = conn.createStatement();
	String sql = "delete from [테이블명] where id = '1'";
	ResultSet rs = stmt.excuteUpdate(sql);
	...(생략)...
	stmt.close();
	%> --%>
	<!-- insert -->
	<%-- <%
	Connection conn = null;
	...(생략)...
	String sql = "insert into [테이블명] (id,name,pw)values (?,?,?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.set(1,id);
	pstmt.set(2,"김의엽");
	pstmt.set(3,"즐즐");
	pstmt.excuteUpdate();
	...(생략)...
	stmt.close();
	%> --%>

</body>
</html>