<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.net.URLEncoder" %>
<%
	Cookie cookie1 = new Cookie("cookieName", "cookieValue");
	Cookie cookie2 = new Cookie("iscookieName", URLEncoder.encode("��Ű����", "EUC-KR")  );

	cookie1.setMaxAge(30*60);
	cookie2.setMaxAge(30*60);
	
	response.addCookie(cookie1);
	response.addCookie(cookie2);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	��Ű��:<%=cookie1.getName() %> <br>
	��Ű��:<%=cookie1.getValue() %><br>
	<br>
	
	��Ű��:<%=cookie2.getName() %>  <br>
	��Ű��:<%=cookie2.getValue() %><br>
</body>
</html>