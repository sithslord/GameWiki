<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�Խ��� ���� Ȯ��</title>
</head>
<body>
<h1 align="center">������ ${bdTitle} �Խ����� �����Ͻðڽ��ϱ�?</h1>
<div align="center">
<input type="button" value ="��" onclick="location.href ='deleteboard.do?bdTitle=${bdTitle}&bdId=${bdId }'">
<input type="button" value = "�ƴϿ�" onclick="location.href='board_view.do?bdId=${bdId }&bdTitle=${bdTitle }'">
</div>


</body>
</html>