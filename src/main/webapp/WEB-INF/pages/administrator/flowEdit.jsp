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
            <div class="breadcrumb-item" style="float: left">编辑流程</div>
        </ol>
        <div class="card mb-3">

            <div class="card-body">
                <form action="/admin/doFlowEdit?flowId=${flow.flowId}" method="post" enctype="multipart/form-data"
                      name="form">
                    标题：${flow.title}<br/>
                    <div class="row cl">
                        <div class="formControls col-xs-6 col-sm-6">
                            <textarea name="content" id="editor">${flow.content}</textarea>
                        </div>
                    </div>
                    <script>
                        initSample();
                    </script>
                    <input type="submit" value="上传" id="form1">

                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>