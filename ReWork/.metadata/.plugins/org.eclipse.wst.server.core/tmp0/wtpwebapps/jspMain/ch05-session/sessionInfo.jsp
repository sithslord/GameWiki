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
	���� ID : <%= session.getId() %><br>
	
	���� �����ð�: <%= session.getCreationTime() %><br>
	
	<%
		time.setTime(session.getCreationTime());
	%>
	
	���� �����ð�(dateŸ��): <%= sf.format(time) %><br>
	
	<%
		time.setTime(session.getLastAccessedTime());
	%>
	�ֱ����� �ð�(long): <%=session.getLastAccessedTime() %><br>
	�ֱ����� �ð�(date): <%=sf.format(time) %><br>
	
	���� ���� �ð�: <%=session.getMaxInactiveInterval() %>
	

</body>
</html>