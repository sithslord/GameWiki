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
		<form action="makeboard.go" method="post">
			
			<tr>
				<td>제목</td>
				<td><input type="text" name="bdTitle" size="50"></td>
			<tr>
		
			<tr>
				<td colspan="2"> <!-- 셀합치기 -->
					<input type="submit" value="게시판 생성">&nbsp;&nbsp;
					<a href="main.do">메인페이지로</a>	
				</td>
			</tr>	
		</form>
	</table>

</body>
</html>