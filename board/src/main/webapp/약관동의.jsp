<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<script>

	const $all = $("#term");
	const $terms = $(".terms");
	/* 전체 동의 클릭 */
	$all.on("click", function() {
		console.log("방가방가");
		$temrs.prop("checked", $(this).is(":checked"));
	});
	/* 각각 약관 클릭 */
	$terms.on("click", function() {
		$all.prop("checked", $terms.filter("checked").length == $terms.length);
	})
</script>

<body>

	<input id="term" type="checkbox">전체 동의
	<input class="terms" type="checkbox">동의1
	<input class="terms" type="checkbox">동의2


</body>
</html>