<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("uid");
	String pw = request.getParameter("password");
%>
<p>로그인 성공</p>
<p>계정 : <%=id %>
<p>암호 : <%=pw %>