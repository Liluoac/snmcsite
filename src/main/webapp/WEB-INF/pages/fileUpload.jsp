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
        <input type="submit" value="上传">
    </div>
</form>
</body>
</html>
