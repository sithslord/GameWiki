<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시판 삭제 확인</title>
</head>
<body>
<h1 align="center">정말로 ${bdTitle} 게시판을 삭제하시겠습니까?</h1>
<div align="center">
<input type="button" value ="네" onclick="location.href ='deleteboard.do?bdTitle=${bdTitle}&bdId=${bdId }'">
<input type="button" value = "아니요" onclick="location.href='board_view.do?bdId=${bdId }&bdTitle=${bdTitle }'">
</div>


</body>
</html>