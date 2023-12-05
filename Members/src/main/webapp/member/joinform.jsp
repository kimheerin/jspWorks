<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<script src="../resources/js/jquery-3.7.1.js"></script>
<link rel="stylesheet" href="resources/css/style.css">
<script src="../resources/js/validation.js"></script>
</head>
<body>
<jsp:include page="../header.jsp" />
	<div id="container">
		<section id="join">
			<h2>회원 가입</h2>
			<form action="insertmember.do" method="post" name="member">
				<fieldset>
					<ul>
						<li>
							<label for="t_id">계정</label>
							<input type="text" id="t_id" name="id"
							placeholder="영문, 숫자 4~15자">
	 						<button type="button" id="btnChk" value="N" class="btn_Check"
   							onclick="checkId()"> 확인 </button>
    						<!-- <input type="button" id="btnChk" value=" 확인 " class="btn_Check"
   							onclick="checkId()"> -->
  							<p id="message"></p>
						</li>
						<li>
							<label for="passwd">암호</label>
							<input type="password" id="passwd" name="passwd"
							placeholder="영문, 숫자, 특수문자 포함 8자 이상">
							
						</li>
						<li>
							<label for="passwd2">암호 확인 </label>
							<input type="password" id="passwd2" name="passwd2" 
							placeholder="암호 재입력">
						</li>
						<li>
							<label for="name">이름</label>
							<input type="text" name="name" id="name"
							placeholder="ex. 홍길동" placeholder="이름은 한글로 입력해 주세요.">
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
					<button type="button" onclick="checkMember()">가입</button>
					<button type="reset">취소</button>
				</div>
			</form>
		</section>
	</div>
	<jsp:include page="../footer.jsp"/>
</body>
</html>