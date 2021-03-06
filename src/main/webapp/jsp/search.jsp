<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<head>
<meta http-equiv="Cache-Control" content="max-age=300" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${query} - 商品搜索 - 淘淘</title>
<meta name="Keywords" content="java,淘淘java" />
<meta name="description" content="在淘淘中找到了29910件java的类似商品，其中包含了“图书”，“电子书”，“教育音像”，“骑行运动”等类型的java的商品。" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/base.css" media="all" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/psearch20131008.css" media="all" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/psearch.onebox.css" media="all" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/pop_compare.css" media="all" />
<script type="text/javascript" src="<%=basePath%>/js/jquery-1.6.4.js"></script>
</head>
<body>
<script type="text/javascript" src="<%=basePath%>/js/base-2011.js" charset="utf-8"></script>
<!-- header start -->
<jsp:include page="commons/header.jsp" />
<!-- header end -->
<div class="w main">
	<c:if test="${query == ''}">
		<div class="crumb">全部结果&nbsp;&gt;&nbsp;<strong>"${query}"</strong></div>
	</c:if>
	<div class="m clearfix" id="bottom_pager">
		<div  id="pagin-btm" class="pagin fr" clstag="search|keycount|search|pre-page2">
			${page.pageStrs}
		</div>
	</div>
	<div class="clr"></div>
<div class="m psearch " id="plist">
<ul class="list-h clearfix" tpl="2">
<c:forEach items="${pds}" var="item">
<li class="item-book" bookid="11078102">
	<div class="p-img">
		<a target="_blank" href="<%=basePath%>goods/searchId?id=${item.id }">
			<img src="data:image/png;base64,${item.picture}" width="160" height="160" data-img="1" data-lazyload="" />
		</a>
	</div>
	<div class="p-name">
		<a target="_blank" href="<%=basePath%>goods/searchId?id=${item.id }">
			${item.name}
		</a>
	</div>
	<div class="p-price">
		<i>鲜花价：</i>
		<span><strong>￥<input style="border:none;" type="text" name="price" value="${item.price}"/></strong></span>
	</div>
	<div class="service">由爱上鲜花发货</div>
	<div class="extra">
		<span class="star"><span class="star-white"><span class="star-yellow h5"></span></span></span>
	</div>
</li>
</c:forEach>
</ul></div>
</div>
<!-- footer start -->
<jsp:include page="commons/footer.jsp" />
<!-- footer end -->
<script type="text/javascript" src="<%=basePath%>/js/jquery.hashchange.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/search_main.js"></script>
</body>
</html>