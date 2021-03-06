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


<section class="login-section">
    <div class="container">
        <div class="row">
            <div class="login-wrapper">
                <div class="login-inner">

                    <div class="logo">
                        <img src="/assets/images/logo-dark.jpg"  alt="logo" style="width: 100px; height: 100px"/>
                    </div>
                    <br/><br/>
                    <h2 class="header2-title text-center">校内考研互助系统</h2>

                    <span><font color="red">${msg}</font></span>
                    <span><font color="red">${error}</font></span>

                    <form action="/system/login">
                        <div class="login-group">

                            <input type="text" class="form-control" name="username" placeholder="用户名" value="${ username}">
                        </div>
                        <br/><br/><br/>

                        <div class="login-group">
                            <input type="password" class="form-control" name="password"  placeholder="密码" >
                        </div>

                        <br/><br/><br/>

                        <div class="login-group">
                            <input type="submit" value="登录" class="btn btn-primary btn-block" style="width: 85%">
                        </div>

                        <br/><br/><br/>

                        <div class="login-group text-center">
                            没有账号?  <a href="/regist.html">点击注册 </a>
                        </div>
                        <div class="login-group text-center">
                            <a href="/">直接访问 </a>
                        </div>

                    </form>

                    <div class="copy-text">
                        <p class="m-0">2021 &copy; 校内考研互助系统</p>
                    </div>

                </div>
            </div>

        </div>
    </div>
</section>
<!--End login Section-->

<!--Begin core plugin -->
<script src="/assets/js/jquery.min.js"></script>
<script src="/assets/js/bootstrap.min.js"></script>
<!-- End core plugin -->

</body>

</html>
