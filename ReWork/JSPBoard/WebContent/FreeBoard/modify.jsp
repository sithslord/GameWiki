<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table width="1024" cellpadding = "2" cellspacing = "2" border = "0" align="center">
		<form action="modifyComplete.do" method="post">
		<input type="hidden" name="bId" value="${modify.bId }">
		<input type="hidden" name="bdTitle" value="${bdTitle }">
			<tr>
				<td>번호</td>
				<td>${modify.bId }</td>
			</tr>
			<tr>
				<td>히트</td>
				<td>${modify.bHit }</td>
			<tr>
				<td>이름</td>
				<td border="1">${modify.bName }</td>
			</tr>
				<td>제목</td>
				<td><input type="text" name="bTitle" value="${modify.bTitle }"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" name="bContent" cols="100">${modify.bContent }</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="등록">&nbsp;&nbsp;
					<a href="viewfreeboard.do?bdTitle=${bdTitle }">목록보기</a>&nbsp;&nbsp;
					<a href="delete.do?bId=${modify.bId }&bTitle=${bdTitle }">글 삭제</a>&nbsp;&nbsp;
				</td>
			</tr>
		</form>	
	</table>

</body>
</html>