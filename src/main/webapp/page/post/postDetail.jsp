<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="/assets/images/favicon.png" type="image/png">
    <title></title>
    <link href="/assets/css/icons.css" rel="stylesheet">
    <link href="/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="/assets/css/style.css" rel="stylesheet">
    <link href="/assets/css/responsive.css" rel="stylesheet">

</head>

<body class="sticky-header">

<!-- main content start-->
<div class="main-content">

    <!-- 头部 -->
    <%@include file="../top.jsp" %>

    <!--body wrapper start-->
    <div class="wrapper">

        <!--Start row-->
        <div class="row">
            <div class="col-md-12">
                <div class="white-box">

                    <form action="/system/updateUser" method="post" enctype="multipart/form-data">

                        <input type="hidden" name="id" value="${post.id}">
                        <div class="form-group-full">
                            <div class="col-md-1 control-label">标题:</div>
                            <div class="col-md-11">
                                <input name="username" class="form-control m-b-15" type="text" style="width: 100%"
                                       value="${post.postTitle}" autocomplete="off"/>
                            </div>

                            <label class="col-md-1 control-label">内容:</label>
                            <div class="col-md-11" >
                                <textarea id="postContent" class="m-b-15" style="width: 100%">${post.postContent}</textarea>
                            </div>

                            <label class="col-md-1 control-label">附件:</label>
                            <div class="col-md-11">
                                <input type="file" name="file" class="form-control m-b-15" style="width: 100%">
                            </div>

                            <button type="submit" class="btn btn-info round" style="float:right;">
                                <span class="btn-label"><i class="fa fa-exclamation"></i></span>提交
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--End row-->

    </div>
    <!-- End Wrapper-->


    <!--Start  Footer -->
    <footer class="footer-main"></footer>
    <!--End footer -->

</div>
<!--End main content -->


<!--Begin core plugin -->
<script src="/assets/js/jquery.min.js"></script>
<script src="/assets/js/bootstrap.min.js"></script>
<script src="/assets/plugins/moment/moment.js"></script>
<script src="/assets/js/jquery.slimscroll.js "></script>
<script src="/assets/js/jquery.nicescroll.js"></script>
<script src="/assets/js/functions.js"></script>

<script src="/assets/plugins/sweetalert/sweet-alert.js"></script>
<script src="/assets/pages/jquery.sweet-alert.custom.js"></script>

<script src="/js/ueditor/ueditor.config.js"></script>
<script src="/js/ueditor/editor_api.js"></script>

<!-- End core plugin -->
<script src="/js/plugin.js"></script>

<script type="text/javascript">
    $(function () {
        var ue = UE.getEditor('postContent', { zIndex: 0});

        ue.ready(function () {
            ue.setHeight(420);
            //设置编辑器的内容
            // ue.setContent('hello');
            // //获取html内容，返回: <p>hello</p>
            // var html = ue.getContent();
            // //获取纯文本内容，返回: hello
            // var txt = ue.getContentTxt();
        });
    });
</script>

</body>

</html>
