<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
<link rel="stylesheet" href="resources/css/style.css">
	<jsp:include page="../header.jsp" />
</head>
<body>
	<div id="container">
		<section id="memberview">
			<h2>회원 정보</h2>
			<table>
				<tr>
					<td><label for="id">계정</label></td>
					<td>${member.id}</td>
				</tr>
				<tr>
					<td><label for="id">암호</label></td>
					<td>${member.passwd}</td>
				</tr>
				<tr>
					<td><label for="id">이름</label></td>
					<td>${member.name}</td>
				</tr>
				<tr>
					<td><label for="id">E-mail</label></td>
					<td>${member.email}</td>
				</tr>
				<tr>
					<td><label for="id">성별</label></td>
					<td>${member.gender}</td>
				</tr>
				<tr>
					<td><label for="id">가입일</label></td>
				<td><fmt:formatDate value="${member.joinDate}"
								pattern="yyy-MM-dd HH:mm:ss" /></td>
				</tr>
				<tr>
					<td colspan="2">
					<c:if test="${sessionid eq member.id}">
						<a href="/">
							<button>수정</button>
						</a>
						<a href="">
							<button>탈퇴</button>
						</a>
					</c:if>
						<a href="/memberlist.do">
							<button>목록</button>
						</a>
					</td>
				</tr>
			</table>
		</section>
	</div>
	<jsp:include page="../footer.jsp"/>
</body>
</html>