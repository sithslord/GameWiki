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
	String[] str = {"JSP��", "����", "���", "�ִ�." };
	%>
	
	<table border="1" width="250">
		<tr>
			<td>�迭�� index</td>
			<td>�迭�� ����</td>
		<tr>
		
		<tr>
			<td>0</td>
			<td>JSP��</td>
		<tr>
		
		<%
		for(int i=0; i<str.length ;i++){
		
		%>
			<tr>
				<td><%= i %></td>
				<td><%=str[i] %></td>
			<tr>
		<%	
		}
		%>
		
		
		
		 
		 </table>
		 
		<br>
		<table border="1" width="250">
		<tr>
			<td>�迭�� ����</td>
		<tr>
		<%
		 for(String s : str){
		
		%>
			<tr>
				<td><%=s %></td>
			<tr>
		<%	
		}
		%>
	

</body>
</html>