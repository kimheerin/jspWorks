<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 생성</title>
</head>
<body>
	<h2>세션 생성</h2>
	<!-- session : 내장 객체 -->
	<p> 세션: <%=session %></p>
	<!-- JSESSIONID -->
	<p> 세션 ID: <%=session.getId() %></p>
	<%=session.getId() %>>
</body>
</html>