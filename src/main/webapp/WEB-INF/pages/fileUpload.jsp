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
<form action="uploadFile" method="post" enctype="multipart/form-data">
    <div>
        <input type="file" class="upload" id="uploadFile" name="uploadFile">
        <input type="hidden" id="uploadFileName" name="uploadFileName">
        <input type="button" value="上传" id="button">
    </div>
</form>
<script>
    var uploadFile = document.getElementById("uploadFile");
    var uploadFileName = document.getElementById("uploadFileName");
    var btn = document.getElementById("button");
    var forms = document.getElementsByTagName("form");
    var path = uploadFile.value;
    btn.addEventListener("click", function () {
        uploadFileName.value = uploadFile.value;
        forms[0].submit();
    })
</script>
<script src="../../js/jquery-1.8.3.min.js"></script>
</body>
</html>
