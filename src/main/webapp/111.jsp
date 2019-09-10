
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
<%--    <script src="/ckeditor/ckeditor.js"></script>--%>
<%--    <script src="/ckeditor/lang/zh-cn.js"></script>--%>
<%--    <script src="/ckeditor/samples/js/sample.js"></script>--%>
</head>
<body>




<script type = "text/javascript">
    window.onload = function()
    {
        //页面加载判断是哪种浏览器
        function getOs()
        {
            var OsObject = "";
            if(navigator.userAgent.indexOf("MSIE")>0) {
                return "MSIE";
            }
            else if(isFirefox=navigator.userAgent.indexOf("Firefox")>0){
                return "Firefox";
            }
            else if(isMozilla=navigator.userAgent.indexOf("Opera")>0){
                return "Opera";
            }
            else if(isFirefox=navigator.userAgent.indexOf("Chrome")>0){
                return "Chrome";
            }
            else if(isSafari=navigator.userAgent.indexOf("Safari")>0) {
                return "Safari";
            }
            else if(isCamino=navigator.userAgent.indexOf("Camino")>0){
                return "Camino";
            }
            else if(isMozilla=navigator.userAgent.indexOf("Gecko/")>0){
                return "Gecko";
            }

        }
        alert("您的浏览器类型为:"+getOs());

       //js停止(阻止)浏览器继续加载内容
        function CloseSearch() {
            $("#searchEffect").html(searchEffect);
            var xmlhttp;
            if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
                xmlhttp = new XMLHttpRequest();
            }
            else {// code for IE6, IE5
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            xmlhttp.abort();
            mystop();
            //alert("dddd");
        }

        function mystop() {
            if (!!(window.attachEvent && !window.opera)){
                document.execCommand("stop");
            }
            else{
                window.stop();
            }
        }

    }
</script>

<%--<input type="date">--%>
<%--<h3>11111</h3>--%>
<%--<div class="row cl">--%>
<%--    <div class="formControls col-xs-6 col-sm-6">--%>
<%--        <textarea name="description" id="editor"></textarea>--%>
<%--    </div>--%>
<%--</div>--%>
<%--<script>--%>

<%--   initSample();--%>
<%--</script>--%>

</body>
</html>


