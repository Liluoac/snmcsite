<%@ page import="com.snmcsite.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>网管中心后台管理系统</title>
    <link rel="shortcut icon" href="../../../img/CCADLogo.png">
    <link href="../../../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template-->
    <link href="../../../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- Page level plugin CSS-->
    <link href="../../../vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="../../../vendor/admin.css" rel="stylesheet">
</head>
<body class="fixed-nav sticky-footer bg-dark">

<jsp:include page="left.jsp"></jsp:include>
<div class="content-wrapper">
    <form action="/file/uploadFile" method="post" enctype="multipart/form-data">
        <div>
            <input type="file" class="upload" id="uploadFile" name="uploadFile"><br/>
            上传者：<input name="author"><br/>
            文件类型：<select name="type" >
                <option value="1">入网材料</option>
                <option value="2">设备送修</option>
                <option value="3">工具软件</option>
                <option value="0">其他文件</option>
            </select><br/>
            <input type="submit" value="上传" id="form1">
        </div>
    </form>
</div>

</body>
</html>
