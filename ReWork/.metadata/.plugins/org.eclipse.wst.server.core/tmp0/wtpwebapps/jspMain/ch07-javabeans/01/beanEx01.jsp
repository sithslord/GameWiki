<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="student" class="com.ch0701.Student" scope="page"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:setProperty name="student" property="name" value="ȫ�浿"/>
	<jsp:setProperty name="student" property="age" value="18" />
	<jsp:setProperty name="student" property="grade" value="4"/>
	<jsp:setProperty name="student" property="studentNumber" value="20171225"/>

	�̸�: <jsp:getProperty name="student" property="name" /><br>
	����: <jsp:getProperty name="student" property="age" /> <br>
	�г�: <jsp:getProperty name="student" property="grade" /><br>
	�й�: <jsp:getProperty name="student" property="studentNumber"/><br>
</body>
</html>