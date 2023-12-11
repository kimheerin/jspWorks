<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 상세 보기</title>
<link rel="stylesheet" href="resources/css/style.css">
</head>
<body>
 	<c:if test="${empty sessionid}">
		<script type="text/javascript">
		alert("로그인이 필요합니다.");
		location.href="/loginform.do";
		</script>
	</c:if>
	<jsp:include page="../header.jsp" />
	<div id="container">
		<section id="board_view">
			<h2>글 상세 보기</h2>
				<table>
					<tbody>
						<tr>
							<td><input type="text" name="title" value="${board.title}">
							</td>
						</tr>
						<tr>
							<td><textarea rows="7" cols="100"
									name="content">${board.content}</textarea></td>
						</tr>
						
						<tr>
               				<td>
               				<c:choose>
               					<c:when test="${not empty ${board.filename}">
               						${board.filename}<a href="filedown.do?filename=${board.filename}">
               								&nbsp;[다운로드]</a>
               					</c:when>
               					<c:otherwise>
               						<c:out value="첨부파일: "></c:out>
               					</c:otherwise>
               				</c:choose>
               				
                			</td>
              			</tr>
						
						<tr>
							<td>
								<c:if test="${sessionid eq board.id}">
								<a href="/updateBoardform.do?bno=${board.bno}">
								<button type="submit">수정</button>
								</a>
								<a href="/deleteboard.do?bno=${board.bno}"
								onclick="return confirm('삭제하시겠습니까?')">
								<button type="submit">삭제</button>
								</a>
								</c:if>
								<a href="/boardlist.do">
								<button type="submit">목록</button>
								</a>
							</td>
						</tr>
					</tbody>
				</table>
				
				<!-- 댓글 영역 -->
				<h3><i class="fa-solid fa-reply"></i> 댓글</h3>
				<c:forEach items="${replyList}" var="reply">
				<div class="reply">
					<p><b>${reply.replyer}</b>&nbsp; | &nbsp;${reply.rdate}</p>
					<p>${reply.rcontent}</p>
					<p>
						<c:if test="${sessionid eq reply.replyer}">
						<a href="/updatereplyform.do?bno=${board.bno}&rno=${reply.rno}">수정</a>
						| <a href="/deletereply.do?bno=${board.bno}&rno=${reply.rno}"
							onclick="return confirm('삭제하시겠습니까?')">삭제</a>
						</c:if>
					</p>
				</div>
				</c:forEach>
				
				<!-- 댓글 등록 -->
				<form action="/insertreply.do" method="post" id="replyform">
					<input type="hidden" name="bno" value="${board.bno}">
					<input type="hidden" name="replyer" value="${sessionid}">
					<p>
						<textarea rows="4" cols="50" name="rcontent"
								placeholder="댓글을 작성해 주세요."></textarea>
					</p>
					<button type="submit">등록</button>
				</form>
				<!-- 로그인한 사용자만 댓글 등록 가능 -->
				<c:if test="${empty sessionid}">
				<div class="replylogin">
					<a href="/loginform.do">
					<i class="fa-solid fa-user"></i> 댓글을 작성하려면 로그인하세요.</a>
				</div>
				</c:if>
		</section>
	</div>
	<jsp:include page="../footer.jsp"/>
</body>
</html>