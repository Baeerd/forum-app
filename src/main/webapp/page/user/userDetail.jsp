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

                        <div class="form-group1">
                            <div class="col-md-8">
                                <c:choose>
                                    <c:when test="${user.portrait != null}">
                                        <img src="${user.portrait}" style="width:200px; height: 200px">
                                    </c:when>
                                    <c:otherwise>
                                        <img src="/image/index/portrait.png">
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>

                        <input type="hidden" name="id" value="${user.id}">
                        <div class="form-group2">
                            <div class="col-md-1 control-label">用户名:</div>
                            <div class="col-md-11">
                                <input name="username" class="form-control m-b-15" type="text"
                                       value="${user.username}"/>
                            </div>

                            <label class="col-md-1 control-label">密码:</label>
                            <div class="col-md-11">
                                <input name="password" class="form-control m-b-15" type="password"
                                       value="${user.password}">
                            </div>

                            <label class="col-md-1 control-label">姓名:</label>
                            <div class="col-md-11">
                                <input name="name" class="form-control m-b-15" type="text" value="${user.name}">
                            </div>

                            <label class="col-md-1 control-label">性别:</label>
                            <div class="col-md-11">
                                <input name="sexView" class="form-control m-b-15" type="text" readonly
                                       value="${user.sexView}">
                            </div>

                            <label class="col-md-1 control-label">身份:</label>
                            <div class="col-md-11">
                                <input name="roleView" class="form-control m-b-15" type="text" readonly
                                       value="${user.roleView}">
                            </div>

                            <label class="col-md-1 control-label">学号:</label>
                            <div class="col-md-11">
                                <input name="studyCode" class="form-control m-b-15" type="text" readonly
                                       value="${user.studyCode}">
                            </div>

                            <label class="col-md-1 control-label">年级:</label>
                            <div class="col-md-11">
                                <input name="levelView" class="form-control m-b-15" type="text" readonly
                                       value="${user.levelView}">
                            </div>

                            <label class="col-md-1 control-label">专业:</label>
                            <div class="col-md-11">
                                <input name="subject" class="form-control m-b-15" type="text" value="${user.subject}">
                            </div>

                            <label class="col-md-1 control-label">联系方式:</label>
                            <div class="col-md-11">
                                <input name="phone" class="form-control m-b-15" type="text" value="${user.phone}">
                            </div>

                            <label class="col-md-1 control-label">个人简介:</label>
                            <div class="col-md-11">
                                <textarea name="remark" class="form-control m-b-15"
                                          style="height: 100px">${user.remark}</textarea>
                            </div>

                            <label class="col-md-1 control-label">头像:</label>
                            <div class="col-md-11">
                                <input type="file" name="file" class="form-control m-b-15">
                            </div>

                            <button type="submit" class="btn btn-info round" style="float:right;">
                                <span class="btn-label"><i class="fa fa-exclamation"></i></span>修改个人信息
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

<!-- End core plugin -->
<script src="/js/plugin.js"></script>

<script type="text/javascript">

</script>

</body>

</html>
