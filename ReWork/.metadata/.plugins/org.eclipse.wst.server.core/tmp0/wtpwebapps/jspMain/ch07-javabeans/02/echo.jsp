<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- com.ch0702.Echo myEcho = new com.ch0702.Echo() -->
<jsp:useBean id="myEcho" class="com.ch0702.Echo" scope="page" ></jsp:useBean>
<jsp:setProperty name="myEcho" property="msg" />

<%

	out.println("Echo빈즈에서 받은 내용: " + myEcho.getMsg() );
%>

</body>
</html>