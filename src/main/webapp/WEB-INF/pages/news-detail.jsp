<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>国家人防卫星通讯系统网管中心</title>
    <link rel="shortcut icon" href="../../img/CCADLogo.png">
    <script src="../../ckeditor/ckeditor.js"></script>
    <script src="../../ckeditor/lang/zh-cn.js"></script>
    <script src="../../ckeditor/samples/js/sample.js"></script>
<body>
<header>
    <jsp:include page="top.jsp"></jsp:include>
</header>

<!-- Start of page head section
============================================= -->
<section id="page-head" class="page-head-section" style="background-image: url(../../img/bg3.jpg);">
    <div class="page-head-overlay">
        <div class="container">
            <div class="row">
                <div class="page-head-content">
                    <div class="page-head-style">
                        <img src="../../assets/img/page-head-style.png" alt="image">
                    </div>
                    <div class="page-head-title text-uppercase">
                        <h2>资讯平台</h2>
                    </div>
                    <div class="page-breadcrumb">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item active"><a href="/toIndex"><span
                                    class="mr5 ti-home"></span>主页</a></li>
                            <li class="breadcrumb-item active">资讯平台</li>
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
                        <jsp:include page="news-left.jsp"></jsp:include>
                    </div>
                    <div class="col-sm-8">

                        <div class="cause-details-title">
                            <div class="section-title-text mb20">
                                <h2>${news.title}
                                </h2>
                            </div>
                            <div class="meta-list">
                                <div class="black"><span class="mr5 ti-pencil"></span>作者：${news.author}
                                </div>
                                </li>
                                <div class="black"><span class="mr5 ti-timer"></span> 日期：<fmt:formatDate
                                        value="${news.publishDate}" pattern="yyyy-MM-dd"></fmt:formatDate>
                                </div>
                                </li>
                                <div class="black"><span class="mr5 ti-book"></span> 浏览量：${news.typeTwo}
                                </div>
                            </div>

                            <div class="cause-details-text">
                                <p>
                                    ${news.content}
                                </p>
                            </div>


                        </div>

                    </div>
                </div>
            </div>


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
