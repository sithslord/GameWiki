<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>

<%
	Connection conn = null;

	String sql = "INSERT INTO classroom(num, name) VALUES (?, '�迬��')";
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:ORCL";
	
	try{
		
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "codelab", "oracle_11g");
		
		PreparedStatement stmt = conn.prepareStatement(sql);
		
		for(int i=3; i<=5 ;i++){
			
			stmt.setInt(1, i);
			
			if(stmt.executeUpdate()!=0){
				out.println("<h3>" + i + "�� ���ڵ带 �߰��Ͽ����ϴ�.</h3>");
			}
		}
		
	}catch(Exception e){
		out.println("<h3>���ڵ� ��Ͽ� �����Ͽ����ϴ�.</h3>");
		e.printStackTrace();
	}
	finally{
		if(conn!=null){ try{ conn.close(); }catch(SQLException e){ e.printStackTrace(); } }
	}



%>
