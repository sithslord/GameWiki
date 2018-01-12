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
	<c:set var="varName" value="varValue" />
	
	varName: <c:out value="${varName}" />
	
	<c:forEach var="fEach" begin="0" end="100" step="3">
		${fEach}
	</c:forEach>
	
	<c:redirect url="http://www.google.com" />

</body>
</html>