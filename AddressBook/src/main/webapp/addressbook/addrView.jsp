<%@page import="addressbook.Addrbook"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소 정보</title>
<link rel="stylesheet" href="../resources/css/style.css">
</head>
<body>
	<jsp:useBean id="abDAO" class="addressbook.AddrBookDAO" scope="application"/>
	<%
		String username = request.getParameter("username");
		Addrbook addrBook = abDAO.getAddrBook(username);
	%>
	<div id="container">
		<h2>주소 정보</h2>
		<hr>
		<table id="tbl_view">
			<tr>
				<td>이름</td>
				<td><%=addrBook.getUsername() %></td>
			</tr>
			<tr>
				<td>연락처</td>
				<td><%=addrBook.getTel() %></td>
			</tr>
			<tr>
				<td>E-mail</td>
				<td><%=addrBook.getEmail() %></td>
			</tr>
			<tr>
				<td>성별</td>
				<td><%=addrBook.getGender() %></td>
			</tr>
			<tr>
				<td colspan="2">
				<a href="addrList.jsp">목록 보기</a>
				</td>
			</tr>
			
		</table>
	</div>
</body>
</html>