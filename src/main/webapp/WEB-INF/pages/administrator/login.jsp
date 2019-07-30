<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>

<!DOCTYPE html>

<head>
  <meta charset="utf-8">
  <title>网管中心后台管理系统</title>
  <link rel="shortcut icon" href="../../../img/CCADLogo.png">
  <!-- boorstrap -->
  <link rel="stylesheet" type="text/css" href="../../../assets/css/bootstrap.min.css">
  <!-- themify-icon.css -->
  <link rel="stylesheet" type="text/css" href="../../../assets/css/themify-icons.css">
  <!-- owl-carousel -->
  <link rel="stylesheet" type="text/css" href="../../../assets/css/owl.carousel.css">
  <!-- Video-min -->
  <link rel="stylesheet" type="text/css" href="../../../assets/css/video.min.css">
  <!-- animate.css -->
  <link rel="stylesheet" type="text/css" href="../../../assets/css/animate.css">
  <!-- REVOLUTION STYLE SHEETS -->
  <link rel="stylesheet" type="text/css" href="../../../rev-slider/css/settings.css">
  <!-- REVOLUTION LAYERS STYLES -->
  <link rel="stylesheet" type="text/css" href="../../../rev-slider/css/layers.css">
  <!-- REVOLUTION NAVIGATION STYLES -->
  <link rel="stylesheet" type="text/css" href="../../../rev-slider/css/navigation.css">
  <!-- menu style -->
  <link rel="stylesheet" type="text/css" href="../../../assets/css/menu.css">
  <!-- style -->
  <link rel="stylesheet" type="text/css" href="../../../assets/css/style.css">
  <!-- responsive.css -->
  <link rel="stylesheet" type="text/css" href="../../../assets/css/responsive.css">
</head>

<body>
<div class="container">
  <div class="impact-left-content">
    <div class="top-border">
      <span class="border-1"></span>
      <span class="border-2"></span>
      <span class="border-3"></span>
    </div>
  <div class="col-sm-4">
  <div class="become-member">
    <div class="become-member-head pb30">
      <h3 class="black">网管中心后台登录</h3>
    </div>
    <div class="become-member-form">
      <form action="/login/doLogin" method="post">
        <div class="contact-info mb20">
          账号：<input type="text" class="form-control" name="account" placeholder="账号" autofocus>
        </div>
        <div class="contact-info mb20">
          密码：<input type="password" class="form-control" name="password" placeholder="输入密码">
        </div>

        <div class="become-member-button text-center">
          <button type="submit" value="Submit">登陆</button>
        </div>
      </form>
      <span>${Message}</span>
    </div>
  </div>
    </div>
  </div>
</div>
</body>


</html>
