<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userId = request.getParameter("uid");
	String userPw = request.getParameter("pw");
	
	//계정 : khit, 암호 : 1234
	if(userId.equals("khit") && userPw.equals("1234")){
		//로그인 성공일 때 세션을 발급함(세션명 : "userID")
		session.setAttribute("userID", userId);
		out.println("세션이 발급되었습니다.");
		session.setMaxInactiveInterval(2*60);
	}else{
		out.println("<script>");
		out.println("alert('아이디 또는 암호가 일치하지 않습니다.')");
		out.println("history.back()");	//이전 페이지로 이동
		out.println("</script>");
	}
%>
<p><%=session.getAttribute("userID") %>님이 로그인하였습니다.