<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${7<10}">
		<h3>7는 10보다 작습니다.</h3>
	</c:if>

	<c:if test="${7+3==10}">
		<h3>7+3은 10입니다.</h3>
	</c:if>
	
	
	<!-- ^^; -->
	<c:choose>
		<c:when test="${7+10==70 }">
			<h3>7+10은 70입니다.</h3>
		</c:when>
		<c:otherwise>
			<h3>7+10은 70이 아닙니다.</h3>
		</c:otherwise>
	
	</c:choose>


</body>
</html>