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
            <div class="breadcrumb-item" style="float: left">文件列表</div>
            <div class="breadcrumb-item" style="float: right"><a href="/admin/toUpfile">文件上传</a></div>
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
                            <th>类型</th>
                            <th>作者</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="m" items="${map}">
                            <tr>
                                <td>${m.fileId}</td>
                                <td>${m.title}</td>
                                <td><fmt:formatDate
                                        value="${m.publishDate}"
                                        pattern="yyyy-MM-dd"></fmt:formatDate></td>
                                <td><c:choose>
                                    <c:when test = "${m.typeOne==1}">入网申请材料</c:when>
                                    <c:when test = "${m.typeOne==2}">设备送修材料</c:when>
                                    <c:when test = "${m.typeOne==3}">信道申请材料</c:when>
                                    <c:otherwise>其他文件</c:otherwise>
                                </c:choose></td>
                                <td>${m.author}</td>
                                <td><a href="/download/${m.realName}" download="${m.title}">下载</a>||<a onclick="return confirm('确定要删除这条记录吗?')" href="/admin/doDeleteFile?fileId=${m.fileId}">删除</a></td>
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
