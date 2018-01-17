<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>${board_view.bdTitle }</title>
<script src="../js/jquery-3.2.1.min.js"></script>


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

#wrap, iframe{
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
<script type="text/javascript">
$(function(){
	
	$('#navi a').click(function(){
		$('#iframe').attr('src', $(this).attr('data-url'));
	});
	
	function doResize(){
		var the_height=document.getElementById('iframe').contentWindow.document.body.scrollHeight;
		
		document.getElementById('iframe').height=the_height;
		
		document.getElementById('iframe').style.overflow = "hidden";
	}


	
});
</script>


</head>
<body>

	<div id="banner">
		<a class="hyper" href="board_view.do?bdId=${board_view.bdId }"><h1>${board_view.bdTitle }</h1></a><!-- href 수정요망 -->
		<div id="serLog">
			<form action="search" method="post">
				<input type="text" name="srch" size="30">
				<input type="submit" value="검색">
			</form>
		
			<form action="main.do" method="post">
				<input type="submit" value="메인으로">
			</form>
		</div>
	</div>
	
	<div id="navi">
	
		<c:forEach></c:forEach>
		<a href="board_view.do?bdId=${board_view.bdId }">${board_view.bdTitle }</a></br> <!-- 메뉴 추가 기능 -->
		<a href="#" data-url="viewFreeboard.do?bdTitle=${board_view.bdTitle}">자유게시판</a></br>
		<a href="menuMake.do?bdId=${board_view.bdId }">메뉴 편집</a>	
			
	</div>
	
	<div id="wrap">
		<iframe id="iframe" src=''  onload="doResize()" frameborder="0" scrolling="no" style="overflow-x:hidden; overflow:auto; width:100%; min-height:500px;"></iframe>
	</div>
	
	
	<div id="footer">
		
	
		<p id="copyright">&copy; 2018 Kyland All Rights Reserved </p>
	
	</div>





</body>
</html>