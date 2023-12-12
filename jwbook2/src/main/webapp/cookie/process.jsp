<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	if(id.equals("today") && pwd.equals("1234")){
		//쿠키 Cookie(쿠키명, 쿠키값)
		Cookie cookieId = new Cookie("userId", id);
		Cookie cookiePw = new Cookie("userPw", pwd);
		
		//브라우저(로컬컴)에 응답(보냄)
		response.addCookie(cookieId);
		response.addCookie(cookiePw);
		
		out.println("쿠키 생성에 성공하였습니다.");
	}else{
		out.println("쿠키 생성에 실패하였습니다.");
	}
	
%>