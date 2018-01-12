<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게임 위키</title>
<style type="text/css">

*{
	margin: 5px;
	padding: 0;
}

body{
	width: 1280px;
	margin: 0 auto;
}

#banner h1{
	background: lime;
	float: left;
	width: 950px;
	height: 90px;
	text-align: center;
}

#banner form{
	float: right;
}

#info{
	float: left;
	width: 950px;
	height: auto;
	border: 1px solid black;
	
}



#news{
	float: right;
	width: 300px;
	height: auto;
}

#news h3{
	border-bottom: 1px solid black;
}

#footer{

	position: absolute;
	bottom: 0;
	text-align: center !important;
		
}

#copyright{
	font-size: 10px;
	margin-left: 550px;
}

.hyper{
	link{text-decoration:none; color:black;}
	visitied{text-decoration:none; color:black;}
	action{text-decoration:none; color:black;}
	hover{text-decoration:none; color:black;}
}



</style>
</head>
<body>
	<div id="banner">
		<a class="hyper" href="main.do"><h1>게임위키</h1></a>
		
		<form action="search" method="post">
			<input type="text" name="srch" size="30">
			<input type="submit" value="검색">
		</form>
		
		<form action="makeboard.do" method="post">
			<input type="submit" value="새 게시판 만들기">
		</form>
	
	</div>
	
	<div id="info">
		<h2 align="center">환영합니다</h2>
		
		<p>구현한 기능: 게시판 db 테이블 만들기, 각 페이지 기본 폼</p>
		
		<p>구현중인 기능: 만든 게시판 들어가기...</p>
		
		<p>보류중인 기능: 검색, 로그인</p>
	
	
	</div>
	
	<div id="news">
		<h3 align="center">게시판 목록</h3>
		<c:forEach items="${news }" var="dto">
			<p><a href="board_view.do?bdTitle=${dto.bdTitle }">${dto.bdTitle }</a></p>
		</c:forEach>
		
		<p>갱신사항 공사중</p>
	</div>
	
	<div id="footer">
		
	
		<p id="copyright">&copy; 2018 Kyland All Rights Reserved </p>
	
	</div>
	


</body>
</html>