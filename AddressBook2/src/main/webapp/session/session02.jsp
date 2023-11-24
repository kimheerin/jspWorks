<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션 정보 얻기 - 발급된 세션명으로 가져오기
	//강제 형 변환(Object -> String)
	String id = (String)session.getAttribute("userID");

	out.println("설정된 세션 속성값 : " + id + "<br>");
	out.println("세션 ID 값 : " + session.getId());
%>