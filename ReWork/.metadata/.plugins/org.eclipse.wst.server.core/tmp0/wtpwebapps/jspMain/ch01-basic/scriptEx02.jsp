<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	int a=100;
	out.print("�̰������� JAVA�ڵ带 ����� �� �ֽ��ϴ�.<br><br>");

%>

HTML�ڵ带 ����ؼ� ���� �ٲܼ� �ֽ��ϴ�.<br>

<%
	out.print("���� a�� ����: " + a + "�Դϴ�.<p>");
	out.print("'out.print()'�޼ҵ�ȿ����� HTML�±׸� ����� �� �ֽ��ϴ�.<p>");

%>

<%="<b>ǥ���Ŀ�����<br>HTML�±׸� ����� �� �ֽ��ϴ�.</b>" %>

</body>
</html>