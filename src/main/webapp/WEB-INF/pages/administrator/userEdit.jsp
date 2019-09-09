<%@ page import="com.snmcsite.entity.User" %>
<%@ page import="com.snmcsite.service.UserService"%>
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
            <div class="breadcrumb-item" style="float: left">用户列表</div>
            <div class="breadcrumb-item" style="float: right"><a href="/admin/toUserAdd">添加用户</a></div>
        </ol>
        <div class="card mb-3">

            <div class="card-body">
                <form action="/admin/doUserEdit?userId=${user.userId}" method="post" enctype="multipart/form-data"
                      name="form">
                    <div>
                        账号：<input name="account"><br/>
                        所在部门：<input name="organization"><br/>
                        <button type="submit" id="submit" onclick="return verify()">上传</button>
                        <span>${message}</span>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    function verify() {
        var account = document.form.account.value;
        if (account == '' ) {
            alert('请填写账号');
            return false;
        }


        $.ajax({
            url:"/admin/checkUser",
            data:"account="+account,
            type:"POST",
            success:function(data){
                if(data=="1"){
                    alert("该用户已存在");
                    $("#submit").attr("ajax-va","error");
                }
                else{
                    $("#submit").attr("ajax-va","ok");
                }

            }
        });


        if ($("#submit").attr("ajax-va")=="error"){

            return false;
        }



        var organization=document.form.organization.value;
        if (organization==''){
            alert('请填写所在部门');
            return false;
        }

    }
</script>
</body>
</html>
