<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘 날짜 및 시간</title>
</head>
<body>
	<h2>오늘 날짜 및 시간</h2>
	<%
		Date date = new Date();
		out.println(date.toLocaleString());
	%>
	<%= date %>
</body>
</html>