<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 발급</title>
</head>
<body>
	<form action="session01Process.jsp" method="post">
		<p>계정 <input type="text" name="uid">
		<p>암호 <input type="password" name="pw">
		<p><input type="submit" value="로그인"></p>
	</form>
</body>
</html>