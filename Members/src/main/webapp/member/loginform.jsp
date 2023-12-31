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
		<section id="login">
			<h2>로그인</h2>
			<form action="/login.do" method="post">
				<fieldset>
					<ul>
						<li>
							<label for="id">계정</label>
							<input type="text" id="id" name="id" required>
						</li>
						<li>
							<label for="passwd">암호</label>
							<input type="password" id="passwd" name="passwd" required>
						</li>
					</ul>
				</fieldset>
				<div class="error">${error}</div>
				<div class="button">
					<button type="submit">로그인</button>
				</div>
			</form>
		</section>
	</div>
	<jsp:include page="../footer.jsp"/>
</body>
</html>