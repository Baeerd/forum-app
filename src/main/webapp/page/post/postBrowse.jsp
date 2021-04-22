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
                    <h1 align="center">${postBrowse.post.postTitle}</h1>
                    <div class="bootstrap-tagsinput">
                        <h5 align="left">
                            <c:choose>
                                <c:when test="${postBrowse.user.portrait != null}">
                                    <img src="${postBrowse.user.portrait}" style="width: 50px; height: 50px">
                                </c:when>
                                <c:otherwise>
                                    <img src="/image/index/portrait.png" style="width: 50px; height: 50px">
                                </c:otherwise>
                            </c:choose>
                            发表人：${postBrowse.user.name} |
                            学号：${postBrowse.user.studyCode} |
                            性别：${postBrowse.user.sexView} |
                            年级：${postBrowse.user.levelView} |
                            专业：${postBrowse.user.subject} |
                            联系方式：${postBrowse.user.phone} 
                        </h5>
                        <h5 align="right">发表时间：${postBrowse.post.createdDtView}</h5>
                    </div>

                    <br/><br/>
                    
                    <div class="bootstrap-tagsinput">
                        ${postBrowse.post.postContent}
                    </div>

                    <br/><br/>

                    下载附件：<a href="${postBrowse.post.postFile}">${postBrowse.post.fileName}</a>
                    
                    <br/><br/><br/>
                    
                    <div class="input-group">
                        <input type="hidden" id="userId" value="${postBrowse.user.id}">
                        <input type="hidden" id="postId" value="${postBrowse.post.id}">
                        <input id="evaluateContent" class="form-control input-search" placeholder="评论.." type="text"
                               autocomplete="off">
                        <span class="input-group-btn">
                            <button class="btn btn-primary round" type="button" onclick="addComment()">
                                <span class="btn-label"><i class="fa fa-send"></i></span>评论
                            </button>
                        </span>
                    </div>
                    <br/><br/>
                    <table class="table">
                        <tbody>
                        <c:forEach items="${postBrowse.comments}" var="comment">
                            <tr>
                                <td width="80%">
                                    ${comment.evaluateContent}
                                </td>
                                <td width="10%">${comment.name}</td>
                                <td width="10%">${comment.evaluateDtView}</td>
                            </tr>
                        </c:forEach>
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

    /**
     * 提交评论
     */
    function addComment() {
        
        var user = ${loginUser != null};
        if(!user) {
            alert("请登陆后评论");
            return;
        }
        
        var userId = $("#userId").val();
        var postId = $("#postId").val();
        var evaluateContent = $("#evaluateContent").val();
        var json = {
            'userId' : userId,
            'postId' : postId,
            'evaluateDt' : new Date(),
            'evaluateContent' : evaluateContent
        };
        $.post("/comment/addJson",json,function(result){
            alert("评论成功");
            window.location.reload();
        });
    }
    
</script>

</body>

</html>
