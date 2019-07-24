<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>国家人防卫星通讯系统网管中心</title>
    <link rel="shortcut icon" href="../../img/CCADLogo.png">
<body>
<header>
    <jsp:include page="top.jsp"></jsp:include>
</header>

<!-- Start of page head section
============================================= -->
<section id="page-head" class="page-head-section" style="background-image: url(../../img/bg5.jpg);">
    <div class="page-head-overlay">
        <div class="container">
            <div class="row">
                <div class="page-head-content">
                    <div class="page-head-style">
                        <img src="../../assets/img/page-head-style.png" alt="image">
                    </div>
                    <div class="page-head-title text-uppercase">
                        <h2>常用下载</h2>
                    </div>
                    <div class="page-breadcrumb">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item active"><a href="/toIndex"><span
                                    class="mr5 ti-home"></span>主页</a></li>
                            <li class="breadcrumb-item active">常用下载</li>
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
                        <jsp:include page="download-left.jsp"></jsp:include>
                    </div>
                    <div class="col-sm-8">
                        <div class="cause-details-title">
                            <div class="section-title-text mb20">
                                <h2>${title}</h2>
                            </div>
                            <div class="cause-details-text">
                                <p>
                                    <c:forEach var="m" items="${map}">
                                <div class="blog-pic-text mb50">
                                    <div class="row">

                                        <div class="col-sm-10">
                                            <div class="blog-text">
                                                <!-- /blog-tag -->
                                                <div class="blog-head-title pt15">
                                                    <h2 class="black"><a
                                                            href="${m.path}/${m.realName}"
                                                            download="${m.title}">${m.title}
                                                    </a></h2>
                                                </div>
                                                <div class="blog-meta mt10">
                                                    <ul class="meta-list">
                                                        <li><a class="black"
                                                               href="${m.path}/${m.realName}"
                                                               download="${m.title}"><span
                                                                class="mr5 ti-pencil"></span> ${m.author}
                                                        </a></li>
                                                        <li><a class="black"
                                                               href="${m.path}/${m.realName}"
                                                               download="${m.title}"><span
                                                                class="mr5 ti-timer"></span><fmt:formatDate
                                                                value="${m.publishDate}"
                                                                pattern="yyyy-MM-dd"></fmt:formatDate>
                                                        </a></li>

                                                    </ul>
                                                </div>

                                                <div class="blog-button text-uppercase">
                                                    <a href="${m.path}/${m.realName}" download="${m.title}">下载<span
                                                            class="arrow-right-btn ti-arrow-right"></span></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </c:forEach>
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