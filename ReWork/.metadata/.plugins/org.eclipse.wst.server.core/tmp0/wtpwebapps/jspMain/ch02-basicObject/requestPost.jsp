<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");

	String formData = request.getParameter("data");

	out.println("�� ���������� ���� ������: " + formData);

%>