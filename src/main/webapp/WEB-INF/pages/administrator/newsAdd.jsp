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


    <script src="../../../ckeditor/ckeditor.js"></script>
    <script src="../../../ckeditor/lang/zh-cn.js"></script>
    <script src="../../../ckeditor/samples/js/sample.js"></script>
</head>
<body class="fixed-nav sticky-footer bg-dark">

<jsp:include page="left.jsp"></jsp:include>
<div class="content-wrapper">
    <div class="container-fluid">
        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
            <div class="breadcrumb-item" style="float: left">添加新闻</div>
        </ol>
        <div class="card mb-3">

            <div class="card-body">
    <form action="/doAddNews" method="post" enctype="multipart/form-data" name="form">
    标题：<input name="title"><br/>
    作者：<input name="Author"><br/>

    封面图片：<input type="file" class="upload" id="uploadFile" name="uploadFile" accept="image/*"><br/>
        时间：<input type="date" name="PublishDate"> <br/>
    <div class="row cl">
        <div class="formControls col-xs-6 col-sm-6">
            <textarea name="content" id="editor"></textarea>
        </div>
    </div>
        <script>
            initSample();
        </script>
        <input type="submit" value="上传" id="form1" onclick="return verify()">

    </form>
            </div>
        </div>
</div>

<script type="text/javascript">
    function verify() {
        var title = document.form.title.value;
        if (title === '' ) {
            alert('请填写标题');
            return false;
        }
        var Author = document.form.Author.value;
        if (Author === '' ) {
            alert('请填写作者');
            return false;
        }
        var PublishDate = document.form.PublishDate.value;
        if (PublishDate === ''){
            alert('请填写时间');
            return false;
        }

    }
</script>
</body>
</html>