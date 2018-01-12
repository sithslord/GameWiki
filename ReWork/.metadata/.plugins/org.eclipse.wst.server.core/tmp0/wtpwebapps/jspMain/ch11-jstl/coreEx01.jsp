<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:set var="test" value="Hello JSTL!!!" />
	
	<h3>&lt; c:set &gt; 사용 후: <c:out value="${test}" /> </h3>
	
	<c:remove var="test" />
	<h3>&lt; c:remove &gt; 사용 후: <c:out value="${test}" /> </h3>

	<c:catch var="err">
		<%=10/0 %>	
	</c:catch>
	<h3>&lt; c:catch &gt; 로 잡아낸 오류 내용: <c:out value="${err}" /></h3>
	
</body>
</html>