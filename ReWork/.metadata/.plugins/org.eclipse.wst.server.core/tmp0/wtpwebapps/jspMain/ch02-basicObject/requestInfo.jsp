<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	클라이언트의 IP : <%= request.getRemoteAddr() %><br>
	요청정보 프로토콜: <%= request.getProtocol() %><br>
	요청 전송 방식: <%= request.getMethod() %><br>
	요청 URL: <%= request.getRequestURL() %><br>
	요청 URI: <%= request.getRequestURI() %><br>
	컨텍스트 경로: <%= request.getContextPath() %><br>
	서버이름: <%= request.getServerName()	%><br>
	서버포트: <%= request.getServerPort() %><br>
</body>
</html>