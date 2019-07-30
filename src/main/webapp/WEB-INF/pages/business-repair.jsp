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
                                <h2>设备维修</h2>
                            </div>
                            <div class="cause-details-text">
                                <p>
                                    根据《人民防空卫星通信系统使用管理规定（试行）》的相关要求，障碍处理原则为故障及时上报，杜绝参数泄露。<br/>
                                    维修流程如下：<br/>
                                    一、人防卫星通信设备出现故障时应当及时组织维修，维修时由系统集成单位或设备生产单位填写《人民防空卫星通信设备送修报告单》。<br/>
                                    二、人防卫星通信室内单元设备出现故障无法自行解决时，应向国家人民防空卫星通信系统网管中心通报。<br/>
                                    三、人防卫星通信系统室内单元设备送修前，必须将将所设置的参数进行清除后再送相关维修单位进行修理。无法自行清除参数的，应当送国家人民防空卫星通信系统网管中心进行处理后再送修理部门维修。<br/>
                                    四、其他设备维修可直接送交系统集成单位或设备生产单位，或由系统集成单位或设备生产单位上门维修。<br/>
                                    <img src="../../img/report.png">
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