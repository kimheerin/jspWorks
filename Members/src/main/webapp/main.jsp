<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인덱스 페이지</title>
<link rel="stylesheet" href="resources/css/style.css">
</head>
<body>
	<jsp:include page="header.jsp" />
	<div id="container">
		<section id="main">
			<h2 id="main_h2">H E L L O !</h2>
			<div class="main_img">
				<img src="resources/img/sinsasnow.jpg" alt="신사"
				width="350" height="400">
			</div>
       <div class="newboard">
          <h3>최신 게시글</h3>
          <c:forEach items="${boardList}" var="board">
           <p><a href="/boardview.do?bno=${board.bno}">${board.title}</a>(작성자: ${board.id}, 
           작성일: <fmt:formatDate value="${board.createDate}"
                 pattern="yyyy-MM-dd HH:mm:ss"/>)
           </p>
          </c:forEach>
       </div>
   		</section>
   	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>
