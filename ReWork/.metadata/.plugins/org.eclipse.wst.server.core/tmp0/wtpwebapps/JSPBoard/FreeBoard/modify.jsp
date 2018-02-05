<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/bootstrap.css">
<script src="../js/bootstrap.js"></script>
<script src="../js/jquery-3.2.1.min.js"></script>
</head>
<body>
<div class="container-fluid">
<table class="table">
	
		<form action="modifyComplete.do" method="post">
			<input type="hidden" name="bId" value="${modify.bId }">
			<input type="hidden" name="bdTitle" value="${bdTitle }">
			
			<td>작성자</td>
				<td border="1">${modify.bName }</td>
			</tr>
				<td>제목</td>
				<td><input type="text" name="bTitle" size="50" value="${modify.bTitle }"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="15" name="bContent" cols="100">${modify.bContent }</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input class="btn btn-default pull-right" type="submit" value="등록">&nbsp;&nbsp;
					<a class="btn btn-default pull-right" href="viewfreeboard.do?bdTitle=${bdTitle }">목록보기</a>&nbsp;&nbsp;
					<a class="btn btn-default pull-right" href="delete.do?bId=${modify.bId }&bTitle=${bdTitle }">글 삭제</a>&nbsp;&nbsp;
				</td>
			</tr>
		</form>	
	</table>
	</div>

</body>
</html>