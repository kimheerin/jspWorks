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
%>
<body>
	<h2>회원 정보</h2>
	<hr>
	<table>
		<tr>
			<th>계정</th><th>암호</th><th>이름</th>
		</tr>
		<tr>
			<td>${param.uid}</td>
			<td>${param.passwd}</td>
			<td>${param.uname}</td>
		</tr>
	</table>
</body>
</html>