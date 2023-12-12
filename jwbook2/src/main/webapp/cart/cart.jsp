<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 선택</title>
</head>
<body>
	<div id="content">
		<h2>장바구니</h2>
		<h3>선택 상품 목록</h3>
		<hr>
		<%
			ArrayList<String> productList =
					(ArrayList)session.getAttribute("sessionlist");
		
			if(productList != null){ //장바구니가 비어있지 않을 때 상품 출력	
				for(String product : productList){
					out.println(product + "<br>");
				}
			}else{
				out.println("주문한 상품이 없습니다.");
			}
		%>
	
	</div>
</body>
</html>