<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
<style>
	table, th, td{
	border: 1px solid #ccc;
	border-collapse: collapse;
	padding: 10px;
	}
</style>
</head>
<%
	request.setCharacterEncoding("utf-8");
	
	//회원 가입 폼에 입력된 데이터 받기
	String uid = request.getParameter("uid");
	String passwd = request.getParameter("passwd");
	String uname = request.getParameter("name");	
%>
<body>
	<h2>회원 정보</h2>
	<hr>
	<table>
		<tr>
			<th>계정</th><th>암호</th><th>이름</th>
		</tr>
		<tr>
			<td><%=uid %></td>
			<td><%=passwd %></td>
			<td><%=uname %></td>
		</tr>
	</table>
</body>
</html>