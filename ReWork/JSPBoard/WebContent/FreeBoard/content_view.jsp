<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<table width="1024" cellpadding = "2" cellspacing = "2" border = "0" align="center">
		<form action="modify.do" method="post">
		<input type="hidden" name="bId" value="${content_view.bId }">
			<tr>
				<td>번호</td>
				<td>${content_view.bId }</td>
			</tr>
			<tr>
				<td>히트</td>
				<td>${content_view.bHit }</td>
			<tr>
				<td>이름</td>
				<td border="1">${content_view.bName }</td>
			</tr>
				<td>제목</td>
				<td>${content_view.bTitle }</td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea readonly rows="10" cols="100">${content_view.bContent }</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="수정">&nbsp;&nbsp;
					<a href="list.do">목록보기</a>&nbsp;&nbsp;
					<a href="delete.do?bId=${content_view.bId }">글 삭제</a>&nbsp;&nbsp;
					<a href="reply_view.do?bId=${content_view.bId }">답변</a>
				</td>
			</tr>
		</form>
	</table>

</body>
</html>