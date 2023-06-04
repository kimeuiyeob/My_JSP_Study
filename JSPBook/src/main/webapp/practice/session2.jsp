<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	if (id.equals("rladmlduq47") && pw.equals("wmfwmf159")) {
		/* 세션을 생성 및 해당 세션값을 담아준다. */
		session.setAttribute("sessionID", id);
		session.setAttribute("sessionPW", pw);

		out.print("세션 등록 성공!!<br>");
		out.print(id + "님 환영합니다~~<br>");

		/* getAttribute Object타입이어서 형변환 */
		String sessionId = (String) session.getAttribute("sessionID");
		out.print("sessionID : " + sessionId + "<br>");
		
		out.print("===세션 삭제 후 ===<br>");
		session.removeAttribute("sessionID");
		String removeSession = (String) session.getAttribute("sessionID");
		out.print("sessionID : " + removeSession);

	} else {
		out.print("세션 등록 실패!!");
	}
	%>

</body>
</html>