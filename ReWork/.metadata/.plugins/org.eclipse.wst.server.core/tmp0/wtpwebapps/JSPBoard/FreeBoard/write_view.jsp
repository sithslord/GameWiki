<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table width="1024" cellpadding = "2" cellspacing = "2" border = "0" align="center">
		<form action="write.do" method="post"> <!-- submit��ư�� ������ write.do�� ��ȯ�ȴ� -->
			<tr>
				<td>�̸�</td>
				<td><input type="text" name="bName" size="10"></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="text" name="bTitle" size="50"></td>
			<tr>
			<tr>
				<td>����</td>
				<td><textarea name="bContent" cols="100" rows="10"></textarea></td>
			</tr>
			<tr>
				<td colspan="2"> <!-- ����ġ�� -->
					<input type="submit" value="�Է�">&nbsp;&nbsp;
					<a href="list.do">��Ϻ���</a>	
				</td>
			</tr>	
		</form>
	</table>

</body>
</html>