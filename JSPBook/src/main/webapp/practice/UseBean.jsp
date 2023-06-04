<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 풀경로로 해당 자바클래스를 BEAN으로 등록하고 id를 person으로 준다. => 그럼 person으로 해당 필드값 접근 가능 -->
	<jsp:useBean id="person" class="dao.Person" scope="page" />

	<%
	person.setId(930704);
	person.setName("KIMEUIYEOB");
	person.setAge(31);
	%>

	<jsp:setProperty name="person" property="id" value="930704" />
	<jsp:setProperty name="person" property="name" value="KIMEUIYEOB" />
	<jsp:setProperty name="person" property="age" value="31" />

	<!-- ============================================================================ -->
	<h1>
		<%=person.getId()%>
		<br>
		<%=person.getName()%>
		<br>
		<%
		out.print("나이" + person.getAge());
		%>
	</h1>
	<h1>
		<jsp:getProperty name="person" property="id" />
		<br>
		<jsp:getProperty name="person" property="name" />
		<br>
		<jsp:getProperty name="person" property="age" />
	</h1>

	<!-- ============================================================================ -->

	<%-- 	<jsp:forward page="prac2.jsp">
		<jsp:param name="id" value="<%=person.getId()%>" />
		<jsp:param name="name" value="<%=person.getName()%>" />
		<jsp:param name="age" value="<%=person.getAge()%>" />
	</jsp:forward> --%>

	<!-- ============================================================================ -->

</body>
</html>