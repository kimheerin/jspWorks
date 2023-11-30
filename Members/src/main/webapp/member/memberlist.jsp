<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
			<h2>회원 목록</h2>
			<div class="logout">
				<p><a href="/logout.do">| 관리자 로그아웃 |</a>
			</div>
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
							<!-- ID를 클릭하면 상세 페이지로 이동 -->
							<td><a href="/memberview.do?id=${m.id}">${m.id}</a></td>
							<td>${m.passwd}</td>
							<td>${m.name}</td>
							<td>${m.email}</td>
							<td>${m.gender}</td>
							<td><fmt:formatDate value="${m.joinDate}"
								pattern="yyy-MM-dd HH:mm:ss" />
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
	</div>
	<jsp:include page="../footer.jsp"/>
</body>
</html>