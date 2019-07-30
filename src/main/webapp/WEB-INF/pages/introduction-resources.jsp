<%@ page language="java" contentType="text/html; charset=utf-8"
         import="java.util.*" pageEncoding="utf-8" %>
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
<section id="page-head" class="page-head-section" style="background-image: url(../../img/bg1.jpg);">
    <div class="page-head-overlay">
        <div class="container">
            <div class="row">
                <div class="page-head-content">
                    <div class="page-head-style">
                        <img src="../../assets/img/page-head-style.png" alt="image">
                    </div>
                    <div class="page-head-title text-uppercase">
                        <h2>中心概况</h2>
                    </div>
                    <div class="page-breadcrumb">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item active"><a href="/toIndex"><span
                                    class="mr5 ti-home"></span>主页</a></li>
                            <li class="breadcrumb-item active">中心概况</li>
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
                        <jsp:include page="introduction-left.jsp"></jsp:include>
                    </div>
                    <div class="col-sm-8">
                        <div class="cause-details-title">
                            <div class="section-title-text mb20">
                                <h2>卫星资源</h2>
                            </div>
                            <div class="cause-details-text">
                                <p>长期租赁中信卫星公司（亚洲卫星公司）一段固定带宽，技术参数如下（供设计及建设参考）：<br/>
                                    卫星：亚洲9号<br/>
                                    轨道位置：东经122.1度<br/>
                                    载波类型: VSAT/数字<br/>
                                    水平极化信标：950.2MHz<br/>
                                    垂直极化信标：950MHz<br/>
                                    上行极化：垂直<br/>
                                    下行极化：水平<br/>
                                </p>
                            </div>
                            <div class="section-title-text mb20">
                                <h2>硬件资源</h2>
                            </div>
                            <div class="cause-details-text">
                                <p>网管中心自2013年10月搬入现址，建筑总面积1100平方米，硬件资源：<br/>
                                    一、楼顶天线发射场1个，架设6.2米天线2部、4.5米天线1部、2.4米3部；<br/>
                                    二、主站机房1个，承担全国区域卫星主站，12个区域子网主站，1:1热备；<br/>
                                    三、培训教室1个，配置25台计算机操作终端，10套中频卫星通信仿真平台；<br/>
                                    四、测试平台室1个，配置网络、射频、卫星通信外围设备测试环境。<br/>
                                </p>
                            </div>
                            <div class="section-title-text mb20">
                                <h2>自研产品</h2>
                            </div>
                            <div class="cause-details-text">
                                <p>卫星通信系统运行管理平台<br/>
                                    &nbsp;&nbsp;&nbsp;&nbsp;一、与国家人防卫星通信系统管理平台互联互通,实时在线传送网内站点（上线和离线状态、检测通信状态、位置核心设备状态、校验站点身份并实时提示和告警）至国家平台，双向传输双链路加密传输;<br/>
                                    &nbsp;&nbsp;&nbsp;&nbsp;二、针对下属站点实现监控管理，主要功能：<br/>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）全网卫星站点信息实时采集和存储；<br/>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）网络通信质量和状态实时监控；<br/>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）站点重点设施设备实时监管；<br/>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（4）北斗短报文双链路管理备份。<br/>
                                    <br/>
                                    卫星站点监控器<br/>
                                    &nbsp;&nbsp;&nbsp;&nbsp;一、本站卫星设备参数监控和配置管理；<br/>
                                    &nbsp;&nbsp;&nbsp;&nbsp;二、通信预案存储、管理和切换；<br/>
                                    &nbsp;&nbsp;&nbsp;&nbsp;三、接入北斗数据后可发送、接收离线控制指令；<br/>
                                    &nbsp;&nbsp;&nbsp;&nbsp;四、实现与上级管理平台之间数据通信。<Br/>
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