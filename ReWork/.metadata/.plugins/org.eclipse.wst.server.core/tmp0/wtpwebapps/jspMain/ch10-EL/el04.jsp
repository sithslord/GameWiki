<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="elobjectOK.jsp" method="get">
		���̵�: <input type="text" name="id" ><br>
		��й�ȣ: <input type="password" name="pw"> <br>
		<input type="submit" value="Login">
	</form>
	
	<%
	application.setAttribute("application_name", "application_value");
	session.setAttribute("session_name", "session_value");
	pageContext.setAttribute("page_name", "page_value");
	request.setAttribute("request_name", "request_value");
	
	
	%>


	pageScope: ${pageScope.page_name}<br>
	requestScope: ${ requestScope.request_name } <br>
</body>
</html>