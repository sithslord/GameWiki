<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	request.setCharacterEncoding("EUC-KR");	

	String code = request.getParameter("code");
	String viewPageURI = null;
	
	if(code.equals("A")){
		viewPageURI = "a.jsp";
	}else if(code.equals("B")){
		viewPageURI = "b.jsp";
	}else if(code.equals("C")){
		viewPageURI = "c.jsp";
	}else if(code.equals("D")){
		viewPageURI = "d.jsp";
	}else if(code.equals("E")){
		viewPageURI = "e.jsp";
	}
%>
<jsp:forward page="<%=viewPageURI%>">
	<jsp:param name="option" value="alphabet페이지 선택 결과"/>
</jsp:forward>
    