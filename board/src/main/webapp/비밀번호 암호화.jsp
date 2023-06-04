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
	//자바에서 회원가입을 할때 해당 객체에 set으로 넣는다.
	//				 String 비밀번호 = request.getParameter("password");
	//이때 비밀번호를 => 비밀번호 = new String(Base64.getEncoder().encode(비밀번호.getBytes())); 하면 암호화가 된다.
	//암호화가 된 비밀번호를 해당 객체.setPassword(비밀번호); 이렇게 넣어주고 데이터베이스에 저장시키면 암호화가 된 비밀번호가 디비에 저장된다.

	//주의해야할께 회원가입때 암호화된 비밀번호를 저장시켰으므로 로그인시에도 똑같이 암호화된 비밀번호로 확인해야 로그인이 성공할수있다.
	%>

</body>
</html>