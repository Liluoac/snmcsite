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
<%
    HashMap ext = new HashMap();
    String id = request.getParameter("id") == null ? "" : request.getParameter("id");
    HashMap m = new CommDao().getNews(id);
%>
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
                                <h2><%=m.get("title") %>
                                </h2>
                            </div>
                            <div class="meta-list">
                                <div class="black"><span class="mr5 ti-pencil"></span> <%=m.get("Author") %>
                                </div>
                                </li>
                                <div class="black"><span class="mr5 ti-timer"></span> <%=m.get("PublishDate") %>
                                </div>
                                </li>

                            </div>
                            <div class="cause-details-text">
                                <p>
                                    <%=m.get("content") %>
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