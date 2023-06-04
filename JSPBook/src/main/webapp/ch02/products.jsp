<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="java.util.List"%>
<%@ page import="dao.Product"%>
<%@ page import="repository.ProductRepository"%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- 부트스트랩은 웹 디자인을 쉽게 하귀 위해 CSS,HTML,JS을 모아놓은 프론트엔드 프레임워크 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<style>
.list {
	display: flex;
	justify-content: space-between;
}
</style>
<body>


	<%@ include file="header.jsp"%>
	<!-- ============================================================== -->

	<%!String greeting = "상품 목록";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>

	<!-- ============================================================== -->
	<!-- 우선 해당 클래스 BEAN 통해 가져오기 -->
	<jsp:useBean id="Allproducts" class="repository.ProductRepository"
		scope="page" />

	<div class="container">
		<%-- <div class="row" align="center">
			<%
			List<Product> listOfProduct = Allproducts.getAllProducts();
			for (Product i : listOfProduct) {
			%>
			<div class="col-md-4">
				<h3><%=i.getpName()%></h3>
				<p><%=i.getDescription()%>
				<p><%=i.getpPrice()%>원
			</div>
			<%
			}
			%>
		</div> --%>
		<hr>
		<div class="form-group row">
			<div class="col-sm-offset-2 col-sm-10">
				<a class="btn btn-primary" href="addProduct.jsp">상품 등록</a>
			</div>
		</div>
	</div>

	<!-- ============================================================== -->
	<%@ include file="footer.jsp"%>


</body>
</html>