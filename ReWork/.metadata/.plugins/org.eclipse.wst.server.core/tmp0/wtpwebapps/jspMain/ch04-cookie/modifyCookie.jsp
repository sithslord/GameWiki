<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.net.URLEncoder" %>
<%
	Cookie[] cookies = request.getCookies();

	if(cookies!=null && cookies.length>0){
		for(int i=0; i<cookies.length ;i++){
			if(cookies[i].getName().equals("iscookieName")){
				Cookie cookie = new Cookie("iscookieName", URLEncoder.encode("쿠키변경됨", "EUC-KR"));
				
				cookie.setMaxAge(30*60);
				
				response.addCookie(cookie);
			}
			
			if(cookies[i].getName().equals("cookieName")){
				Cookie cookie = new Cookie("cookieName", "cookie_modified");
				
				cookie.setMaxAge(30*60);
				
				response.addCookie(cookie);
			}
		}
	}


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	쿠키값이 변경되었습니다.
</body>
</html>