<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게임 위키</title>
<link rel="stylesheet" href="../css/bootstrap.css">
<script src="../js/bootstrap.js"></script>

<style type="text/css">
* {
	margin: 5px;
	padding: 0;
}

#info {
	height: 590px;
	border: 1px solid black;
	overflow: scroll;
}

#news {
	height: auto;
}

#news h3 {
	border-bottom: 1px solid black;
}


#copyright {
	font-size: 10px;
}

.hyper {
	link {text-decoration: none;
	color: black;
}

visitied {
	text-decoration: none;
	color: black;
}

action {
	text-decoration: none;
	color: black;
}

hover {
	text-decoration: none;
	color: black;
}
}
</style>
</head>
<body>
	<div class="container">
	<nav class="navbar navbar-default">
	
		<div class="row">
			<div id="banner" class="col-sm-8">
				<a class="hyper" href="main.do" align="center"><h1>게임위키</h1></a>
			</div>
			<div id="srch" class="col-sm-3">
				<form action="search" method="post" class="form-inline">
					<input type="text" name="srch" class="form-control" placeholder="게시판명을 입력해주세요"> <input
						type="button" onclick="location.href ='../MainPage/NotReady.jsp'" class="btn btn-default btn-sm" value="검색">
				</form>

				<form action="makeboard.do" method="post">
					<input type="submit" class="btn btn-default btn-sm pull-right" value="새 게시판 만들기">
				</form>
			</div>
		</div>
		</nav>
	
	<div class="row">
		<div id="info" class="col-sm-9">
			<h2 align="center">환영합니다</h2>

			<p>
				<strong>구현한 기능:</strong> 게시판 db 테이블 만들기, 각 페이지 기본 폼(180112)
			</p>
			<p>만든게시판 들어가기(180115)</p>
			<p>네이버 스마트 에디터 드디어 적용(180115)</p>
			<p>iframe 자동 리사이징 (180115)(문제생김)</p>
			<p>iframe에 자유게시판 띄우기(180115)</p>
			<p>만든 게시판의 db 테이블 생성(180115)</p>
			<p>만든 게시판의 자유게시판 글 목록 불러오기(180115)</p>
			<p>만든 게시판의 자유게시판에 글쓰기(180115)</p>
			<p>게시판을 만들때 게시판 메뉴용 테이블도 같이 생성하기(180129)</p>
			<p>게시판메뉴 테이블에서 menuTitle 불러오기(180129)</p>
			<p>만든 게시판에 메뉴 추가 및 삭제 기능(180130)</p>
			<p>메뉴 컨텐츠 불러오기(180130)</p>
			<p>네이버 스마트 에디터 사용해 메뉴 컨텐츠 편집(180130)</p>
			<p>이미지 업로드 기능 구현(180201)</p>
			<p>부트스트랩을 이용한 디자인(약간)(180205)</p>
			<p>미구현된 기능 막아놓기(180205)</p>
			<p>게시판 생성시 대문 페이지 생성 및 수정가능(180205)</p>

			</br>
			<p>
				<strong>구현중인 기능:</strong>
			</p>
			<p>iframe 리사이징 기능구현</p>
			<p>connection Pool</p>
			<p>검색기능</p>
			</br>

			<p>
				<strong>문제:</strong> crate테이블 작동안함(테이블 이름에 ' ' 가 입력되어 쿼리
				오류)...(180117)(해결)
			</p>
			<p>해결방법 = String 쿼리를 나눠서 나중에 합쳐서 입력</p>
			<p>한글 입력이 ??? 로 표시(180117) ->해결(180118)</p>
			<p>모든 jsp페이지를 euc-kr로 인코딩= 실패</p>
			<p>mysql 모든 인코딩을 euc-kr로 바꿈 = 실패</p>
			<p>원인=get방식때문 /해결방법=톰캣 server.xml에서 connector에
				URIEncoding="EUC-KR"추가해줌</p>
			<p>iframe자동 리사이징 작동불가(임시방편으로 스크롤로 대체)</p>
			<p>업로드한 이미지가 화면을 벗어나는 현상(해결)</p>
			</br>

			<p>
				<strong>보류중인 기능:</strong> 로그인
			</p>


		</div>

		<div id="news" class="col-sm-2">
			<h3 align="center">게시판 목록</h3>
			<c:forEach items="${news }" var="dto">
				<p>
					<a href="board_view.do?bdId=${dto.bdId }&bdTitle=${dto.bdTitle }">${dto.bdTitle }</a>
				</p>
			</c:forEach>

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