<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% String ctx = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/bootstrap.css">
<script src="../js/bootstrap.js"></script>

</head>
<body>
<script type="text/javascript" src="<%=ctx %>/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=ctx %>/se2/js/HuskyEZCreator.js" charset="UTF-8"></script>

<div class="container-fluid">
<form action="compModifyWelcome.do?bdTitle=${bdTitle}" method="post">
	<textarea name="content" rows="25" id="content" style="width:880px;">${modifyWelcome.bdTitle }</textarea>
	
	<p></p><input class="btn btn-default pull-right btn-sm" type="submit" onclick="submitContents(this)" value="�ۼ��ϱ�" />
</form>
</div>
<script type="text/javascript">
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
    oAppRef: oEditors,
    elPlaceHolder: "content",
    sSkinURI: "<%=ctx %>/se2/SmartEditor2Skin.html",
    fCreator: "createSEditor2"
});

function submitContents(elClickedObj) {
    // �������� ������ textarea�� ����˴ϴ�.
    oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
    // �������� ���뿡 ���� �� ������ �̰����� document.getElementById("content").value�� �̿��ؼ� ó���ϸ� �˴ϴ�.


    try {
        elClickedObj.form.submit();
    } catch(e) {}
}
//�����塯 ��ư�� ������ �� ������ ���� �׼��� ���� �� submitContents�� ȣ��ȴٰ� �����Ѵ�.
 
// textArea�� �̹��� ÷��
function pasteHTML(filepath){
    var sHTML = '<img src="<%=request.getContextPath()%>/se2/upload/'+filepath+'">';
    oEditors.getById["content"].exec("PASTE_HTML", [sHTML]);
}
</script>
</body>
</html>