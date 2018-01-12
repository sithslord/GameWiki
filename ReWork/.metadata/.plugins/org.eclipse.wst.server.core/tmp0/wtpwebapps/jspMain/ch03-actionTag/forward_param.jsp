<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>forward_param.jsp 페이지 입니다.</h1>
	
	<%!
		String id, pw;
	%>
	<%
		id = request.getParameter("id");
	 	pw = request.getParameter("pw");
	%>
	
	아이디: <%=id %><br>
	패스워드: <%=pw %>
	
</body>
</html>