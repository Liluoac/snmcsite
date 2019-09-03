<%--
  Created by IntelliJ IDEA.
  User: 周朴雨
  Date: 2019/8/15
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>国家人防卫星通讯系统网管中心</title>
    <link rel="shortcut icon" href="../../img/CCADLogo.png">
</head>
<body>
<header>
    <jsp:include page="top.jsp"></jsp:include>
</header>

<!-- Start of page head section
	============================================= -->
<section id="page-head" class="page-head-section" style="background-image: url(../../img/bg1.jpg);">
    <div class="page-head-overlay">
        <div class="container">
            <div class="row">
                <div class="page-head-content">
                    <div class="page-head-style">
                        <img src="../../assets/img/page-head-style.png" alt="image">
                    </div>

                    <div class="page-breadcrumb">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="/toIndex"><span class="mr5 ti-home"></span>主页</a></li>
                            <li class="breadcrumb-item active">Error</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End of  page head section
============================================= -->

<!-- End of  page head section
============================================= -->
<section id="error" class="error-section pb60">
    <div class="container">
        <div class="row section-content text-center">
            <div class="error-section-content pb30">
                <h2 class="red">404</h2>
            </div>
            <div class="error-text text-uppercase text-center pb20">
                <p><span class="red ti-signal"></span>Emmmmm....好像出错了</p>
            </div>
            <div class="become-member-button text-center text-uppercase">
                <div class="donate-btn text-uppercase">
                    <a href="/toIndex">返回首页</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End of  page head section
============================================= -->


<footer id="footer-section" class="footer-style">
    <jsp:include page="foot.jsp"></jsp:include>
</footer>

</body>
</html>
