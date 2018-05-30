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
	<title>爱上鲜花</title>
	<script>var jdpts = new Object(); jdpts._st = new Date().getTime();</script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/taotao.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/pshow.css" media="all" />
	<style>
		#sidepanel{
			display: none!important;
		}
	</style>
</head>
<body version="140120">
<!-- header start -->
<jsp:include page="commons/header.jsp" />
<!-- header end -->
<div class="w">
	<div class="breadcrumb">
		<strong>爱上鲜花 &gt;<a href="<%=basePath%>">${pds.type.sortName }</a></strong>
	</div>
</div><!--breadcrumb end-->
<div class="w">
	<div id="product-intro" >
		<div id="name">
			<h1>${pds.name }</h1>
			<strong>${pds.des}</strong>
		</div><!--name end-->
		<script type='text/javascript'>var warestatus = 1; var eleSkuIdKey =[];</script>
		<div class="clearfix" clstag="shangpin|keycount|product|share">
<ul id="summary">
	<li id="summary-price">
		<div class="dt">鲜花价：</div>
		<div class="dd">
			<strong class="p-price"  id="jd-price">￥${pds.price }</strong>
			<a id="notice-downp" href="#none" target="_blank" clstag="shangpin|keycount|product|jiangjia">(降价通知)</a>
		</div>
	</li>
	<li id="summary-market"><div class="dt">商品编号：</div><div class="dd"><span>${pds.id }</span></div></li>
	<li id="summary-grade">
		<div class="dt">商品评分：</div>
		<div class="dd">
			<span class="star  sa0"></span>
			<a href="#comment"></a>
		</div>
	</li><!-- 商品评分-->
	<li id="summary-stock" style="display: none;">
		<div class="dt">配&nbsp;送&nbsp;至：</div>
		<div class="dd">
			<div id="store-selector" class="">
				<div class="text"><div></div><b></b></div>
				<div class="content">			
					<span class="clr"></span>
				</div>
				<div class="close" onclick="$('#store-selector').removeClass('hover')"></div>
			</div><!--store-selector end-->
			<div id="store-prompt"></div><!--store-prompt end--->
		</div>
		<span class="clr"></span>
	</li>
	<li id="summary-service" class="hide">
		<div class="dt">服&#x3000;&#x3000;务：</div>
		<div class="dd">由 爱上鲜花 发货并提供售后服务。</div>
	</li>
</ul><!--summary end-->
		<div id="brand-bar" clstag="shangpin|keycount|product|btn-coll">
	<dl class="slogens">
		<dt>爱上鲜花·正品保证</dt>
	</dl>
			<!--brand-bar-->
			<ul id="choose" clstag="shangpin|keycount|product|choose">
				<li id='choose-type'></li>
								<li id="choose-amount">
					<div class="dt">购买数量：</div>
					<div class="dd">
						<div class="wrap-input">
								<a class="btn-reduce" href="javascript:;" onclick="setAmount.reduce('#buy-num')">减少数量</a>
								<a class="btn-add" href="javascript:;" onclick="setAmount.add('#buy-num')">增加数量</a>
								<input class="text" id="buy-num" value="1" onkeyup="setAmount.modify('#buy-num');"/>
						</div>
					</div>
				</li>
		        <li id="choose-result"><div class="dt"></div><div class="dd"></div></li>
				<li id="choose-btns">
					<div id="choose-btn-append"  class="btn">
							<a class="btn-append " id="InitCartUrl" onclick="addOrder(${pds.id})" clstag="shangpin|keycount|product|initcarturl">加入购物车<b></b></a>
					</div>
					<div id="choose-btn-easybuy" class="btn"></div>
					<div id="choose-btn-divide" class="btn"></div>
				</li>
			</ul><!--choose end-->
			<span class="clr"></span>
		</div>
		
		<div id="preview">
			<div id="spec-n1" class="jqzoom" clstag="shangpin|keycount|product|spec-n1">
				<img data-img="1" width="350" height="350" src="data:image/png;base64,${pds.picture}"/>
			</div>

			<div id="short-share">
				<div id="" class="">
					<a href="#" target="_blank">正品保证</a>
					&nbsp;&nbsp;
					<a href="#" target="_blank">七天发货</a>
					&nbsp;&nbsp;
					<a href="#" target="_blank">极速退货</a>
				</div>
				<div id="share-list" class="share-list" clstag="shangpin|keycount|product|share">
					<div class="share-ft"><b></b></div>
				</div>
				<div class="clb"></div>
			</div>
		</div><!--preview end-->
	</div><!--product-intro end-->
</div>
<div class="w">
	<div class="right">
		<div id="product-detail" class="m m1" data-widget="tabs" clstag="shangpin|keycount|product|detail">
			<div class="mt">
				<ul class="tab">
	<li clstag="shangpin|keycount|product|pinfotab" data-widget="tab-item" class="curr"><a href="javascript:;" >商品介绍</a></li>
	<li clstag="shangpin|keycount|product|pcanshutab" data-widget="tab-item"><a href="javascript:;" ></a></li>
	<li clstag="shangpin|keycount|product|packlisttab" data-widget="tab-item"><a href="javascript:;" >包装清单</a></li>
	<li clstag="shangpin|keycount|product|pingjiatab" data-widget="tab-item"><a href="javascript:;" ></a></li>
	<li clstag="shangpin|keycount|product|psaleservice" data-widget="tab-item"><a href="javascript:;" ></a></li>
	<li clstag="shangpin|keycount|product|zhinan" data-widget='tab-item'><a href='javascript:;'></a></li>
</ul>
			</div>
			<div class="mc" data-widget="tab-content" id="product-detail-1">
				<ul class="detail-list">
					<li title="${pds.name}">商品名称：${pds.name}</li>
					<li>商品编号：${pds.id}</li>
					<li>科：<a href="#" target="_blank">蔷薇科</a></li>
					<li>上架时间：2014-09-24 15:45:26</li>
					<li>纲：双子叶植物纲</li>
					<li>界：蓝藻界</li>
					<li>英文名：White Roses</li><li>别称：白蔷薇</li><li>拉丁学名：Rosa rugosa Thunb</li>
					<li>白玫瑰性喜阳光，较耐寒，耐旱，喜通风凉爽气候</li>
					<li>适宜生长温度为15-25度</li>
					<li>玫瑰适应性较强，对土壤要求不严</li>
					<li>在肥沃的中性或微酸性轻壤土中生长良好</li>
					<li>植物学的白玫瑰比白月季更耐寒</li>
				</ul>
				<div class="detail-correction">
					<b></b>如果您发现商品信息不准确，欢迎纠错
				</div>
				<div id="item-desc" class="detail-content">
						${pds.des }
				</div>
			</div>
			<div class="mc hide" data-widget="tab-content" id="product-detail-2">
				${pds.des }
			</div>
				<div class="mc  hide" data-widget="tab-content" id="product-detail-3"><div class="item-detail">包装纸×1、营养液×1、礼盒×1</div></div><div class="mc  hide" data-widget="tab-content" id="product-detail-4"></div><div class="mc hide " data-widget="tab-content" id="product-detail-5"><div class="item-detail">本产品全国联保，享受三包服务，质保期为：一年质保<br />本产品提供上门安装调试、提供上门检测和维修等售后服务，自收到商品之日起，如您所购买家电商品出现质量问题，请先联系厂家进行检测 ，凭厂商提供的故障检测证明，在“我的淘淘-客户服务-返修退换货”页面提交退换申请，将有专业售后人员提供服务。淘淘承诺您：30天内可为您退货或换货，180天内无需修理直接换货，超过180天按国家三包规定享受服务。<br />您可以查询本品牌在各地售后服务中心的联系方式，<br />
						<br/>售后服务电话：400-811-1666<br/>

						</div></div><div id="product-detail-6" class="mc hide" data-widget="tab-content"></div>
			<!--知识库二级标签、标题-->
            <div id="promises">
	<strong>服务承诺：</strong><br />
	爱上鲜花向您保证所售商品均为正品行货，爱上鲜花自营商品开具机打发票或电子发票。凭质保证书及爱上鲜花发票，可享受全国联保服务，与您亲临商场选购的商品享受相同的质量保证。爱上鲜花还为您提供具有竞争力的商品价格，请您放心购买！
	<br /><br />
	注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！ 
</div>
<div id="state">
	<strong>权利声明：</strong><br />爱上鲜花上的所有商品信息、客户评价、商品咨询、网友讨论等内容，是爱上鲜花重要的经营资源，未经许可，禁止非法转载使用。
	<p><b>注：</b>本站商品信息均来自于合作方，其真实性、准确性和合法性由信息拥有者（合作方）负责。本站不提供任何保证，并不承担任何法律责任。</p>
</div>
		</div><!--product-detail end-->
	</div><!--right end-->
	
	<div class="left">
		<div id="miaozhen7886" class="m"><img data-img="2" width="211" height="261" src="<%=basePath%>/images/10.jpg" class="loading-style2"></div>
		<div id="miaozhen7887" class="m"><img data-img="2" width="211" height="261" src="<%=basePath%>/images/12.jpg" class="loading-style2"></div>
	</div><!--left end-->
	<%--<span class="clr"></span>--%>
</div>
	<script type="text/javascript">
        function addOrder(id) {
			var r=confirm("是否加入购物车?如果未登录会跳转至登录页面。");
			if (r==true){
				var num = $('#buy-num').val();
				window.location.href = "<%=basePath%>/order/showCart?goods_id="+id+"&amount="+num;
			}else{

			}
        }
	</script>
<!-- footer start -->
<jsp:include page="commons/footer.jsp" />
<!-- footer end -->
<script type="text/javascript" src="<%=basePath%>/js/jquery-1.6.4.js"></script>
</body>
</html>