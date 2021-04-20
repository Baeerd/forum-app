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
                    <div class="bootstrap-tagsinput">
                        <h5 align="left">
                            <img src="/image/user/admin.png" style="width: 50px; height: 50px">
                            发表人：${post.createdBy} |
                            学号：xxxxxxxx |
                            性别：男 |
                            年级：aaa |
                            专业：xx专业 |
                            联系方式：88888888 
                        </h5>
                        <h5 align="right">发表时间：2021-04-20 14:46:22</h5>
                    </div>

                    <br/><br/>
                    
                    <div class="bootstrap-tagsinput">
                        ${post.postContent}
                    </div>

                    <br/><br/>

                    下载附件：<a href="#">aaaa.zip</a>
                    
                    <br/><br/><br/>
                    <div class="input-group">
                        <input name="postSearch" class="form-control input-search" placeholder="评论.." type="text"
                               value="${postSearch}" autocomplete="off">
                        <span class="input-group-btn">
                            <button class="btn btn-primary round" type="submit">
                                <span class="btn-label"><i class="fa fa-send"></i></span>评论
                            </button>
                        </span>
                    </div>
                    <br/><br/>
                    <table class="table">
                        <tbody>
                        <tr>
                            <td width="80%">
                                评论1111111
                            </td>
                            <td width="10%">${post.name}</td>
                            <td width="10%">2021-04-20 16:03:53</td>
                        </tr>
                        <tr>
                            <td>
                                评论2222222
                            </td>
                            <td>${post.name}</td>
                            <td>2021-04-20 16:03:53</td>
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
