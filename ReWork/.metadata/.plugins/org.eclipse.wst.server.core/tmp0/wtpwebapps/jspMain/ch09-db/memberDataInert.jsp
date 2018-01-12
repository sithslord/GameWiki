<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%! 
	Connection connection;
	PreparedStatement preparedStatement;
	ResultSet resultSet;
	
	String driver ="oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String uid = "codelab";
	String upw = "oracle_11g";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	try{
		Class.forName(driver);
		connection = DriverManager.getConnection(url, uid, upw );
		
		int n;
		String query="INSERT INTO memberpsmt(id, pw, name, phone) VALUES(?, ?, ?, ?)";
		preparedStatement = connection.prepareStatement(query);
		
		preparedStatement.setString(1, "mercury");
		preparedStatement.setString(2, "1234");
		preparedStatement.setString(3, "수성");
		preparedStatement.setString(4, "010-1234-4567");
		n = preparedStatement.executeUpdate();
		
		preparedStatement.setString(1, "venus");
		preparedStatement.setString(2, "4567");
		preparedStatement.setString(3, "금성");
		preparedStatement.setString(4, "010-4567-7890");
		n = preparedStatement.executeUpdate();
		
		preparedStatement.setString(1, "earth");
		preparedStatement.setString(2, "2345");
		preparedStatement.setString(3, "지구");
		preparedStatement.setString(4, "010-3456-5678");
		n = preparedStatement.executeUpdate();
		
		preparedStatement.setString(1, "jupiter");
		preparedStatement.setString(2, "1122");
		preparedStatement.setString(3, "목성");
		preparedStatement.setString(4, "010-5678-3456");
		n = preparedStatement.executeUpdate();
		
		if(n==1){
			out.println("INSERT Success");
		}else{
			out.println("INSERT Fail");
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(preparedStatement!=null) preparedStatement.close();
			if(connection !=null) connection.close();
		}catch(Exception e){	e.printStackTrace(); 	}
	}

%>
<br>
<a href="memberDataView.jsp">회원 정보 보기</a>
</body>
</html>
