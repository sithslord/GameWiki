<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.ch0903.MemberDAO" %>
<%@ page import="com.ch0903.MemberDTO" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	MemberDAO memberDAO = new MemberDAO();

	ArrayList<MemberDTO> dtos = memberDAO.memberSelect();


	for(int i=0; i<dtos.size() ; i++){
		MemberDTO dto = dtos.get(i);
		
		String name = dto.getName();
		String id = dto.getId();
		String pw = dto.getPw();
		String phone = 
				dto.getPhone1() + "-" + dto.getPhone2() + "-" + dto.getPhone3();
		String gender = dto.getGender();
		String email = dto.getEmail();
		
		out.println("이름: " + name + "<br>");
		out.println("아이디: " + id + "<br>");
		out.println("비밀번호: " + pw + "<br>");
		out.println("연락처: " + phone + "<br>");
		out.println("성별: " + gender + "<br>");
		out.println("이메일: " + email + "<br>");
		out.println("-------------" + "<br>");
		
	}
	
	

%>
</body>
</html>