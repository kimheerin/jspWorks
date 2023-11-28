<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="abDAO" class="addressbook.AddrBookDAO" scope="application"></jsp:useBean>
<%
	String email = request.getParameter("email");
	boolean result = abDAO.checkLogin(email);
	String name = abDAO.getNameByEmail(email);	//매개로 이메일 이름(username) 가져오기
	
	if(result){
		//이메일이 있을 때 세션 발급(세션명 : sessionId)
		//이름 세션 발급
		session.setAttribute("sessionId", email);
		session.setAttribute("sessionName", name);
		response.sendRedirect("addrList.jsp");	//로그인 후 목록 페이지로 이동
	}else{
		out.println("<script>");
		out.println("alert('계정 또는 암호가 일치하지 않습니다.')");
		out.println("history.go(-1)");	//이전 페이지로 이동
		out.println("</script>");
	}
%>