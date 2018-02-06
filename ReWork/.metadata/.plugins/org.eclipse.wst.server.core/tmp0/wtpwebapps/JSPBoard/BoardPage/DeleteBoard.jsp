<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시판 삭제 확인</title>
<script src="../js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap.css">
<script src="../js/bootstrap.js"></script>

<style type="text/css">
* {
	margin: 5px;
	padding: 0;
}
</style>
</head>
<body>
<div class="container">
<nav class="navbar navbar-default">

<h1 align="center">정말로 ${bdTitle} 게시판을 삭제하시겠습니까?</h1>
</nav>
<div align="center">
<input class="btn btn-default btn-sm" type="button" value ="네" onclick="location.href ='deleteboard.do?bdTitle=${bdTitle}&bdId=${bdId }'">
<input class="btn btn-default btn-sm" type="button" value = "아니요" onClick="history.back()">
</div>
</div>

</body>
</html>