<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단</title>
</head>
<body>
	<%-- <h3>6단</h3>
	<c:set var="dan" value="6" />
	<c:forEach var="i" begin="1" end="9">
		${dan} × ${i} = ${dan*i}<br>
	</c:forEach> --%>
	
	<h3>전체 구구단</h3>
	<Table>
		<c:forEach var="i" begin="2" end="9">
		<tr>
			<c:forEach var="j" begin="1" end="9">
				<td width="100">${i} x ${j} = ${i*j}</td>
			</c:forEach>
		</tr>
		</c:forEach>
	</Table>
</body>
</html>