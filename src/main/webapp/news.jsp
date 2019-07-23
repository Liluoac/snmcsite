<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*"
         pageEncoding="utf-8" %>

<%@page import="com.snmcsite.dao.CommDao" %>
<%@page import="com.snmcsite.util.PageManager" %>
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
                        <h2>资讯平台</h2>
                    </div>
                    <div class="page-breadcrumb">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.jsp"><span
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
                                        <%
                                        String url = "news.jsp?1=1";
                                        ArrayList<HashMap> list = PageManager.getPages(url,10, "select * from t_news where 1=1 order by newsId desc", request );
                                        for(HashMap map:list) {%>
                                    <div class="blog-pic-text mb50">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="blog-img">
                                                    <img src="<%=map.get("ImageName")%>"
                                                         alt="<%=map.get("ImageName")%>">
                                                </div>
                                            </div>
                                            <!-- /col-md-6 -->
                                            <div class="col-sm-6">
                                                <div class="blog-text">
                                                    <!-- /blog-tag -->
                                                    <div class="blog-head-title pt15">
                                                        <h2 class="black"><a
                                                                href="news-detail.jsp?id=<%=map.get("newsId") %>"><%=map.get("title") %>
                                                        </a></h2>
                                                    </div>
                                                    <div class="blog-meta mt10">
                                                        <ul class="meta-list">
                                                            <li><a class="black"
                                                                   href="news-detail.jsp?id=<%=map.get("newsId") %>"><span
                                                                    class="mr5 ti-pencil"></span> <%=map.get("Author") %>
                                                            </a></li>
                                                            <li><a class="black"
                                                                   href="news-detail.jsp?id=<%=map.get("newsId") %>"><span
                                                                    class="mr5 ti-timer"></span> <%=map.get("PublishDate") %>
                                                            </a></li>

                                                        </ul>
                                                    </div>
                                                    <div class="blog-text-content mt10 pb20">
                                <p>新闻简介</p>
                            </div>
                            <div class="blog-button text-uppercase">
                                <a href="news-detail.jsp?id=<%=map.get("newsId") %>">read more <span
                                        class="arrow-right-btn ti-arrow-right"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%}%>
                                </p>
            <div align="center" valign="middle">
                <td height="60" colspan="3" id="page">
                    <script language="JavaScript" type="text/javascript">
                        function topage(page) {
                            var intstr = /^\d+$/;
                            if (intstr.test(page)) {
                                document.getElementById('pagenum').value = page;
                                document.newsSearchform.submit();
                            } else {
                                alert("please input right number");
                                return;
                            }
                        }
                    </script>
                    <div class='p_bar'><a class='p_redirect'>${page.info }</a></div>
                </td>
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