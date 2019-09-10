
<%@ page import="com.snmcsite.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
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
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top " id="mainNav">
    <a class="navbar-brand" href="/admin/toAdmin">网管中心后台管理系统</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse " id="navbarResponsive">
        <ul class="navbar-nav navbar-sidenav " id="exampleAccordion">

            <li class="nav-item" data-toggle="tooltip" data-placement="right">
                <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseExamplePages" data-parent="#exampleAccordion">
                    <i class="fa fa-fw fa-file"></i>
                    <span class="nav-link-text">新闻与通知</span>
                </a>
                <ul class="sidenav-second-level collapse" id="collapseExamplePages">
                    <li>
                        <a href="/admin/toNews">新闻</a>
                    </li>
                    <li>
                        <a href="/admin/toNotice">通知</a>
                    </li>

                </ul>
            </li>

            <li class="nav-item" data-toggle="tooltip" data-placement="right">
                <a class="nav-link" href="/admin/toFile">
                    <i class="fa fa-fw fa-file"></i>
                    <span class="nav-link-text">文件</span>
                </a>
            </li>

            <li class="nav-item" data-toggle="tooltip" data-placement="right">
                <a class="nav-link" href="/admin/toFlow">
                    <i class="fa fa-fw fa-file"></i>
                    <span class="nav-link-text">业务流程</span>
                </a>
            </li>

            <li class="nav-item" data-toggle="tooltip" data-placement="right" >
                <a class="nav-link" href="/admin/toUsers">
                    <i class="fa fa-fw fa-table"></i>
                    <span class="nav-link-text">用户</span>
                </a>
            </li>


            <li class="nav-item" data-toggle="tooltip" data-placement="right" >
                <a class="nav-link" href="/admin/toInfo">
                    <i class="fa fa-fw fa-table"></i>
                    <span class="nav-link-text">个人信息</span>
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
                <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
                    <i class="fa fa-fw fa-sign-out"></i>注销</a>
            </li>
        </ul>
    </div>
</nav>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">是否确定注销？</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">若注销，现阶段未提交的信息将不会被保存</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">取消</button>
                <a class="btn btn-primary" href="/admin/doLogout">确定</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
