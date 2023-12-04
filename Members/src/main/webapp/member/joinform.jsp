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
<script>
   function checkMember() {
      //alert("test");
      let form = document.member;
      let id = form.id.value;
      let pw1 = form.passwd.value;
      let pw2 = form.passwd2.value;
      let name = form.name.value; 
      
      // 정규표현식
      // 비밀번호
      let regexPw1 = /[0-9]+/; // 숫자
      let regexPw2 = /[a-zA-Z]+/; // 영문자
      let regexPw3 = /[~!@#$%^&*()_+]+/; // 특수문자
      
      // 이름
      let regexName = /^[가-힣]+$/;
      
      if(id.length < 4 || id.length > 15){
         alert("아이디는 4~15자까지 입력 가능합니다");
         id.select;
         return false;
      }else if(pw1.length < 8 || regexPw1.test(pw1) || 
            regexPw1.test(pw1) || regexPw1.test(pw1)){
         alert("비밀번호는 영문자, 숫자, 특수문자 포함 8자 이상 입력 가능");
         pw1.select;
         return false;
      }else if(pw1 != pw2){
         alert("비밀번호를 동일하게 입력해 주세요");
         pw2.select;
         return false;
      }else if(!regexName.test(name)){
         alert("이름은 한글로 입력해 주세요");
         name.select;
         return false;
      }else{
         form.submit(); // 오류가 없으면 폼을 메인 컨트롤러로 전송
      }
   }
</script>
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
							<input type="text" id="id" name="id"
							placeholder="계정은 4~15자리까지 입력 가능합니다.">
						</li>
						<li>
							<label for="passwd">암호</label>
							<input type="password" id="passwd" name="passwd"
							placeholder="비밀번호는 영문, 숫자, 특수문자를 포함하여 8자 이상 입력 가능">
							
						</li>
						<li>
							<label for="passwd2">암호 확인 </label>
							<input type="password" id="passwd2" name="passwd2" 
							placeholder="비밀번호를 동일하게 입력해주세요">
						</li>
						<li>
							<label for="name">이름</label>
							<input type="text" name="name" id="name"
							placeholder="ex. 홍길동" placeholder="이름은 한글로 입력해 주세요">
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