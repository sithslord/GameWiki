<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<jsp:useBean id="info" class="com.ch0703.User" scope="request" />
<jsp:setProperty name="info" property="name" />
<jsp:setProperty name="info" property="num" param="number" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method="post">
		<table border=0 width=300>
		
			<tr>
				<th bgcolor="#995599" colspan="2">
					<font color="white">�л�����</font>
				</th>
			</tr>
			<tr>
				<th width="40%" bgcolor="#bb6699">
					<font color="white">�̸�</font>
				</th>
				<td bgcolor="#bbccff" width="60%">
					<input type="text" name="name" value=<%=info.getName()%> size=30>
				</td>
			</tr>
			<tr>
				<th width="40%" bgcolor="#bb6699">
					<font color="white">�й�</font>
				</th>
				<td bgcolor="#bbccff" width="60%">
					<input type="text" name="number" value=<%=info.getNum()%> size=30>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="������">
					<input type="reset" value="�ٽþ���">
				</td>
			</tr>
		</table>
	</form>
	<jsp:include page="setget.jsp" />
</body>
</html>