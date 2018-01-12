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
	Object obj1 = session.getAttribute("mySessionName");
	String mySessionName = (String)obj1;
	out.println(mySessionName + "<br>");
	
	Object obj2 = session.getAttribute("myNumber");
	Integer myNumber = (Integer)obj2;
	out.println(myNumber + "<br>");
	
	Object obj3 = session.getAttribute("myName");
	String myName = (String)obj3;
	out.println(myName + "<br>");
	
	
	out.println("#################################<br>");
	String strName;
	String strValue;
	
	Enumeration enumeration = session.getAttributeNames();
	
	while(enumeration.hasMoreElements()){
		strName = enumeration.nextElement().toString();
		strValue = session.getAttribute(strName).toString();
		out.println("strName : " + strName + "<br>");
		out.println("strValue: " + strValue + "<br>");
	}
	
	String sessionID = session.getId();
	out.println("sessionID: " + sessionID + "<br>");
	int sessionInterval = session.getMaxInactiveInterval();
	out.println("sessionInterval: " + sessionInterval + "<br>");
	
	
	out.println("#################################<br>");
	
	session.removeAttribute("mySessionName");
	Enumeration enumeration1 = session.getAttributeNames();
	
	while(enumeration1.hasMoreElements()){
		strName = enumeration1.nextElement().toString();
		strValue = session.getAttribute(strName).toString();
		out.println("strName : " + strName + "<br>");
		out.println("strValue: " + strValue + "<br>");
	}
	
	
	out.println("#################################<br>");
	session.invalidate();
	
	if(request.isRequestedSessionIdValid()){
		out.println("session valid");
	}else{
		out.println("session invalid");
	}

%>
</body>
</html>