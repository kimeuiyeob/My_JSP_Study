<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- form태그의 전달값을 request.getParameter로 받는다. -->
	<%-- 	<h3>
		아이디 :
		<%=request.getParameter("id")%>
		비밀번호 :
		<%=request.getParameter("password")%>
	</h3> --%>
	<!-- ================================================== -->
	<%
	String correctID = "rladmlduq47";
	String correctPW = "wmfwmf159";
	String id = request.getParameter("id");
	String pw = request.getParameter("password");
	/* out.print("아이디 : " + id);
	out.print("비밀번호 : " + pw); */
	if (id.equals(correctID)) {
		out.print("비밀번호가 틀렸습니다.");
		if (pw.equals(correctPW)) {
			response.sendRedirect("../ch02/main.jsp");
		}
	}else {
		out.print("해당 아이디가 틀렸습니다.");
	}
	%>
	<p><a href="form.jsp">로그인 페이지로 돌아가기</a></p>
	<!-- ================================================== -->



</body>
</html>