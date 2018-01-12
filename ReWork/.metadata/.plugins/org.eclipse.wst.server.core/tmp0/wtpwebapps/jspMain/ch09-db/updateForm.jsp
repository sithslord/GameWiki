<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

	String id = request.getParameter("id");

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="updateEx.jsp" method="post">
	<input type="hidden" name="id" value="<%=id %>" >
	아이디: <%=id %><br>
	변경할 비밀번호: <input type="password" name="passwd"><br>
	변경할 이름: <input type="text" name="name"><br>
	<input type="submit" value="수정하기">
	</form>

</body>
</html>