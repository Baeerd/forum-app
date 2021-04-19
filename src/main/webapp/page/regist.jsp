<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
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
                <div class="regist-inner">

                    <div class="logo">
                        <img src="/assets/images/logo-dark.png"  alt="logo"/>
                    </div>
                    <br/><br/>
                    <h2 class="header2-title text-center">校内考研互助系统</h2>

                    <span><font color="red">${msg}</font></span>
                    <span><font color="red" id="registError">${error}</font></span>
                    
                    <form action="/system/regist">
                        <div class="login-group">
                            <input type="text" class="form-control requireField" name="username" placeholder="用户名">
                        </div>
                        <br/><br/>

                        <div class="login-group">
                            <input type="password" class="form-control requireField" name="password" placeholder="密码">
                        </div>

                        <br/><br/>

                        <div class="login-group">
                            <input type="text" class="form-control requireField" name="name" placeholder="姓名">
                        </div>

                        <br/><br/>

                        <div class="login-group">
                            <select class="form-control initSelect requireField" typeId="sex" name="sex" placeholder="性别">
                                <option value="#value">#name</option>
                            </select>
                        </div>

                        <br/><br/>

                        <div class="login-group">
                            <select class="form-control initSelect requireField" typeId="role" name="role" onchange="roleChange(this.value);">
                                <option value="#value">#name</option>
                            </select>
                        </div>

                        <br/><br/>

                        <span class="role">
                        <div class="login-group">
                            <input type="text" class="form-control roleField requireField" name="studyCode" placeholder="学号">
                        </div>

                        <br/><br/>

                        <div class="login-group">
                            <select class="form-control initSelect roleField requireField" name="level" typeId="level" placeholder="年级">
                                <option value="#value">#name</option>
                            </select>
                        </div>

                        <br/><br/>

                        <div class="login-group">
                            <input type="text" class="form-control roleField requireField" name="subject" placeholder="专业">
                        </div>

                        <br/><br/>
                        </span>
                        
                        <div class="login-group">
                            <input type="text" class="form-control requireField" name="phone" placeholder="联系方式">
                        </div>

                        <br/><br/>

                        <div class="login-group">
                            <input id="submit" type="submit" disabled value="注册" class="btn btn-primary btn-block">
                        </div>

                        <br/><br/><br/>

                        <div class="login-group text-center">
                            已有账号? <a href="/login.html">点击登录 </a>
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

<script src="/js/plugin.js"></script>
<script type="text/javascript">
    // 角色下拉框改变事件
    function roleChange(value) {
        if(value == '1') {// 准毕业生
            $(".role").css("display", 'block');
            $(".roleField").addClass("requireField");
        } else if(value == '2') {// 校友
            $(".role").css("display", 'none');
            $(".roleField").removeClass("requireField");
        }
    }
    
    // 校验必填字段
    function validateField() {
        $(".requireField").blur(function () {
            var val = $(this).val();
            if(!val) {
                $("#registError").html($(this).attr("placeholder")+'不能为空');
                $("#submit").attr("disabled", "true");
            }
            var list = $(".requireField");
            var flag = true;
            for(var i = 0; i<list.length; i++) {
                if(!list[i].value) {
                    flag = false;
                }
            }
            if(flag) {
                $("#submit").removeAttr("disabled");
            }
        });
    }
    
    $(function () {
        validateField();
    });
</script>

</body>

</html>
