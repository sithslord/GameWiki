<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!
	int number = 10;
	String str = "Java Server Page";
	%>
	
	<%!
		public int sum(int a, int b){
			return a + b;
		}
	
	%>
	
	<%
		// 주석
		out.println("number: " + number + "<br>");
		out.println("str: " + str + "<br>");
		out.println("sum: " + sum(7, 23) + "<br>");
	%>


</body>
</html>