<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="viewParameter.jsp" method="post">
		�̸�: <input type="text" name="name" size="10"><br>
		�ּ�:<input type="text" name="address" size=30><br>
		�����ϴ� ����:
		<input type="checkbox" name="pet" value="dog_Big">ū ��
		<input type="checkbox" name="pet" value="dog_Samll">���� ��
		<input type="checkbox" name="pet" value="dog_Middle">���� ��
		<input type="checkbox" name="pet" value="dog_Normal">�׳� ��
		<input type="checkbox" name="pet" value="dog_Bite">�߹��� ��<br>
		
		����:
		<input type="radio" name="major" value="korea">����
		<input type="radio" name="major" value="english">����
		<input type="radio" name="major" value="math">����
		<input type="radio" name="major" value="science">����
		<input type="radio" name="major" value="coding">�ڵ�
		<input type="radio" name="major" value="art">����
	
		���:
		<select name="hobby">
			<option value="jogging">����</option>
			<option value="cooking">�丮</option>
			<option value="swimming">����</option>
			<option value="reading">����</option>
			<option value="collecting">����</option>
			<option value="cross_stitching">���ڼ�</option>
		</select>
		<input type="submit" value="����">
	</form>
</body>
</html>