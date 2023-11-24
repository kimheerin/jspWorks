<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--<%
	int cnt = Integer.parseInt(request.getParameter("cnt"));
	
	for(int i=0; i<cnt; i++){
		out.println("안녕하세요.<br>");
	}
%>--%>

<%
	//오류 처리 - null string
	int cnt = 0;
	
	if(request.getParameter("cnt") != null){
		cnt = Integer.parseInt(request.getParameter("cnt"));
	}
	
	for(int i=0; i<cnt; i++){
		out.println("안녕하세요.<br>");
	}
%>