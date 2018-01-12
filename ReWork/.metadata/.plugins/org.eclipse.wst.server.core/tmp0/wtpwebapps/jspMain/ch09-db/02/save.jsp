<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	request.setCharacterEncoding("EUC-KR");

	Date time = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
	
	String na = request.getParameter("name");
	String em = request.getParameter("email");
	String sub = request.getParameter("subject");
	String cont = request.getParameter("content");
	
	String ymd = sf.format(new Date());
	
	String sql = null;
	Connection con = null;
	Statement st = null;
	int cnt =0;
	
	int pos = 0;
	while( (pos = cont.indexOf("\'", pos))!=-1 ){
		String left = cont.substring(0, pos);
		String right = cont.substring(pos, cont.length());
		cont = left + "\'" + right;
		pos +=2;
	}

	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", 
				"codelab", "oracle_11g");
		System.out.println("데이터베이스 연결이 성공하였습니다.");
	}catch(Exception e){
		e.printStackTrace();
	}
	
	try{
		st = con.createStatement();
		
		sql = "INSERT INTO blogboard(name, email, inputdate, subject, content)";
		sql = sql + " VALUES('" + na + "', '" + em + "', '" + ymd + "', '";
		sql = sql + sub + "', '" + cont + "')";
		
		cnt = st.executeUpdate(sql);
		System.out.println("INSERT 완료");
		
		if(cnt>0){
			System.out.println("데이터가 성공적으로 입력되었습니다.");
		}else{
			System.out.println("데이터가 입력되지 않았습니다.");
		}
	
		st.close();
		con.close();
	}catch(Exception e){
		e.printStackTrace();
	}

%>
<jsp:forward page="show.jsp" />