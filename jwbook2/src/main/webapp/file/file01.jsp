<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드</title>
</head>
<body>
	<form action="file01Process.jsp" method="post"
			enctype="multipart/form-data">
		<p>회원명 <input type="text" name="username"></p>
		<p>파일명 <input type="text" name="title"></p>
		<p>파일 첨부 <input type="file" name="filename"></p>
		<input type="submit" value="전송">
	</form>
</body>
</html>