<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/bootstrap.css">
<script src="../js/bootstrap.js"></script>
<script src="../js/jquery-3.2.1.min.js"></script>
<style>
img{
	max-width: 800px;
}


</style>

</head>
<body>
<div class="container-fluid">
<div>
${WelcomePage.bdTitle }

</div>

<input class="btn btn-default pull-right btn-sm" type="button" onclick="location.href='modifyWelcome.do?bdTitle=${bdTitle}&menuTitle=${menuTitle }'" value="����">
</div>
</body>
</html>