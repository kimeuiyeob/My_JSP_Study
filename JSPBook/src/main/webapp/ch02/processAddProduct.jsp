<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="dao.Product"%>
<%@ page import="repository.ProductRepository"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	String productId = request.getParameter("productID");
	String pName = request.getParameter("pName");
	String strPrice = request.getParameter("pPrice");
	String description = request.getParameter("description");
	String manufacturer = request.getParameter("manufacturer");
	String category = request.getParameter("category");
	String strstock = request.getParameter("stock");
	String condition = request.getParameter("condition");

	Integer pPrice = null;
	long stock = 0;

	if (productId.equals("")) {
		productId = "없음";
	}
	if (pName.equals("")) {
		pName = "없음";
	}
	if (strPrice.equals("")) {
		pPrice = 0;
	}
	if (description.equals("")) {
		productId = "없음";
	}
	if (manufacturer.equals("")) {
		manufacturer = "없음";
	}
	if (category.equals("")) {
		category = "없음";
	}
	if (strstock.equals("")) {
		stock = 0;
	}
	if (condition == null) {
		condition = "없음";
	}
	%>

	<%=productId%>
	<%=pName%>
	<%=pPrice%>
	<%=description%>
	<%=manufacturer%>
	<%=category%>
	<%=stock%>
	<%=condition%>

	<%
	Product newProduct = new Product();
	newProduct.setProductId(productId);
	newProduct.setpName(pName);
	newProduct.setpPrice(pPrice);
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setStock(stock);
	newProduct.setCondition(condition);

	ProductRepository product = ProductRepository.getInstance();
	product.addProduct(newProduct);

	response.sendRedirect("products.jsp");
	%>





</body>
</html>