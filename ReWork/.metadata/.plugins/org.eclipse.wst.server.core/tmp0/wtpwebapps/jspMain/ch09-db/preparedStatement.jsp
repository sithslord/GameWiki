<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>

<%
	Connection conn = null;

	String sql = "INSERT INTO classroom(num, name) VALUES (?, '김연아')";
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:ORCL";
	
	try{
		
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "codelab", "oracle_11g");
		
		PreparedStatement stmt = conn.prepareStatement(sql);
		
		for(int i=3; i<=5 ;i++){
			
			stmt.setInt(1, i);
			
			if(stmt.executeUpdate()!=0){
				out.println("<h3>" + i + "번 레코드를 추가하였습니다.</h3>");
			}
		}
		
	}catch(Exception e){
		out.println("<h3>레코드 등록에 실패하였습니다.</h3>");
		e.printStackTrace();
	}
	finally{
		if(conn!=null){ try{ conn.close(); }catch(SQLException e){ e.printStackTrace(); } }
	}



%>
