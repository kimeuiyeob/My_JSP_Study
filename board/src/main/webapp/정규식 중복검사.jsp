<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script>

function send(){
	/* 정규식 //사이에 값을 확인하는게 정규식이다. */
	
	//8자리 이상, 대문자/소문자/숫자/특수문자 모두 포함되어 있는 지 검사
	var pwCheck = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
	//한글이 포함되었는 지 검사
	var hangleCheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	//같은 문자 4번 이상
	var wordCheck = /(\w)\1\1\1/;
	//공백검사
	var spaceCheck = /\s/;
	
	//값이 비어있으면 return으로 넘어가는거 막아주고 해당 아이디에 FOCUS;
	if(!joinForm.memberId.value){
		joinForm.memberId.focus();
		return;
	}
	
	if(!joinForm.memberPw.value){
		joinForm.memberPw.focus();
		return;
	}
	
	//정규식 검사하는 방법===============================
	if(!pwCheck.test(joinForm.memberPw.value)){
		joinForm.memberPw.focus();
		return;
	}
	if(hangleCheck.test(joinForm.memberPw.value)){
		joinForm.memberPw.focus();
		return;
	}
	if(wordCheck.test(joinForm.memberPw.value)){
		joinForm.memberPw.focus();
		return;
	}
	if(spaceCheck.test(joinForm.memberPw.value)){
		joinForm.memberPw.focus();
		return;
	}
	//==============================================
	//비밀번호 길이 제한
	if(joinForm.memberPw.value.length < 4 || joinForm.memberPw.value.length > 20){
		joinForm.memberPw.focus();
		return;
	}
	
	if(!joinForm.memberName.value){
		joinForm.memberName.focus();
		return;
	}
	
	if(!joinForm.memberAge.value){
		joinForm.memberAge.focus();
		return;
	}
	//나이 입력인데 숫자가 아닐시
	if(isNaN(parseInt(joinForm.memberAge.value))){
		joinForm.memberAge.focus();
		return;
	}
	
	joinForm.submit();
}


	
</script>
<body>

	<form name="joinForm" method="" action="">
	
		<input type="text" name="memberId" placeholder="아이디 입력"> 
		<input type="password" name="memberPw" placeholder="비밀번호 입력"> 
		<input type="text" name="memberName" placeholder="이름 입력">
		<input type="text" name="memberAge" placeholder="나이 입력">
		
		<input type="button" value="전송" onclick="send()">

	</form>

</body>
</html>