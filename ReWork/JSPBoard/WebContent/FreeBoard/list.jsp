<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- JSTL 사용설정 --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>자유게시판</title>
<script src="../js/jquery-3.2.1.min.js"></script>

</head>
<body>

	<table width="970" cellpadding = "0" cellspacing = "0" border = "1" align="center">
		<tr align="center">
			<td>번호</td>
			<td width="100">이름</td>
			<td width="600">제목</td>
			<td>날짜</td>
			<td>조회수</td>
		</tr>
	<c:forEach items="${bdlist }" var="dto">
		<tr>
			<td align="center">${dto.bId }</td>
			<td>${dto.bName }</td>
			<td>
				<c:forEach begin="1" end="${dto.bIndent }">-</c:forEach>
				<a href="content_view.do?bId=${dto.bId }&bdTitle=${bdTitle }">${dto.bTitle }</a>
			</td>
			<td>${dto.bDate }</td>
			<td align="center">${dto.bHit }</td>
		</tr>
	</c:forEach>
	<tr>
		<td colspan="5"><a href="write_view.do?bdTitle=${bdTitle }">글작성</a></td>
	</tr>
	</table>


</body>
</html>