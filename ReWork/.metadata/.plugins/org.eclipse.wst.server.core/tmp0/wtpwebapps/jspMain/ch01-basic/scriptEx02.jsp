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
	out.print("이곳에서는 JAVA코드를 사용할 수 있습니다.<br><br>");

%>

HTML코드를 사용해서 줄을 바꿀수 있습니다.<br>

<%
	out.print("변수 a의 값은: " + a + "입니다.<p>");
	out.print("'out.print()'메소드안에서는 HTML태그를 사용할 수 있습니다.<p>");

%>

<%="<b>표현식에서도<br>HTML태그를 사용할 수 있습니다.</b>" %>

</body>
</html>