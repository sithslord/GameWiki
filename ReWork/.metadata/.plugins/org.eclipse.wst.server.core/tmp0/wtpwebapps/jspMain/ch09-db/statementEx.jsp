<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%
	Connection conn = null;

	String sql = "INSERT INTO classroom(num, name) VALUES(2, 'ȫ�浿')";

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:ORCL";
	
	try{
		
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "codelab", "oracle_11g");
		
		Statement stmt = conn.createStatement();
		
		int result = stmt.executeUpdate(sql);
		
		if(result!=0){
			
			out.println("<h3>���ڵ尡 ��ϵǾ����ϴ�.</h3");
		}
		
	}catch(Exception e){
		out.println("<h3>���ڵ� ��Ͽ� �����Ͽ����ϴ�.</h3");
		e.printStackTrace();
	}finally{
		if(conn!=null){ try{ conn.close(); }catch(SQLException e){ e.printStackTrace(); } }
	}

%>
