<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�Խ��� ���� Ȯ��</title>
<script src="../js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap.css">
<script src="../js/bootstrap.js"></script>

</head>
<body>
<h1 align="center">������ ${bdTitle} �Խ����� �����Ͻðڽ��ϱ�?</h1>
<div align="center">
<input class="btn btn-default btn-sm" type="button" value ="��" onclick="location.href ='deleteboard.do?bdTitle=${bdTitle}&bdId=${bdId }'">
<input class="btn btn-default btn-sm" type="button" value = "�ƴϿ�" onClick="history.back()">
</div>


</body>
</html>