<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	Enumeration enumeration = session.getAttributeNames();

	int i=0;
	
	while(enumeration.hasMoreElements()){
		i++;
		
		String strName = enumeration.nextElement().toString();
		String strValue = (String)session.getAttribute(strName);
		
		out.println("strName: " + strName + "<br>");
		out.println("strValue: " + strValue + "<br>");
		
	}
	
	if(i==0){
		out.println("�ش� ���� ������ �����ϴ�.");
	}

%>
</body>
</html>