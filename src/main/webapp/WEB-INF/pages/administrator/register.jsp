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
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top " id="mainNav">
    <a class="navbar-brand" href="/admin/toAdmin">网管中心后台管理系统</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse " id="navbarResponsive">
        <ul class="navbar-nav navbar-sidenav " id="exampleAccordion">
            <li class="nav-item" data-toggle="tooltip" data-placement="right">
                <a class="nav-link" href="/admin/toFile">
                    <i class="fa fa-fw fa-file"></i>
                    <span class="nav-link-text">文件</span>
                </a>
            </li>
            <li class="nav-item" data-toggle="tooltip" data-placement="right" >
                <a class="nav-link" href="/admin/toNews">
                    <i class="fa fa-fw fa-file"></i>
                    <span class="nav-link-text">新闻</span>
                </a>
            </li>
            <li class="nav-item" data-toggle="tooltip" data-placement="right" >
                <a class="nav-link" href="/admin/toInfo">
                    <i class="fa fa-fw fa-table"></i>
                    <span class="nav-link-text">个人信息</span>
                </a>
            </li>
            <li class="nav-item" data-toggle="tooltip" data-placement="right" >
                <a class="nav-link" href="/admin/toRegister">
                    <i class="fa fa-fw fa-link"></i>
                    <span class="nav-link-text">注册</span>
                </a>
            </li>
        </ul>

        <ul class="navbar-nav sidenav-toggler">
            <li class="nav-item">
                <a class="nav-link text-center" id="sidenavToggler">
                    <i class="fa fa-fw fa-angle-left"></i>
                </a>
            </li>
        </ul>

        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <%User user=(User )request.getSession().getAttribute("user");%>
                <span class="nav-link" >您好！<%=user.getAccount()%></span>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/admin/doLogout">
                    <i class="fa fa-fw fa-sign-out"></i>注销</a>
            </li>
        </ul>
    </div>
</nav>
<div class="content-wrapper">
    <form action="/admin/doRegister" method="post" enctype="multipart/form-data">
        <div>
            账号：<input name="account"><br/>
            密码：<input name="password"  type="password"><br/>
            所在部门：<input name="organization"><br/>
            <input type="submit" value="上传" id="form1" >
            <span>${message}</span>
        </div>
    </form>
</div>
<script src="../../../vendor/jquery/jquery.min.js"></script>
<script src="../../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Core plugin JavaScript-->
<script src="../../../vendor/jquery-easing/jquery.easing.min.js"></script>
<!-- Page level plugin JavaScript-->
<script src="../../../vendor/chart.js/Chart.min.js"></script>
<script src="../../../vendor/datatables/jquery.dataTables.js"></script>
<script src="../../../vendor/datatables/dataTables.bootstrap4.js"></script>
<!-- Custom scripts for all pages-->
<script src="../../../vendor/admin.min.js"></script>
<!-- Custom scripts for this page-->
<script src="../../../vendor/admin-datatables.min.js"></script>
<script src="../../../vendor/admin-charts.min.js"></script>
</body>
</html>
