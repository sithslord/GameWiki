<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>${board_view.bdTitle }</title>
<script src="../js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap.css">
<script src="../js/bootstrap.js"></script>


<style type="text/css">
* {
	margin: 5px;
	padding: 0;
}

#navi {
	border-right: 1px solid black;
}


#copyright {
	font-size: 10px;
}
</style>
<script type="text/javascript">
	$(function() {

		$('#navi a').click(function() {
			$('#iframe').attr('src', $(this).attr('data-url'));
		});

		function doResize() {
			var the_height = document.getElementById('iframe').contentWindow.document.body.scrollHeight;

			document.getElementById('iframe').height = the_height;

			document.getElementById('iframe').style.overflow = "hidden";
		}

	});
</script>


</head>
<body>
	<div class="container">
		<div class="row">
			<div id="banner" class="col-sm-8">
				<a href="board_view.do?bdId=${board_view.bdId }&bdTitle=${board_view.bdTitle }">
				<h1	align="center">${board_view.bdTitle }</h1></a>
			</div>
			<div id="serLog" class="col-sm-3">
				<form action="search" method="post" class="form-inline">
					<input type="text" class="form-control" name="srch" placeholder="게시판명을 입력해주세요"> <input
						type="button" onclick="location.href ='../MainPage/NotReady.jsp'" class="btn btn-default btn-sm" value="검색">
				</form>

				<form action="main.do" method="post">
					<input type="submit" class="btn btn-default btn-sm pull-right" value="메인으로">
				</form>
			</div>
		</div>
		<div class="row">
			<div id="navi" class="col-sm-2">

				<c:forEach items="${menu_view }" var="menu">
					<a href="#"
						data-url="viewMenuContent.do?bdTitle=${board_view.bdTitle }&bdId=${board_view.bdId }&menuTitle=${menu.menuTitle }">${menu.menuTitle }</a>
					<br />
					<br />

				</c:forEach>
				<a href="#"
					data-url="viewfreeboard.do?bdTitle=${board_view.bdTitle }">자유게시판</a><br />
				<a
					href="viewmenu.do?bdTitle=${board_view.bdTitle }&bdId=${board_view.bdId }">메뉴
					편집</a><br /> <a
					href="deletecheck.do?bdTitle=${board_view.bdTitle }&bdId=${board_view.bdId }">게시판
					삭제</a>

			</div>

			<div id="wrap" class="col-sm-9">
				<iframe onload="doResize();" id="iframe" src='welcome.do?bdTitle=${board_view.bdTitle }' frameborder="0"
					scrolling="yes"
					style="overflow-x: hidden; overflow: auto; width: 100%; min-height: 580px;"></iframe>
			</div>
		</div>

		
	<div class="row">
	<div class="col-sm-12">
	
		<p align="center" id="copyright">&copy; 2018 Kyland All Rights Reserved</p>
	</div>
	</div>
	</div>




</body>
</html>