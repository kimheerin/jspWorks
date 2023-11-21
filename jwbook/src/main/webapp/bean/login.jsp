<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="login" class="bean.LoginBean" />
<jsp:setProperty property="uid" name="login"/>
<jsp:setProperty property="passwd" name="login"/>
<%

	String id = request.getParameter("uid");
	String pw = request.getParameter("passwd");
	
	if(id == "" || pw == ""){
		out.println("<script>");
		out.println("alert('계정 또는 암호를 입력해 주세요.')");
		out.println("history.back()");
		out.println("</script>");
	}else{
		boolean result = login.checkUser();
		if(result){
			out.println("로그인 성공");
		}else{
			out.println("로그인 실패");
		}
	}
%>
<p>계정 : <%=login.getUid() %>
<p>암호 : <%=login.getPasswd() %>