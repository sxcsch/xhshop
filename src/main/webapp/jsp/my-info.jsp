<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="<%=basePath%>">
<meta http-equiv="Cache-Control" content="max-age=300" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>我的信息 - 爱上鲜花</title>
<meta name="Keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/base.css" media="all" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/myjd.common.css" media="all" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/myjd.info.css" media="all" />
<script type="text/javascript" src="<%=basePath%>/js/jquery-1.6.4.js"></script>
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
            
			<div class="mod-main">
                <form action="<%=basePath%>/user/update" id="user_form" method="post">
                    <input type="hidden" name="usersid" value="${user.usersid}"/>
                        <div class="mt">
                            <ul class="extra-l">
                                <li class="fore-1"><a class="curr" href="#">基本信息</a></li>
                            </ul>
                        </div>
                        <div class="mc">
                            <div class="user-set userset-lcol">
                                <div class="form">
                                    <div class="item">
                                        <span class="label"><em>*</em>用户名：</span>
                                        <div class="fl">
                                            <input type="text" class="itxt" maxlength="20" id="sortname" name="sortname" value="${user.sortname}">
                                            <div class="clr"></div><div class="prompt-06"><span id="nickName_msg"></span></div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <span class="label"><em>*</em>真实姓名：</span>
                                        <div class="fl">
                                            <input type="text" class="itxt" maxlength="20" name="userstruename" id="userstruename" value="${user.userstruename}">
                                            <div class="clr"></div><div class="prompt-06"><span id="realName_msg"></span></div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <span class="label"><em>*</em>电话：</span>
                                        <div class="fl">
                                            <input type="text" class="itxt" maxlength="20" name="usersphone" id="usersphone" value="${user.usersphone}">
                                            <div class="clr"></div><div class="prompt-06"><span id="realName_msg"></span></div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <span class="label">密保问题：</span>
                                        <div class="fl">
                                            <input type="text" class="itxt" maxlength="20" name="userspassquestion" id="userspassquestion" value="${user.userspassquestion}">
                                            <div class="clr"></div><div class="prompt-06"><span id="realName_msg"></span></div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <span class="label">密保答案：</span>
                                        <div class="fl">
                                            <input type="text" class="itxt" maxlength="20" name="userspassreply" id="userspassreply" value="${user.userspassreply}">
                                            <div class="clr"></div><div class="prompt-06"><span id="realName_msg"></span></div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <span class="label">邮箱：</span>
                                        <div class="fl">
                                            <div>
                                                <input type="text" class="itxt" name="usersemail" id="usersemail" value="${user.usersemail}">
                                                <span class="ftx-03">&nbsp;&nbsp;&nbsp;已验证</span>
                                            </div>
                                        </div>
                                        <div class="clr"></div>
                                    </div>
                                    <div class="item">
                                        <span class="label"><em>*</em>地址：</span>
                                        <div class="fl">
                                            <input type="text" class="itxt itxt1" name="usersaddrss" id="usersaddrss" value="${user.usersaddrss}">
										    <div class="clr"></div><div class="prompt-06"><span id="address_msg"></span></div>
                                        </div>
                                    </div>

                                    <div class="item">
                                        <span class="label">&nbsp;</span>
                                        <div class="fl">
                                            <a href="javascript:void(0)" class="btn-5" onclick="updateUserInfo()">提交</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="user-info">
                                <div class="info-m">
									<div><b>用户名：${user.sortname}</b></div>
                                    <div class="u-level">
										<span class="rank r4">
											<b>等级：</b>金牌会员
										</span>
                                    </div>
                                    <div><b>会员类型：</b>个人用户</div>
                                </div>
                            </div>
                            <div class="clr"></div>
							
                        </div>
                    </form>
                </div>
        </div>
    </div>
    <div id="left" class="g-3-5 c-0">
        <!--js 加载异步加载的左侧菜单 -->
        <div id="menu">
            <h3>我的交易</h3>
            <dl class="fore1">
                <dt>
                    <a target="_blank" clstag="homepage|keycount|home2013|hdd" id="_MYJD_ordercenter" href="<%=basePath%>/user/showMyUser" class="curr">我的信息</a>
                </dt>
            </dl>
            <dl class="fore2">
                <dt>
                    <a target="_blank" clstag="homepage|keycount|home2013|hyushou" id="_MYJD_yushou" href="<%=basePath%>/page/user">用户管理</a>
                </dt>
            </dl>
            <dl class="fore3">
                <dt>
                    <a target="_blank" clstag="homepage|keycount|home2013|hyushou" id="_MYJD_yushou" href="<%=basePath%>/page/goods">商品管理</a>
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