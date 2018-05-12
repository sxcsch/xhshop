<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<div id="shortcut-2013">
	<div class="w">
		<ul class="fl lh">
			<li class="fore1 ld" clstag="homepage|keycount|home2013|01a"><b></b><a href="javascript:addToFavorite()" rel="nofollow">收藏鲜花</a></li>
		</ul>
		<ul class="fr lh">
			<li class="fore1" id="loginbar" clstag="homepage|keycount|home2013|01b">您好！欢迎来到鲜花商城！
				<c:if test="${user != null }">
					欢迎用户&nbsp;<font color="#a52a2a">${user.userstruename}</font>&nbsp;
					<a href="javascript:outLogin()">[注销]</a>
				</c:if>
				<c:if test="${user == null }">
					<a href="javascript:login()">[登录]</a>&nbsp;<a href="javascript:regist()">[免费注册]</a>
				</c:if>
			</li>
			<li class="fore4 ld menu" id="biz-service" data-widget="dropdown" clstag="homepage|keycount|home2013|01e">
				<s></s>
				<span class="outline"></span>
				<span class="blank"></span>
				客户服务
				<b></b>
				<div class="dd">
					<div><a href="<%=basePath%>/page/message" target="_blank">网站留言</a></div>
				</div>
			</li>
		</ul>
		<span class="clr"></span>
	</div>
</div>