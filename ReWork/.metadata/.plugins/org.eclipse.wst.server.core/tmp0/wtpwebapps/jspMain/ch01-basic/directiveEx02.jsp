<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();

	SimpleDateFormat sdf = new SimpleDateFormat("YYYY��MM��dd�� a hh:mm:ss");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	����ð��� <%= nowTime %>�Դϴ�.<p>
	���� ����� �簣�� <%= sdf.format(nowTime)  %>�Դϴ�.

</body>
</html>