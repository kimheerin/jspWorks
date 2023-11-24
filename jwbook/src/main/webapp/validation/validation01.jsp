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
      //폼 이름 선택
      let form = document.loginForm;
      alert("계정 : "+ form.uid.value + 
            "암호 : " + form.passwd.value)      
   }
</script>
</head>
<body>
	<form action="loginprocess.jsp" method="post" name="loginForm">
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
				<!-- <input type="submit" value="로그인"> -->
				<button type="button" onclick="checkForm()">로그인</button>
			</li>
		</ul>
	</form>
</body>
</html>