<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table width="1024" cellpadding = "2" cellspacing = "2" border = "0" align="center">
		<form action="modifyComplete.do" method="post">
		<input type="hidden" name="bId" value="${modify.bId }">
		<input type="hidden" name="bdTitle" value="${bdTitle }">
			<tr>
				<td>��ȣ</td>
				<td>${modify.bId }</td>
			</tr>
			<tr>
				<td>��Ʈ</td>
				<td>${modify.bHit }</td>
			<tr>
				<td>�̸�</td>
				<td border="1">${modify.bName }</td>
			</tr>
				<td>����</td>
				<td><input type="text" name="bTitle" value="${modify.bTitle }"></td>
			</tr>
			<tr>
				<td>����</td>
				<td><textarea rows="10" name="bContent" cols="100">${modify.bContent }</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="���">&nbsp;&nbsp;
					<a href="viewfreeboard.do?bdTitle=${bdTitle }">��Ϻ���</a>&nbsp;&nbsp;
					<a href="delete.do?bId=${modify.bId }&bTitle=${bdTitle }">�� ����</a>&nbsp;&nbsp;
				</td>
			</tr>
		</form>	
	</table>

</body>
</html>