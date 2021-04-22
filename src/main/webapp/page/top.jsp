<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="/js/plugin.js"></script>
<div class="header-section">

    <div class="menu-left">
        <h4 align="center">校内考研互助系统</h4>
    </div>

    <!--notification menu start -->
    <div class="menu-right">
        <ul class="notification-menu">

            <li>
                <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                   onclick="window.location='/';">
                    <img src="/image/index/home.png"/>
                    主页
                </a>
            </li>

            <c:choose>
                <c:when test="${loginUser == null}">
                    <li>
                        <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                           onclick="window.location='/login.html';">
                            <img src="/image/index/login.png"/>
                            登录
                        </a>
                    </li>
                </c:when>
                <c:otherwise>
                    <c:if test="${loginUser.role != '2'}">
                        <li>
                            <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                               onclick="window.location='/post/postDetail';">
                                <img src="/image/index/add.png"/>
                                新建帖子
                            </a>
                        </li>
                    </c:if>
                    <li>
                        <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            <c:choose>
                                <c:when test="${loginUser.portrait != null}">
                                    <img src="${loginUser.portrait}" alt=""/>
                                </c:when>
                                <c:otherwise>
                                    <img src="/image/index/portrait.png" alt=""/>
                                </c:otherwise>
                            </c:choose>
                                ${loginUser.name}
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-usermenu pull-right" >
                            <li><a href="/system/userDetail?username=${loginUser.username}"> <i class="fa fa-user"></i> 个人信息 </a></li>
                            <c:if test="${loginUser.role != '2'}">
                                <li><a href="/?postSearch=${loginUser.name}"> <i class="fa fa-info"></i> 我的帖子 </a></li>
                            </c:if>
                            <li><a href="/comment/commentList?userId=${loginUser.id}"> <i class="fa fa-info"></i> 我的评论 </a></li>
                            <li><a href="/system/logout"><i class="fa fa-lock"></i> 注销 </a></li>
                        </ul>
                    </li>
                </c:otherwise>
            </c:choose>


        </ul>
    </div>
    <!--notification menu end -->

</div>
