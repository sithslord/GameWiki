<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	name: <%=request.getParameter("name") %> <br>
	address: <%=request.getParameter("address") %><br>
	major: <%=request.getParameter("major") %><br>
	hobby: <%=request.getParameter("hobby") %><br>

	pet:
	<%
	String[] values = request.getParameterValues("pet");
	
	if(values!=null){
		for(int i=0; i< values.length;i++){
			if(i!=0){
				%>
				,
				<%
			}%>
			<%= values[i]%>	
		<%
		}// for
	} // if
	%>

</body>
</html>