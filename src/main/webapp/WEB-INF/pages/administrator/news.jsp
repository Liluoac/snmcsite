<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
    <div class="container-fluid">
        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
            <li class="breadcrumb-item active">新闻列表</li>
        </ol>
        <div class="card mb-3">

            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                        <tr>
                            <th>编号</th>
                            <th>标题</th>
                            <th>发布日期</th>
                            <th>作者</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="m" items="${map}">
                            <tr>
                                <td>${m.newsId}</td>
                                <td>${m.title}</td>
                                <td><fmt:formatDate
                                        value="${m.publishDate}"
                                        pattern="yyyy-MM-dd"></fmt:formatDate></td>
                                <td>${m.author}</td>
                                <td><a href="/admin/toEditNews?newsID=${m.newsId}">修改</a>||<a href="/admin/doDeleteNews?newsId=${m.newsId}">删除</a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <a href="/admin/toAddNews">添加新闻</a>
                </div>
            </div>

        </div>
    </div>
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
