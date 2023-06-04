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
	//보통은 로그인 성공할때 쿠키에다가 저장한다.
	//
	//쿠키 생성 및 저장
	//Cookie cookie = new Cookie("키값","밸류값");
	//cookie.setMaxAge(60*60*24*365); <=초단위로 계삭 즉 1년
	//response.addCookie(cookie); <= 헤더에 저장
	//
	//그다음 쿠키 유무를 확인하고 쿠기 값을 얻어온다.
	//if(request.getHeader("Cookie") != null) { <= 쿠키가 null인지 아닌지
	//	Cookie[] cookies = request.getCookies(); <=이러면 저장된 모든 쿠키들을 가져온다.
	//	for(Cookie cookie : cookies) { <=들고온 모든 쿠키들을 반복을 통해 해당 키값이 있니 없니 로 찾는다.
	//		cookie.getName();	<=키값으로 
	//		cookie.getValue();	<=밸류값으로 선택
	// }
	//}
	// 
	//쿠키 삭제
	//쿠키는 생명주기를 설정할수 있다. 즉 생명주기를 0으로 주면 삭제된다.
	//if(request.getHeader("Cookie") != null) { <= 먼저 쿠키가 있는지 확인
	//	Cookie[] cookies = request.getCookies();
	//	for(Cookie cookie : cookies) {
	//		cookie.setMAxAge(0); //초단위
	//		response.addCookie(cookie);
	// }
	//}
	%>

</body>
</html>