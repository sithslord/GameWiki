<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% String ctx = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=ctx %>/se2/js/HuskyEZCreator.js" charset="UTF-8"></script>
<script type="text/javascript" src="<%=ctx %>/se2/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js" charset="UTF-8"></script>


<form action="writeboard.do" method="post">
	<textarea name="content" rows="22" id="content" style="width:800px;"></textarea>
	
	<input type="submit" value="�ۼ��ϱ�">
</form>
<script type="text/javascript">
	var oEditors=[];
	$(function(){
	
		nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: "content",
		sSkinURI: "<%=ctx %>/se2/SmartEditor2Skin.html",
		fCreator: "createSEditor2"
	});

});
</script>
</body>
</html>