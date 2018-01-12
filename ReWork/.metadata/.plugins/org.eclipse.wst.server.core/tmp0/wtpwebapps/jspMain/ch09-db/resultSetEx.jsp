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
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()){
			out.println("<h3>" + rs.getInt(1) + ", " + rs.getString(2) + "</h3>");
		}
		
		rs.close();
		pstmt.close();
		conn.close();
		
	}catch(Exception e){
		out.println("<h3>������ �������⿡ �����Ͽ����ϴ�.</h3>");
		e.printStackTrace();
	}

%>
