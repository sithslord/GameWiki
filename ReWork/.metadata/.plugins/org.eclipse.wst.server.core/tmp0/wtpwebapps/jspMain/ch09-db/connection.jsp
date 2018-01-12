<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.SQLException" %>
<%
	String jdbcURL = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id="codelab";
	String passwd ="oracle_11g";
	Connection con = null;
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(jdbcURL, id, passwd);
		
		out.println("정상적으로 데이터베이스에 접속되었습니다.");
		
	}catch(SQLException e){
		out.println("예외가 발생하였습니다.");
		e.printStackTrace();
	}finally{
		if(con!=null){ try{ con.close(); }catch(SQLException e){ e.printStackTrace(); } }
	}
	

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>