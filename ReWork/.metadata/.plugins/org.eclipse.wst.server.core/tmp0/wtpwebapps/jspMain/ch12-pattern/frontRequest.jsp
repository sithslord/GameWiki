<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<a href="insert.do">Insert</a><p>
	
	<a href="http://localhost:8081<%=request.getContextPath()%>/update.do">Update</a><p>
	
	<a href="http://localhost:8081/jspMain/ch12-pattern/select.do">Select</a><p>
	
	<a href="<%=request.getContextPath()%>/delete.do">Delete</a><p>

</body>
</html>