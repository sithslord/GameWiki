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
	<c:forEach var="test" begin="1" end="30" step="2">
		<b>${test}</b>&nbsp;
	</c:forEach>
	<br>
	
	<c:forTokens items="c,o,d,e,d,r,a,g,o,n" delims="," var="alphabet">
		<b>${alphabet }</b>&nbsp;
	</c:forTokens>
	
	<br>
	
	
	<c:set var="data" value="임시은,오상진,김준수" />
	<c:forTokens items="${data}" delims="," var="varData">
		<b>${varData}</b>&nbsp;
	</c:forTokens>
	
	

</body>
</html>