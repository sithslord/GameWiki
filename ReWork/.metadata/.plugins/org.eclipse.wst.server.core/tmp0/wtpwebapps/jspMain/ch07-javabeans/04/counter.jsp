<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.text.DecimalFormat" %>
<jsp:useBean id="cnt" class="com.ch0704.Counter" scope="application" />
<%
	int count = 0;

	session = request.getSession();
	
	session.setMaxInactiveInterval(1);
	
	String first = (String)session.getAttribute("checkfirst");
	
	if(first !=null ){
		count = cnt.getCount();
	}else{
		cnt.setCount();
		count = cnt.getCount();
		
		session.setAttribute("checkfirst", "first");
		
	}
	
// 	out.println("현재까지 방문자 수: " + count);
	out.println("현재까지 방문자 수: ");
	DecimalFormat formatc = new DecimalFormat("0000");
	String scount = null;
	String pos = null;
	int p = 0;
	
	scount = formatc.format(count);
	for(p=0; p<4 ; p++){
		pos = scount.substring(p, p+1);
		pos = "n" + pos + ".png";
		out.println("<img src=img/" + pos + " width=20 /> ");
	}
%>