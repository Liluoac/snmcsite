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
<jsp:include page="left.jsp"></jsp:include>
<div class="content-wrapper">
    <div class="container-fluid">
        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
            <div class="breadcrumb-item" style="float: left">流程列表</div>
        </ol>
        <div class="card mb-3">

            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                        <tr>
                            <th>编号</th>
                            <th>标题</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="m" items="${map}">
                            <tr>
                                <td>${m.flowId}</td>
                                <td>${m.title}</td>
                                <td><a href="/admin/toFlowEdit?flowId=${m.flowId}">修改</a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>

                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>
