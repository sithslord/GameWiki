<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import = "com.oreilly.servlet.MultipartRequest" %>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import = "java.util.Enumeration" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%

	String path = application.getRealPath("fileFolder");
	System.out.println(path);

	int size = 1024*1024*10;
	
	String file = "";
	String originFile = "";
	
	try{
		
		MultipartRequest multipartRequest = 
				new MultipartRequest(request, path, size, "EUC-KR", 
						new DefaultFileRenamePolicy());
		
		Enumeration files = multipartRequest.getFileNames();
		String str = (String)files.nextElement();
		
		file = multipartRequest.getFilesystemName(str);
		System.out.println(file);
		originFile = multipartRequest.getOriginalFileName(str);
		
	}catch(Exception e){
		e.printStackTrace();
	}
	out.println("<h1>File Uplad Success!!!</h1>");
	out.println("<img src=\"/jspMain/fileFolder/" + file + "\">");
	
%>
</body>
</html>