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
	
	<p></p><input class="btn btn-default pull-right btn-sm" type="submit" onclick="submitContents(this)" value="작성하기" />
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
    // 에디터의 내용이 textarea에 적용됩니다.
    oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
    // 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("content").value를 이용해서 처리하면 됩니다.


    try {
        elClickedObj.form.submit();
    } catch(e) {}
}
//‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
 
// textArea에 이미지 첨부
function pasteHTML(filepath){
    var sHTML = '<img src="<%=request.getContextPath()%>/se2/upload/'+filepath+'">';
    oEditors.getById["content"].exec("PASTE_HTML", [sHTML]);
}
</script>
</body>
</html>