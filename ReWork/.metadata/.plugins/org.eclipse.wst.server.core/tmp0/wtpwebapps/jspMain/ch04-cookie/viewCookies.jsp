<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import="java.net.URLDecoder" %>
<%
	Cookie[] cookies = request.getCookies();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		if( cookies!=null && cookies.length>0){
			for(int i=0; i<cookies.length ; i++){
%>
			<%=cookies[i].getName() %>:
			<%=URLDecoder.decode(cookies[i].getValue(), "EUC-KR") %><br>
<%
				
			}
		}else{
			%>
			��Ű�� �������� �ʽ��ϴ�.
			<%
		}
	%>

</body>
</html>