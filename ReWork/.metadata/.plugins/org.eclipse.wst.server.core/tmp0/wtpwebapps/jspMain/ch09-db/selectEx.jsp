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
	<h3>Student 정보</h3>
	<table width="550">
		<tr>
			<td align="right">
				<a href="insertForm.jsp">등록</a>
			</td>
		</tr>
	</table>
	<table width="550" border="1">
	<tr>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
		<th>가입일자</th>
	</tr>
<%
	String jdbcURL = "jdbc:oracle:thin:@localhost:1521:orcl";
	String dbId = "codelab";
	String dbPasswd = "oracle_11g";

	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(jdbcURL, dbId, dbPasswd);
		
		String sql = "SELECT * FROM student";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()){
			String id = rs.getString("id");
			String passwd = rs.getString("passwd");
			String name = rs.getString("name");
			Date reg_date = rs.getDate("reg_date");
			%>
			<tr>
				<td width="100"><a href="updateForm.jsp?id=<%=id %>"><%=id %></a></td>
				<td width="100"><%=passwd %></td>
				<td width="200"><%=name %></td>
				<td width="120"><%=reg_date %></td>
			</tr>
			<%
		}
		
	}catch(Exception e){
		out.println("예외 발생");
		e.printStackTrace();
	}finally{
		try{
			if(rs!=null) rs.close();
			if(pstmt!=null) pstmt.close();
			if(con !=null) con.close();
			
		}catch(Exception e){ e.printStackTrace(); }
	}

%>	
	
	</table>

</body>
</html>