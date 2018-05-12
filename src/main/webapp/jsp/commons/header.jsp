<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<script type="text/javascript" src="<%=basePath%>/js/base-v1.js" charset="utf-8"></script>

<!--shortcut start-->
<jsp:include page="shortcut.jsp" />
<!--shortcut end-->
<div id="o-header-2013">
	<div class="w" id="header-2013">
		<div id="logo-2013" class="ld"><a href="/" hidefocus="true" clstag="homepage|keycount|home2013|02a"><b></b><img src="<%=basePath%>/images/logo.png" width="200" height="60" alt="鲜花"></a></div>
		<!--logo end-->
		<div id="search-2013">
			<div class="i-search ld">
				<ul id="shelper" class="hide">
				</ul>
				<div class="form">
					<input type="text" class="text" accesskey="s" id="key" autocomplete="off" onkeydown="javascript:if(event.keyCode==13) search('key');">
					<input type="button" value="搜索" class="button" onclick="search('key');return false;" clstag="homepage|keycount|home2013|03a">
				</div>
			</div>
			<div id="hotwords" clstag="homepage|keycount|home2013|03b"></div>
		</div>
		<!--search end-->
		<div id="my360buy-2013">
			<dl>
				<dt class="ld"><s></s><a href="<%=basePath%>/user/showMyUser" clstag="homepage|keycount|home2012|04a">我的鲜花</a><b></b></dt>
				<dd>
					<div class="loading-style1"><b></b>加载中，请稍候...</div>
				</dd>
			</dl>
		</div>
		<!--my360buy end-->
		<div id="settleup-2013" clstag="homepage|keycount|home2013|05a">
			<dl>
				<dt class="ld"><s></s><span class="shopping"><span id="shopping-amount"></span></span><a href="<%=basePath%>/order/showCart" id="settleup-url">去购物车结算</a> <b></b> </dt>
			</dl>
		</div>
		<!--settleup end-->
	</div>
	<!--header end-->
	<div class="w">
		<div id="nav-2013">
			<div id="categorys-2013" class="categorys-2014">
				<div class="mt ld">
					<h2><a href="" clstag="homepage|keycount|home2013|06a">全部商品分类<b></b></a></h2>
				</div>
				<div id="_JD_ALLSORT" class="mc">
					<div class="item fore1">
						<span data-split="1"><h3>
								<a href="<%=basePath%>/goods/searchType?type=0">花束</a>
							</h3>
							<s></s></span>
					</div>
					<div class="item fore2">
						<span data-split="1"><h3>
								<a href="<%=basePath%>/goods/searchType?type=1">花盒</a>
							</h3>
							<s></s></span>
					</div>
					<div class="item fore3">
						<span data-split="1"><h3>
								<a href="<%=basePath%>/goods/searchType?type=2">瓶花</a>
							</h3>
							<s></s></span>
					</div>
					<div class="item fore4">
						<span data-split="1"><h3>
								<a href="<%=basePath%>/goods/searchType?type=3">精品鲜花</a>
							</h3>
							<s></s></span>
					</div>
					<div class="item fore5">
						<span data-split="1"><h3>
								<a href="<%=basePath%>/goods/searchType?type=4">果篮</a>
							</h3>
							<s></s></span>
					</div>
					<div class="item fore6">
						<span data-split="1"><h3>
								<a href="<%=basePath%>/goods/searchType?type=5">桌面花篮</a>
							</h3>
							<s></s></span>
					</div>
					<div class="item fore7">
						<span data-split="1"><h3>
								<a href="<%=basePath%>/goods/searchType?type=6">开业花篮</a>
							</h3>
							<s></s></span>
					</div>
					<div class="extra">
						<a {if="" pageconfig.ishome}clstag="homepage|keycount|home2013|0614a"
							{="" if}="" href="http://www.jd.com/allSort.aspx">全部商品分类</a>
					</div>
				</div>
			</div>
			<div id="treasure" clstag="homepage|keycount|home2013|08a"></div>
				<ul id="navitems-2013">
					<li class="fore1" id="nav-home" clstag="homepage|keycount|home2013|07a"><a href="<%=basePath%>/">首页</a></li>
					<li class="fore5" id="nav-auction" clstag="homepage|keycount|home2013|07e"><a href="<%=basePath%>/page/search?type=2">鲜花</a></li>
					<li class="fore2" id="nav-fashion" clstag="homepage|keycount|home2013|07b"><a href="<%=basePath%>/page/flowerLanguage">花语大全</a></li>
					<li class="fore4" id="nav-tuan" clstag="homepage|keycount|home2013|07d"><a href="<%=basePath%>/page/searchItem" target="_blank">设计师臻选</a></li>
					<li class="fore3" id="nav-chaoshi" clstag="homepage|keycount|home2013|07c"><a href="<%=basePath%>/page/business">企业团购</a></li>
				</ul>
		</div>
	</div>
</div>