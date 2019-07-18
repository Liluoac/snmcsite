<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- BEGIN META -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Custom Theme">
    <!-- END META -->

    <!-- BEGIN SHORTCUT ICON -->
    <link rel="shortcut icon" href="../../img/favicon.ico">
    <!-- END SHORTCUT ICON -->
    <title>
        网管中心后台登录系统
    </title>
    <!-- BEGIN STYLESHEET-->
    <link href="../../css/bootstrap.min.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->
    <link href="../../css/bootstrap-reset.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->
    <link href="../../assets/font-awesome/css/font-awesome.css" rel="stylesheet"><!-- FONT AWESOME ICON CSS -->
    <link href="../../css/style.css" rel="stylesheet"><!-- THEME BASIC CSS -->
    <!--[if lt IE 9]>
    <script src="../../js/html5shiv.js">
    </script>
    <script src="../../js/respond.min.js">
    </script>
    <![endif]-->
    <!-- END STYLESHEET-->
</head>
<body class="login-screen">
<!-- BEGIN SECTION -->
<div class="container">
    <form class="form-signin" action="doLogin" method="post">
        <h2 class="form-signin-heading">
            网管中心后台登录
        </h2>
        <!-- LOGIN WRAPPER  -->
        <div class="login-wrap">
            <input type="text" class="form-control" name="account" placeholder="账号" autofocus>
            <input type="password" class="form-control" name="password" placeholder="输入密码">

            <button class="btn btn-lg btn-login btn-block" type="submit">
                登陆
            </button>
            <span>${Message}</span>
        </div>
        <!-- END LOGIN WRAPPER -->
        <!-- MODAL -->
        <!-- END MODAL -->
    </form>
</div>
<!-- END SECTION -->
<!-- BEGIN JS -->
<script src="../../js/jquery.js"></script><!-- BASIC JQUERY LIB. JS -->
<script src="../../js/bootstrap.min.js"></script><!-- BOOTSTRAP JS -->
<!-- END JS -->
</body>
</html>

