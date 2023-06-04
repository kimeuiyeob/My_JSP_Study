<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.Date"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<body>


	<%@ include file="header.jsp"%>
	<!-- ============================================================== -->
	<%!String greeting = "상품 등록";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>
	<!-- ============================================================== -->
	<div class="container">
		<form name="newProduct" action="processAddProduct.jsp"
		
			class="form-horizontal" method="post">
			<div class="form-group row">
				<label class="col-sm-2">상품 코드</label>
				<div class="col-sm-3">
					<input type="text" name="productID" class="form-control">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">상품 명</label>
				<div class="col-sm-3">
					<input type="text" name="pName" class="form-control">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">가격</label>
				<div class="col-sm-3">
					<input type="number" name="pPrice" class="form-control">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">상세 정보</label>
				<div class="col-sm-5">
					<textarea name="description" cols="100" rows="3"
						class="form-control"></textarea>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">제조사</label>
				<div class="col-sm-3">
					<input type="text" name="manufacturer" class="form-control">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">분류</label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">재고수</label>
				<div class="col-sm-3">
					<input type="number" name="stock" class="form-control">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">상태</label>
				<div class="col-sm-5">
					<input type="radio" name="condition" value="New">&nbsp;신규제품
					<input type="radio" name="condition" value="Old">&nbsp;중고제품
				</div>
			</div>

			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">
				</div>
			</div>

		</form>
	</div>
	<!-- ============================================================== -->
	<%@ include file="footer.jsp"%>


</body>
</html>