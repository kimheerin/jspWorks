<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberBean 사용</title>
</head>
<body>
   <jsp:useBean id="member" class="bean.MemberBean">
      <p>계정: <%=member.getId() %></p>
      <p>이름: <%=member.getName() %></p>
   </jsp:useBean>
</body>
</html>