<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*"
         pageEncoding="utf-8" %>
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
<section id="page-head" class="page-head-section" style="background-image: url(../../img/bg4.jpg);">
    <div class="page-head-overlay">
        <div class="container">
            <div class="row">
                <div class="page-head-content">
                    <div class="page-head-style">
                        <img src="../../assets/img/page-head-style.png" alt="image">
                    </div>
                    <div class="page-head-title text-uppercase">
                        <h2>业务流程</h2>
                    </div>
                    <div class="page-breadcrumb">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item active"><a href="/toIndex"><span
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
                                <h2>填报申请材料</h2>
                            </div>
                            <div class="cause-details-text">
                                <p>
<%--                                    （1）人防主管部门应填写《人民防空卫星通信地球站入网申请表》（模板见：常用下载—入网材料），通过二级网管站或直接向网管中心站提出申请，且该地球站系统应具备最终用户功能验收报告。申请表：4页，一式六份，填写固定站及车载站内容，封面申请入网单位名称处盖章。<br/>--%>
<%--                                    （2）填写《入网申请表：附表1——用户基本信息表》（模板见：常用下载—入网材料）<br/>--%>
<%--                                    （3）填写《入网申请表：附表2——人防卫星通信地球站系统信息统计表》（模板见：常用下载—入网材料）<br/>--%>
<%--                                    （4）集成及设计单位需提交相应资质证明：计算机信息系统集成企业资质副本、人防信息系统设计施工资质、人防装车单位资质、涉密计算机系统集成资质及资信等级证书；--%>
                                        待补充
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