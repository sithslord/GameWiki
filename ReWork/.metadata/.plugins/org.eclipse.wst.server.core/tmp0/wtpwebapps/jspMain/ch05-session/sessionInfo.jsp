<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date time = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	세션 ID : <%= session.getId() %><br>
	
	세션 생성시간: <%= session.getCreationTime() %><br>
	
	<%
		time.setTime(session.getCreationTime());
	%>
	
	세션 생성시간(date타입): <%= sf.format(time) %><br>
	
	<%
		time.setTime(session.getLastAccessedTime());
	%>
	최근접근 시간(long): <%=session.getLastAccessedTime() %><br>
	최근접근 시간(date): <%=sf.format(time) %><br>
	
	세션 유지 시간: <%=session.getMaxInactiveInterval() %>
	

</body>
</html>