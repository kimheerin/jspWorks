<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홀수/짝수 판별 프로그램</title>
</head>
<body>
	<%
		int num = 6;
		String result = "";
		
		if(num % 2 == 0){
			result = "짝수";
		}else{
			result = "홀수";
		}
	%>
	<p>결과 : <%= result %></p>
</body>
</html>