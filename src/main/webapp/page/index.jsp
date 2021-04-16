<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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
<div class="main-content" >

    <!-- 头部 -->
    <%@include file="top.jsp"%>

    <!--body wrapper start-->
    <div class="wrapper">

        <!--Start row-->
        <div class="row">
            <div class="col-md-12">
                <div class="white-box">

                    <div class="search-box-top">
                        <form action="/">
                            <input type="hidden" name="pageNum"/>
                            <input type="hidden" name="pageSize"/>
                            <div class="input-group">
                                <input name="commentSearch" class="form-control input-search" placeholder="搜索..." type="text" value="${commentSearch}">
                                <span class="input-group-btn">
                                  <button class="btn btn-primary" type="submit"><i class="fa fa-search"></i></button>
                                  </span> </div>
                        </form>
                    </div>
                    <div class="search-item">
                        <table class="table">
                            <thead>
                            <tr>
                                <th width="60%">标题</th>
                                <th width="20%">作者</th>
                                <th width="10%">浏览次数</th>
                                <th width="10%">操作</th>
                            </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${page.list}" var="post">
                                    <tr>
                                        <td>${post.postTitle}</td>
                                        <td>${post.createdBy}</td>
                                        <td>${post.browseCount}</td>
                                        <td>
                                            <button type="button" class="btn btn-danger round" style="font-size: 10px;padding: 4px 12px;" onclick="deleteComment(${post.id});">
                                                <span class="btn-label"><i class="fa fa-times"></i></span>删除
                                            </button>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <!-- 分页 -->
                    <%@include file="./pageInfo.jsp"%>

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
<script  src="/assets/js/jquery.slimscroll.js "></script>
<script src="/assets/js/jquery.nicescroll.js"></script>
<script src="/assets/js/functions.js"></script>

<script src="/assets/plugins/sweetalert/sweet-alert.js"></script>
<script src="/assets/pages/jquery.sweet-alert.custom.js"></script>

<!-- End core plugin -->
<script src="/js/plugin.js"></script>

</body>

</html>
