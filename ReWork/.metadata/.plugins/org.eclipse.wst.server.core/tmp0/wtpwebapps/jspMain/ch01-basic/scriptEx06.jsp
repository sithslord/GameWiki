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
		int number = 100;
	
		String str = "���� �����(������ ���� ����� �����Ѵ�)";
		
		private int multiple(int a, int b){
			return a * b;
		}
	%>
	
	<%= number %><br>
	<%= str %><br>
	<%= multiple(2, 9) %>

</body>
</html>