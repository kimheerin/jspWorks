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
		<section id="join">
			<h2>회원 가입</h2>
			<form action="insertmember.do" method="post">
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
						<li>
							<label for="passwd2">암호 확인 </label>
							<input type="password" id="passwd2" name="passwd2" required>
						</li>
						<li>
							<label for="name">이름</label>
							<input type="text" name="name" id="name"
							placeholder="ex. 홍길동" required>
						</li>
						<li>
							<label for="email">E-mail</label>
							<input type="text" id="email" name="email">
						</li>
						<li>
   							<label for="gender">성별</label>
        					<input type="radio" id="gender" name="gender" value="여" checked>여성 
       						<input type="radio" id="gender" name="gender" value="남">남성
						</li>
					</ul>
				</fieldset>
				<div>
					<button type="submit">가입</button>
					<button type="reset">취소</button>
				</div>
			</form>
		</section>
	</div>
	<jsp:include page="../footer.jsp"/>
</body>
</html>