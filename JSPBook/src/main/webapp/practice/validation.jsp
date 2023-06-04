<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	var MyID = "rladmlduq47";
	var MyPW = "wmfwmf159";

	/* 유효성 검사 => 서버로 전송되기전에 웹 브라우저에서 스크립트문으로 검증하는 방법 */
	function checkLogin() {
		/* var loginform = document.getElementById("logForm"); <=아이디로 가져오는 방법*/
		var loginform = document.loginForm; /*<= name으로 가져오는방법 */
		if (loginform.id.value == "") {
			alert("아이디를 입력해주세요.");
			loginform.id.focus();
			return false; /* return false로 막아줘야 submit으로 안넘어간다. */
		} else if (loginform.password.value == "") {
			alert("비밀번호를 입력해주세요.");
			loginform.password.focus();
			return false;
		}
		var ID = loginform.id.value;
		var PW = loginform.password.value;
		/* script는 equals()메서드가 없나보다. */
		if (MyID == ID && MyPW == PW) {
			alert("로그인 성공!!");
			loginform.submit();
		} else {
			alert("아이디 및 비밀번호가 틀렸습니다.");
		}
	}
	/* ==================================================================== */
	/* 앤터키 추가하는 방법 */
	function enterkey() {
		if (window.event.keyCode == 13) {
			var loginform = document.loginForm;
			if (loginform.id.value == "") {
				alert("아이디를 입력해주세요.");
				loginform.id.focus();
				return false;
			} else if (loginform.password.value == "") {
				alert("비밀번호를 입력해주세요.");
				loginform.password.focus();
				return false;
			}
			var ID = loginform.id.value;
			var PW = loginform.password.value;

			if (MyID == ID && MyPW == PW) {
				alert("로그인 성공!!");
				loginform.submit();
			} else {
				alert("아이디 및 비밀번호가 틀렸습니다.");
			}
		}
	}
</script>
<body>

	<form id="logForm" name="loginForm" action="validation2.jsp"
		method="post">
		<p>
			아이디 : <input type="text" name="id" onkeyup="enterkey()">
		<p>
			비밀번호 : <input type="text" name="password" onkeyup="enterkey()">
		<p>
			<input type="button" value="로그인 하기" onclick="checkLogin()">
	</form>

</body>
</html>