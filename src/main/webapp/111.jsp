
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="ckeditor5-build-classic/build/ckeditor.js"></script>
    <script src="ckeditor5-build-classic/build/translations/zh-cn.js"></script>
</head>
<body>

<h3>默认菜单栏的ckeditor5编译器初始化</h3>
<div class="row cl">
    <div class="formControls col-xs-6 col-sm-6">
        <textarea name="description" id="ckeditor"></textarea>
    </div>
</div>
<script>

    ClassicEditor.create( ckeditor,{
    }).then(
    ).catch()
</script>

</body>
</html>

</html>
