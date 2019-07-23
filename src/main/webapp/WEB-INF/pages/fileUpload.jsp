<%--
  Created by IntelliJ IDEA.
  User: tt416
  Date: 2019/7/19
  Time: 23:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>fileUpLoad</title>
</head>
<body>
<form action="/file/uploadFile" method="post" enctype="multipart/form-data">
    <div>
        <input type="file" class="upload" id="uploadFile" name="uploadFile">
        <input type="submit" value="上传" id="form1">
<%--        <input type="hidden" id="uploadFileName" name="uploadFileName">--%>
    </div>
</form>
<%--<script>--%>
<%--    var fileinput=document.getElementById("uploadFile");--%>
<%--    var form=document.getElementsByTagName("form");--%>
<%--    var btn=document.getElementById("form1");--%>
<%--    var hiddenInput=document.getElementById("uploadFileName");--%>
<%--    btn.addEventListener("click", function () {--%>
<%--        //获取input的value值--%>
<%--        hiddenInput.value=fileinput.value;--%>
<%--        form[0].submit();--%>
<%--    });--%>
<%--</script>--%>
<script src="../../js/jquery-1.8.3.min.js"></script>
</body>
</html>
