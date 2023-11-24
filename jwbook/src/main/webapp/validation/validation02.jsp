<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유효성 검사</title>
<style type="text/css">
   ul li{list-style: none; margin: 10px;}
</style>
<script type="text/javascript">
   function checkForm(){
	 //자바스크립트 함수 - focus(), select(), submit()
	 //글자의 길이를 정하는 속성 - length
     //폼 이름 선택 - name 속성 선택
     let form = document.loginForm;
	 let id = form.uid.value;
	 let pw = form.password.value;
     
     if(id == ""){
    	 alert("계정을 입력해 주세요.");
    	 form.uid.focus();
    	 return false;
     }else if(pw == "" || form.password.value.length < 8){
    	 alert("암호를 8자 이상 입력해 주세요.");
    	 return false;
     }else{
    	 form.submit();	//자바스크립트에서 폼을 전송하는 메서드
     }
   }
</script>
</head>
<body>
	<form action="loginProcess.jsp" method="post" name="loginForm">
		<ul>
			<li>
				<label for="uid">계정 </label>
				<input type="text" id="uid" name="uid">
			</li>
			<li>
				<label for="passwd">암호 </label>
				<input type="password" id="password" name="password">
			</li>
			<li>
				<label for="name">이름 </label>
				<input type="text" id="name" name="name">
			</li>
			<li>
				<!-- <input type="submit" value="로그인"> -->
				<button type="button" onclick="checkForm()">로그인</button>
			</li>
		</ul>
	</form>	
</body>
</html>