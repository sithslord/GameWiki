<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>db에서 값 가져오기</title>
<style type/css>
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

#serLog{
	float: right;
	height: 90px;
}

#login{
	
}

#navi{
	float: left;
	width: 250px;
	border-right: 1px solid black;
}

#wrap{
	float: right;
	width: 1000px;
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
</style>
</head>
<body>
	<div id="banner">
		<a class="hyper" href="BoardMain.jst"><h1>${dto.bdTitle}</h1></a><!-- href 수정요망 -->
		<div id="serLog">
			<form action="search" method="post">
				<input type="text" name="srch" size="30">
				<input type="submit" value="검색">
			</form>
		
			<form action="login" method="post">
				<input type="submit" value="로그인">
			</form>
		</div>
	</div>
	
	<div id="navi">
		<c:forEach begin="1" end="${dto.bdIndent }">-</c:forEach>
		<a href="load_Content.do?bdTitle=${dto.bdId} }">${bto.bdTitle }</a>
		
	
	</div>
	
	<div id="wrap">
		<iframe src=''></iframe>
	</div>
	
	
	<div id="footer">
		
	
		<p id="copyright">&copy; 2018 Kyland All Rights Reserved </p>
	
	</div>





</body>
</html>