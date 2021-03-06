<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Cache-Control" content="max-age=300" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>商品管理- 爱上鲜花</title>
    <meta name="Keywords" content="" />
    <meta name="description" content="" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/base.css" media="all" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/myjd.common.css" media="all" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/myjd.info.css" media="all" />
    <script type="text/javascript" src="<%=basePath%>/js/jquery-1.6.4.js"></script>
    <link rel="stylesheet" href="<%=basePath%>/css/userManage.css">
</head>
<body>
<script type="text/javascript" src="<%=basePath%>/js/base-2011.js" charset="utf-8"></script>
<!-- header start -->
<jsp:include page="commons/header.jsp" />
<!-- header end -->

<div id="container">
    <div class="w">

        <div id="main">
            <div class="g-0">
                <div id="content" class="c-3-5">

                    <div class="modMain">
                        <div class="userNav">
                            <span>当前位置：</span>
                            <a href="#">我的交易&nbsp;&gt;&nbsp;</a>
                            <a href="#">订单管理</a>
                        </div>
                        <c:if test="${orderList!=null}">
                        <table width="830" cellspacing="0">
                            <tbody>
                                <tr>
                                    <th>ID</th>
                                    <th>订单编号</th>
                                    <th>用户ID</th>
                                    <th>种类</th>
                                    <th>收货人信息</th>
                                    <th>订单状态</th>
                                    <th>订单金额</th>
                                    <th>商品</th>
                                    <th>数量</th>
                                </tr>
                                <c:forEach items="${orderList}" var="order">
                                    <tr>
                                        <td>${order.id}</td>
                                        <td>${order.num}</td>
                                        <td class="spMs">${order.user.sortname}</td>
                                        <td>${order.type.sortName}</td>
                                        <td>${order.take_info}</td>
                                        <td class="spImg">已完成</td>
                                        <td class="spImg">${order.price}</td>
                                        <td class="spImg">${order.good.name}</td>
                                        <td class="spImg">${order.amount}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        </c:if>
                        <c:if test="${orderList==null}">
                            无数据
                        </c:if>
                    </div>
                </div>
            </div>
            <div id="left" class="g-3-5 c-0">
                <!--js 加载异步加载的左侧菜单 -->
                <div id="menu">
                    <h3>我的交易</h3>
                    <c:if test="${user.sortname=='admin'}">
                    <dl class="fore1">
                        <dt>
                            <a target="_blank" clstag="homepage|keycount|home2013|hdd" id="_MYJD_ordercenter" href="<%=basePath%>/user/showMyUser">我的信息</a>
                        </dt>
                    </dl>
                    <dl class="fore2">
                        <dt>
                            <a target="_blank" clstag="homepage|keycount|home2013|hyushou" id="_MYJD_yushou" href="<%=basePath%>/page/user">用户管理</a>
                        </dt>
                    </dl>
                    <dl class="fore3">
                        <dt>
                            <a target="_blank" clstag="homepage|keycount|home2013|hyushou" id="_MYJD_yushou" href="<%=basePath%>/page/goods" class="curr">商品管理</a>
                        </dt>
                    </dl>
                    </c:if>
                    <dl class="fore3">
                        <dt>
                            <a target="_blank" clstag="homepage|keycount|home2013|hyushou" id="_MYJD_yushou" href="<%=basePath%>/page/orderMsg" class="curr">订单查看</a>
                        </dt>
                    </dl>
                </div>
            </div>
            <span class="clr"></span>
        </div>
    </div>
</div>

<!-- footer start -->
<jsp:include page="commons/footer.jsp" />
<!-- footer end -->
</body>
</html>