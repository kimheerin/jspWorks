<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
<style type="text/css">
	ul li{list-style: none; margin: 10px;}
</style>
</head>
<body>
	<form action="joinProcess.jsp" method="post">
		<ul>
			<li>
				<label for="uid">계정 </label>
				<input type="text" id="uid" name="uid" required autofocus>
			</li>
			<li>
				<label for="passwd">암호 </label>
				<input type="password" id="passwd" name="passwd" required>
			</li>
			<li>
				<label for="name">이름 </label>
				<input type="text" id="name" name="name" required autofocus>
				
			</li>
			<li>
				<label for="email">E-mail </label>
				<input type="text" id="email" name="email" required>
				
			</li>
			<li>
				<label for="tel">연락처 </label>
				<input type="text" id="tel1" name="tel1" size=4 maxlength=3>
				- <input type="text" id="tel2" name="tel2" size=4 maxlength=4>
				- <input type="text" id="tel3" name="tel3" size=4 maxlength=4>
			</li>
			<li>
				<label for="hobby">취미 </label>
				<input type="checkbox" id="hobby" name="hobby" value="운동" checked>운동
				<input type="checkbox" id="hobby" name="hobby" value="영화">영화 보기
				<input type="checkbox" id="hobby" name="hobby" value="게임">PC 게임
			</li>
			<li>
				<label for="gender">성별 </label>
				<label>
					<input type="radio" id="gender" name="gender"
						value="male">남
				</label>
				<label>
					<input type="radio" id="gender" name="gender"
						value="female" checked>여
				</label>
			</li>
			<li>
				<textarea rows="3" cols="30" name="comment"
					placeholder="가입 인사를 남겨 주세요"></textarea>
			</li>
				<!-- <input type="submit" value="로그인"> -->
				<button type="submit">가입</button>
				<button type="reset">취소</button>
			</li>
		</ul>
	</form>
</body>
</html>