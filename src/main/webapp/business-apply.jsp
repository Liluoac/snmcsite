<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*"
         pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>国家人防卫星通讯系统网管中心</title>
    <link rel="shortcut icon" href="img/CCADLogo.png">
<body>
<header>
    <jsp:include page="top.jsp"></jsp:include>
</header>

<!-- Start of page head section
============================================= -->
<section id="page-head" class="page-head-section">
    <div class="page-head-overlay">
        <div class="container">
            <div class="row">
                <div class="page-head-content">
                    <div class="page-head-style">
                        <img src="assets/img/page-head-style.png" alt="image">
                    </div>
                    <div class="page-head-title text-uppercase">
                        <h2>业务流程</h2>
                    </div>
                    <div class="page-breadcrumb">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.jsp"><span
                                    class="mr5 ti-home"></span>主页</a></li>
                            <li class="breadcrumb-item active">业务流程</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End of  page head section
============================================= -->

<!-- Start of Cause details page
============================================= -->
<section id="cause-details-content" class="cause-details-section">
    <div class="container">
        <div class="row section-content">
            <!-- / cause-details-->
            <div class="cause-details-content">
                <div class="row">
                    <div class="col-sm-4">
                        <jsp:include page="business-left.jsp"></jsp:include>
                    </div>
                    <div class="col-sm-8">
                        <div class="cause-details-title">
                            <div class="section-title-text mb20">
                                <h2>信道申请</h2>
                            </div>
                            <div class="cause-details-text">
                                <p>
                                    根据国家人防办《关于全国人防系统统一采用卫星通信信道和传输设备有关问题的通知》（国人防〔2009〕285号）和《关于设立国家人防卫星通信系统网管中心和备用网管中心》（国人防〔2009〕445号文件）的有关要求，全国人防卫星通信网络信道资源由国家人防卫星通信系统网管中心统一负责租用、调度和管理，各级人防站点应在其监管下合理规范的使用。<br/>
                                    根据各人防单位实际需求，网管中心提供多种信道申请方式。<br/>
                                    <img src="img/channel.png">
                                    值班电话<br/>
                                    7*24小时服务电话：025-82285822/33/44/55<br/>
                                    <br/>
                                    传 真<br/>
                                    传真号码：025-82285806<br/>
                                    <br/>
                                    电子邮件<br/>
                                    snmc_nj@126.com<br/>

                                </p>
                            </div>


                        </div>

                    </div>


                </div>
            </div>
        </div>
    </div>
</section>
<!-- End of  of Cause details page
============================================= -->

<footer id="footer-section" class="footer-style">
    <jsp:include page="foot.jsp"></jsp:include>
</footer>
</body>
</html>