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
                            <a href="#">商品管理</a>
                        </div>
                        <a href="<%=basePath%>/goods/goAdd" class="spAdd">添加</a>
                        <table width="830" cellspacing="0">
                            <tbody>
                                <tr>
                                    <th>ID</th>
                                    <th>商品名称</th>
                                    <th>描述</th>
                                    <th>价格</th>
                                    <th>种类</th>
                                    <th>图片</th>
                                    <th>操作</th>
                                </tr>
                                <c:forEach items="${goodsList}" var="goods">
                                    <tr>
                                        <td>${goods.id}</td>
                                        <td>${goods.name}</td>
                                        <td class="spMs">${goods.des}</td>
                                        <td>${goods.price}</td>
                                        <td>${goods.types.sortName}</td>
                                        <td class="spImg"><img src="data:image/png;base64,${goods.picture}" alt=""></td>
                                        <td>
                                            <a href="<%=basePath%>/goods/goEdit?id=${goods.id}" class="spModify">修改</a>
                                            <a href="javascript:void(0)" onclick="del(${goods.id})" class="spDel">删除</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                <script>
                                    function del(id) {
                                        $.ajax({
                                            type: "POST",
                                            url: "<%=basePath%>/goods/delete.do",
                                            data: {'id':id},
                                            dataType : "json",
                                            success: function(respMsg){
                                                location.href = "<%=basePath%>/page/goods";
                                            }
                                        });
                                    }
                                </script>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div id="left" class="g-3-5 c-0">
                <!--js 加载异步加载的左侧菜单 -->
                <div id="menu">
                    <h3>我的交易</h3>
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