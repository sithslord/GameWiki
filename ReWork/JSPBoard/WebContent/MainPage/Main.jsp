<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���� ��Ű</title>
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
		<a class="hyper" href="Main.jsp"><h1>������Ű</h1></a>
		
		<form action="search" method="post">
			<input type="text" name="srch" size="30">
			<input type="submit" value="�˻�">
		</form>
		
		<form action="login" method="post">
			<input type="submit" value="�α���">
		</form>
	
	</div>
	
	<div id="info">
		<h2 align="center">ȯ���մϴ�</h2>
		
		<p>���� �������Դϴ�.</p>
	
	
	</div>
	
	<div id="news">
		<h3 align="center">�ֱ� ���Ż���</h3>
		<p>���Ż��� ������</p>
	</div>
	
	<div id="footer">
		
	
		<p id="copyright">&copy; 2018 Kyland All Rights Reserved </p>
	
	</div>
	


</body>
</html>