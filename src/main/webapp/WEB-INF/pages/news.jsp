<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*"
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
                                <h2>新闻动态</h2>
                            </div>
                            <div class="cause-details-text">
                                <p>

                                    <c:forEach var="m" items="${map}">
                                    <div class="blog-pic-text mb50">
                                        <div class="row">
                                            <div class="col-sm-6" style="text-align: center;width: 370px;height: 210px;margin: 0 auto;">
                                                <div class="blog-img" style="height:100%;display:inline-block; vertical-align: middle;">
                                                    <img src="/newsImage/${m.imageName}"
                                                         style=" max-width: 100%;max-height: 100%;vertical-align: middle">
                                                </div>
                                            </div>
                                            <!-- /col-md-6 -->
                                            <div class="col-sm-6">
                                                <div class="blog-text">
                                                    <!-- /blog-tag -->
                                                    <div class="blog-head-title pt15">
                                                        <h2 class="black"><a
                                                                href="newsDetail?newsId=${m.newsId}">${m.title}
                                                        </a></h2>
                                                    </div>
                                                    <div class="blog-meta mt10">
                                                        <ul class="meta-list">
                                                            <li><a class="black"
                                                                   href="newsDetail?newsId=${m.newsId}"><span
                                                                    class="mr5 ti-pencil"></span>${m.author}
                                                            </a></li>
                                                            <li><a class="black"
                                                                   href="newsDetail?newsId=${m.newsId}"><span
                                                                    class="mr5 ti-timer"></span> <fmt:formatDate
                                                                    value="${m.publishDate}"
                                                                    pattern="yyyy-MM-dd"></fmt:formatDate>
                                                            </a></li>

                                                        </ul>
                                                    </div>

                            <div class="blog-button text-uppercase">
                                <a href="newsDetail?newsId=${m.newsId}">read more <span
                                        class="arrow-right-btn ti-arrow-right"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                                </c:forEach>
                                </p>
                                <div class="cause-details-text">
                                    <a href="/getNewsTypeOne?page=${curPage}">首页</a>
                                    <a href="/getNewsTypeOne?page=${prePage}">上一页</a>
                                    <a href="/getNewsTypeOne?page=${nextPage}">下一页</a>
                                    <a href="/getNewsTypeOne?page=${lastPage}">尾页</a>
                                    当前第${page}页，共${lastPage}页
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