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
                    <h1 align="center">${post.postTitle}</h1>
                    <h5 align="right">发表人：${post.createdBy}</h5>
                    <h5 align="right">发表时间：${post.createdDt}</h5>

                    ${post.postContent}

                    <br/><br/><br/><br/>
                    <div class="input-group">
                        <input name="postSearch" class="form-control input-search" placeholder="评论.." type="text"
                               value="${postSearch}" autocomplete="off">
                        <span class="input-group-btn">
                                  <button class="btn btn-primary" type="submit"><i class="fa fa-send"></i></button>
                        </span>
                    </div>
                    <br/><br/>
                    <table class="table">
                        <tbody>
                        <tr>
                            <td width="80%">
                                1111111
                            </td>
                            <td width="10%">${post.name}</td>
                            <td width="10%">${post.browseCount}</td>
                        </tr>
                        <tr>
                            <td>
                                1111111
                            </td>
                            <td>${post.name}</td>
                            <td>${post.browseCount}</td>
                        </tr>
                        </tbody>
                    </table>
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

</script>

</body>

</html>
