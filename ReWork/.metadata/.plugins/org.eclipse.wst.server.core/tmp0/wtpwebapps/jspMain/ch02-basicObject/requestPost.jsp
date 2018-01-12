<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");

	String formData = request.getParameter("data");

	out.println("웹 브라우저에서 받은 데이터: " + formData);

%>