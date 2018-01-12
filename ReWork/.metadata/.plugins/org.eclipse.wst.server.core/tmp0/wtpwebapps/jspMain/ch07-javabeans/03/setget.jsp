<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="info" scope="request" class="com.ch0703.User"  />

페이지 호출 후 현재 값:
<jsp:getProperty name="info" property="name" />
<jsp:getProperty name="info" property="num" />

<br>

Form으로부터 설정된 값:
<jsp:setProperty name="info" property="name" />
<jsp:setProperty name="info" property="num" param="number" />
<jsp:getProperty name="info" property="name" />
<jsp:getProperty name="info" property="num" />

<br>

직접 설정한 값:
<jsp:setProperty name="info" property="name" value="코드드레곤"/>
<jsp:setProperty name="info" property="num" value="12345" />
<jsp:getProperty name="info" property="name" />
<jsp:getProperty name="info" property="num" />