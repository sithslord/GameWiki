<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>

<%
	Connection conn = null;
	String sql = "SELECT * FROM classroom";
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:ORCL";

	try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "codelab", "oracle_11g");
		
		PreparedStatement pstmt = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_SENSITIVE, 
				ResultSet.CONCUR_UPDATABLE);
		
		ResultSet rs = pstmt.executeQuery();
		
		rs.last();
		out.println(rs.getInt(1) + ", " + rs.getString(2) + "<br>");
		
		rs.first();
		out.println(rs.getInt(1) + ", " + rs.getString(2) + "<br>");
		
		rs.absolute(3);
		out.println(rs.getInt(1) + ", " + rs.getString(2) + "<br>"); 
		
	}catch(Exception e){
		out.println("<h3>데이터를 가져오는데 실패하였습니다.</h3>");
	}
	
%>