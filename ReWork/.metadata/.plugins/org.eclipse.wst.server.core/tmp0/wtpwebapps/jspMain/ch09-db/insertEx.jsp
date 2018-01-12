<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("EUC-KR");

	String jdbcURL = "jdbc:oracle:thin:@localhost:1521:orcl";
	String dbId = "codelab";
	String dbPasswd = "oracle_11g";

	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	
	Connection con = null;
	PreparedStatement pstmt = null;
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(jdbcURL, dbId, dbPasswd );
		
		String sql = "INSERT INTO student(id, passwd, name, reg_date) VALUES(?, ?, ?, sysdate)";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, passwd);
		pstmt.setString(3, name);
		
		int cnt = pstmt.executeUpdate();
		
		%>
		
		<%=cnt %> 개 행이 추가되었습니다.<br>
		<input type="button" value="목록보기" onclick="location.href='selectEx.jsp'">
		
		<%
	}catch(Exception e){
		out.println("예외 발생!!!");
		e.printStackTrace();
		
	}finally{
		try{
			if(pstmt!=null) pstmt.close();
			if(con !=null) con.close();
			
		}catch(Exception e){ e.printStackTrace(); }
		
	}

%>
</body>
</html>