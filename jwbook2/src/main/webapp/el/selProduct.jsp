<%@page import="el.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 선택</title>
<style>
	#container{width: 80%; margin: 30px auto; text-align: center;}
</style>
</head>
<jsp:useBean id="product" class="el.Product" />
<%-- <%
	Product product = new Product();	//import 방식
%> --%>
<body>
	<div id="container">
		<h2>상품 선택</h2>
		<hr>
		<p>선택 상품 : ${param.select}
		<p>num1 + num2 = ${product.num1 + product.num2}
		<%-- <p>num1 + num2 = <%= product.getNum1() + product.getNum2() %> --%>
	</div>
</body>
</html>