<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	requestDispacherJsp.jsp
	<hr>
	id: <%=request.getAttribute("id") %><br>
	pw: <%=request.getAttribute("pw") %><br>
	
	
	<%
		request.setAttribute("id", "jspdragon");
		request.setAttribute("pw", "67891");
		
		RequestDispatcher dispatcher =
				request.getRequestDispatcher("/ch13-forwarding/forwarded.jsp");
	
		dispatcher.forward(request, response);
	%>

</body>
</html>