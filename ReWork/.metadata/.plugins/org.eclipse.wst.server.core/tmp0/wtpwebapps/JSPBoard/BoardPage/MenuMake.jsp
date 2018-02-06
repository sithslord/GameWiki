<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% String ctx = request.getContextPath(); //프로젝트 패스 얻어오기 %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>메뉴편집 페이지</title>

<style type="text/css">
* {
	margin: 5px;
	padding: 0;
}
</style>

<link rel="stylesheet" href="../css/bootstrap.css">
<script src="../js/bootstrap.js"></script>

<script src="<%=ctx %>/js/jquery-3.2.1.min.js"></script>
<script>

</script>
</head>
<body>

<div class="container">
<nav class="navbar navbar-default">

<h1 align="center">${bdTitle } 메뉴 편집 페이지</h1><br />	
</nav>
<center>
<div class="form-group">
<form action="makemenu.do?bdTitle=${bdTitle }&bdId=${bdId }" method="post">
	<input type="text" name="menuL" placeholder="메뉴명을 입력해주세요" size="30"> <input type="submit" class="btn btn-default btn-sm" value="추가">
</form>
</div>
</center>
<form action="menudelete.do?bdTitle=${bdTitle }&bdId=${bdId }" method="post">

<c:forEach items="${menu }" var="dto">
<p style="font-size: 20px">${dto.menuTitle }

<input type="checkbox" value=${dto.menuTitle } name="menu"><br /></p><p></p>

</c:forEach>

<input class="btn btn-default pull-right" type="submit" value="삭제하기" >
<input class="btn btn-default pull-right" type="button" value="편집완료" onclick = "location.href = 'board_view.do?bdId=${bdId }&bdTitle=${bdTitle }'">

</form>
</div>
</body>
</html>