<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>

<%
	Connection conn = null;

	try{
		
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		
		out.println("<h3>데이터베이스에 연결되었습니다.</h3>");
	}catch(Exception e){
		out.println("<h3>데이터베이스 연결에 실패하였습니다.</h3>");
		e.printStackTrace();
	}
%>