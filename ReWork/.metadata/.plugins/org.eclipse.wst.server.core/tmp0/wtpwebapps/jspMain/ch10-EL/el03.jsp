<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="member" class="com.ch10.MemberInfo" scope="page" />
<jsp:setProperty name="member" property="name" value="김연아" />
<jsp:setProperty name="member" property="id" value="queenyuna" />
<jsp:setProperty name="member" property="pw" value="2080" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	이름: <jsp:getProperty name="member" property="name" /><br>
	아이디: <jsp:getProperty name="member" property="id" /> <br>
	비밀번호: <jsp:getProperty name="member" property="pw" /> <br>

	<hr>
	이름: ${ member.name }<br>
	아이디: ${ member.id } <br>
	비밀번호: ${ member.pw } <br>


</body>
</html>