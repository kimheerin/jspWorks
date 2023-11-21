<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//request - 데이터를 잠시 저장하는 객체
		String id = request.getParameter("id");
		String pw = request.getParameter("pwd");
	%>
	
	<p>계정 : <%=id %></p>
	<p>암호 : <%=pw %></p>
</body>
</html>