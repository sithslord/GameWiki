<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	public int multiply(int a, int b){
		return a*b;
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	10*25 = <%=multiply(10, 25) %><br>
	
	
	11*27 = <!--  <%=multiply(11, 27) %>  --><br>
	
	
	12*30 = <%-- <%=multiply(12, 30) %> --%><br>

</body>
</html>