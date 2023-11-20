<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
</head>
<body>
	<!-- 선언문 태그 -->
	<%!
		//전역 변수
		int pageCount = 0;
	
		//함수
		void addCount(){
			pageCount++; 
		}
	%>
	
	<%
		//함수 호출
		addCount();
	%>
	<p>해당 사이트 누적 방문 수 : <%= pageCount %></p>
</body>
</html>