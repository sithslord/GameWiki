<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
img{
	max-width: 700px;
}


</style>
<script src="../js/jquery-3.2.1.min.js"></script>

</head>
<body>
<div>
${menuContent_view.menuContent }

</div>

<input type="button" onclick="location.href='modifyMenuContent.do?bdTitle=${bdTitle}&menuTitle=${menuTitle }'" value="����">

</body>
</html>