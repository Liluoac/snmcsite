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
<%User user=(User )request.getSession().getAttribute("user");%>
<div class="content-wrapper">
    <form action="/admin/doChangePass?userId=<%=user.getUserId()%>" method="post" enctype="multipart/form-data" name="form">
        编号：<%=user.getUserId()%><br/>
        所在部门：<%=user.getOrganization()%><br/>
        密码：<input name="password" type="password"> <br/>
        重复密码：<input name="password2" type="password"> <br>
        <input type="submit" value="更新密码"  onclick="return verify()">
        <span>${message}</span>
    </form>
</div>

<script type="text/javascript">
    function verify() {
        var pp = document.form.password.value;
        var ppp = document.form.password2.value;
        if (pp==""||ppp==""){
            alert('输入不能为空！');
            return false;
        }
        if (pp!=ppp ) {
            alert('两次密码不一致');
            return false;
        }



    }
</script>
</body>
</html>
