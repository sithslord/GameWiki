<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- JSTL ��뼳�� --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�����Խ���</title>
</head>
<body>

	<table width="1024" cellpadding = "0" cellspacing = "0" border = "1" align="center">
		<tr align="center">
			<td>��ȣ</td>
			<td width="100">�̸�</td>
			<td width="600">����</td>
			<td>��¥</td>
			<td>��ȸ��</td>
		</tr>
	<c:forEach items="${list }" var="dto">
		<tr>
			<td align="center">${dto.bId }</td>
			<td>${dto.bName }</td>
			<td>
			<c:forEach begin="1" end="${dto.bIndent }">-</c:forEach>
			<a href="content_view.do?bId=${dto.bId }">${dto.bTitle }</a>
			</td>
			<td>${dto.bDate }</td>
			<td align="center">${dto.bHit }</td>
		</tr>
	</c:forEach>
	<tr>
		<td colspan="5"><a href="write_view.do">���ۼ�</a></td>
	</tr>
	</table>

</body>
</html>