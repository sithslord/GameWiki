<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>${content_view.bTitle }</title>
<link rel="stylesheet" href="../css/bootstrap.css">
<script src="../js/bootstrap.js"></script>
<script src="../js/jquery-3.2.1.min.js"></script>
</head>
<body>
<div class="container-fluid">
	<table class="table">
		<form action="modify.do" method="post">
		<input type="hidden" name="bId" value="${content_view.bId }">
		<input type="hidden" name="bdTitle" value="${bdTitle }">
			</tr>
				<td class="text-muted">제목</td>
				<td>${content_view.bTitle }</td>
			</tr>
			
			<tr>
				<td class="text-muted">작성자</td>
				<td border="1">${content_view.bName }</td>
			
			<tr>
				<td class="text-muted">내용</td>
				<td><textarea readonly rows="15" cols="100">${content_view.bContent }</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input class="btn btn-default pull-right" type="submit" value="수정">&nbsp;&nbsp;
					<a class="btn btn-default pull-right" href="viewfreeboard.do?bdTitle=${bdTitle }">목록보기</a>&nbsp;&nbsp;
					<a class="btn btn-default pull-right" href="delete.do?bId=${content_view.bId }&bdTitle=${bdTitle }">글 삭제</a>&nbsp;&nbsp;
					<a class="btn btn-default pull-right" href="../MainPage/NotReady.jsp">답변</a>
				</td>
			</tr>
		</form>
	</table>
	</div>

</body>
</html>