<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="info" scope="request" class="com.ch0703.User"  />

������ ȣ�� �� ���� ��:
<jsp:getProperty name="info" property="name" />
<jsp:getProperty name="info" property="num" />

<br>

Form���κ��� ������ ��:
<jsp:setProperty name="info" property="name" />
<jsp:setProperty name="info" property="num" param="number" />
<jsp:getProperty name="info" property="name" />
<jsp:getProperty name="info" property="num" />

<br>

���� ������ ��:
<jsp:setProperty name="info" property="name" value="�ڵ�巹��"/>
<jsp:setProperty name="info" property="num" value="12345" />
<jsp:getProperty name="info" property="name" />
<jsp:getProperty name="info" property="num" />