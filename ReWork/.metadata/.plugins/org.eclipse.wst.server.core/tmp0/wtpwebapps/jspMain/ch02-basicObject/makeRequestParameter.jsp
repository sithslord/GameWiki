<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="viewParameter.jsp" method="post">
		이름: <input type="text" name="name" size="10"><br>
		주소:<input type="text" name="address" size=30><br>
		좋아하는 동물:
		<input type="checkbox" name="pet" value="dog_Big">큰 개
		<input type="checkbox" name="pet" value="dog_Samll">작은 개
		<input type="checkbox" name="pet" value="dog_Middle">보통 개
		<input type="checkbox" name="pet" value="dog_Normal">그냥 개
		<input type="checkbox" name="pet" value="dog_Bite">잘무는 개<br>
		
		전공:
		<input type="radio" name="major" value="korea">국어
		<input type="radio" name="major" value="english">영어
		<input type="radio" name="major" value="math">수학
		<input type="radio" name="major" value="science">과학
		<input type="radio" name="major" value="coding">코딩
		<input type="radio" name="major" value="art">예술
	
		취미:
		<select name="hobby">
			<option value="jogging">조깅</option>
			<option value="cooking">요리</option>
			<option value="swimming">수영</option>
			<option value="reading">독서</option>
			<option value="collecting">수집</option>
			<option value="cross_stitching">십자수</option>
		</select>
		<input type="submit" value="전송">
	</form>
</body>
</html>