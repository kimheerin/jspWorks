<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
<link rel="stylesheet" href="resources/css/style.css">
	<jsp:include page="../header.jsp" />
</head>
<body>
	<div id="container">
		<section id="memberList">
			<h2>Member List</h2>
			<table>
				<thead>
					<tr>
						<th>번호</th>
						<th>계정</th>
						<th>암호</th>
						<th>이름</th>
						<th>E-mail</th>
						<th>성별</th>
						<th>가입일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${memberList}" var="m" >
						<tr>
							<td>${m.mno}</td>
							<td>${m.id}</td>
							<td>${m.passwd}</td>
							<td>${m.name}</td>
							<td>${m.email}</td>
							<td>${m.gender}</td>
							<td>${m.joinDate}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
	</div>
	<jsp:include page="../footer.jsp"/>
</body>
</html>