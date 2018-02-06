<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>새 게시판 만들기</title>
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

<h1 align="center">새로운 게시판을 만듭니다.</h1>
</nav>
		<form class="form-inline" action="makeboard.go" method="post">
			<div class="form-group">
				<input class="form-control" size="80" type="text" name="bdTitle" placeholder="만드실 게시판 이름을 넣어주세요">
				<input class="btn btn-default btn-sm" type="submit" value="게시판 생성">
				<a class="btn btn-default btn-sm" type="submit" href="main.do">메인페이지로</a>	
				
			</div>
		</form>
</div>

</body>
</html>