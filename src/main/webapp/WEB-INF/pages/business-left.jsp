<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Insert title here</title>
</head>
<body>
<%
    String ip= request.getRemoteAddr();
%>
<div class="side-bar-content ml15">
    <!-- /side-bar-search -->
    <div class="category mb40">
        <div class="side-bar-title mb40">
            <h2 class="widgettitle">目录</h2>
        </div>
        <!-- /title -->
        <div class="category-item">
            <ul class="category-item-list">
                <li><a href="/Business/toBusiness?flowId=1&ip=<%=ip%>">入网申请</a></li>
                <li><a href="/Business/toBusiness?flowId=2&ip=<%=ip%>">信道申请</a></li>
                <li><a href="/Business/toBusiness?flowId=3&ip=<%=ip%>">设备送修</a></li>
                <li><a href="/Business/toBusiness?flowId=4&ip=<%=ip%>">培训咨询</a></li>
            </ul>
        </div>
    </div>
    <!-- /category-item -->
</div>
</body>
</html>
