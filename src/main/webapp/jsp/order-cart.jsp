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
	<meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="expires" content="0" /> 
    <meta name="format-detection" content="telephone=no" />  
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" /> 
    <meta name="format-detection" content="telephone=no" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>订单结算页 -爱上鲜花</title>
	<!--结算页面样式-->	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/base.css" media="all" />
    <link type="text/css" rel="stylesheet" href="<%=basePath%>/css/order-commons.css" source="widget"/>
	<script type="text/javascript" src="<%=basePath%>/js/jquery-1.6.4.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/base.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/order.common.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/jquery.checkout.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/order.js"></script>
	<script>
		function promptinfo()
		{
			var address = document.getElementById('address');
			var s1 = document.getElementById('s1');
			var index1=s1.selectedIndex;
			var value1=s1.options[index1].value;
			var s2 = document.getElementById('s2');
            var index2=s2.selectedIndex;
            var value2=s2.options[index2].value;
			var s3 = document.getElementById('s3');
            var index3=s3.selectedIndex;
            var value3=s3.options[index3].value;
			console.log(value1,value2,value3)
			// address.innerHTML = value1 +''+ value2 +''+ value3;
		}
	</script>
</head>	<body id="mainframe" onload="setup();preselect('山西省');promptinfo();">

<jsp:include page="commons/shortcut.jsp" />
<!--shortcut end-->

<div class="w w1 header clearfix">
    <div id="logo"><a href="/"><img src="<%=basePath%>/images/logo.png" alt=""></a></div>
</div>

<!-- main -->
<div id="container">
	<div id="content" class="w">
		<div class="m">
			<div class="mt">
				<h2>填写并核对订单信息</h2>
			</div>
			<div class="mc">
				<div class="checkout-steps">
<!--  /widget/consignee-step/consignee-step.tpl -->
<div class="step-tit">
	<h3>收货人信息</h3>
</div>
<div class="step-cont">
	<div class="consignee-list" id="consignee-list1">
		<div id="consignee1" class="list-cont ui-switchable-body">
            <div id="consignee-ret"></div>
			<div class="consignee-item item-selected"
				consigneeId="137617472" id="consignee_index_div_137617472">
				<b></b>
				<form id="orderForm" style="width: 100%" action="<%=basePath%>/order/create" method="post">
					省：<select class="select" name="province" id="s1" style="margin-bottom:10px;">
						<option></option>
					</select>
					市：<select class="select" name="city" id="s2">
						<option></option>
					</select>
					县：<select class="select" name="town" id="s3">
						<option></option>
				</select></br>
					街道地址：
					<input type="text" style="width: 100%;margin-top: 10px" id="take_info" name="take_info"/>
				</form>

			</div>
		</div>
	</div>
</div>
<!--/ /widget/consignee-step/consignee-step.tpl -->
	
<!--/ /widget/shopping-list/shopping-list.tpl -->
<div id="shipAndSkuInfo">
  <div id="payShipAndSkuInfo">
    <div class="step-tit">
	<h3>支付方式</h3>
</div>
<div class="step-cont">
	<div class="payment-list" id="">
		<div class="list-cont">
			<ul id="payment-list">
				<input type="hidden" id="instalmentPlan" value="false">
				<li style="cursor: pointer;" onclick="save_Pay(1);">
					<div class="payment-item item-selected online-payment "
						for="pay-method-1" payname="货到付款" payid="1">
						<b></b> 货到付款
					</div>
				</li>
				<li style="cursor: pointer;" onclick="save_Pay(4);">
					<div class="payment-item  online-payment "
						for="pay-method-4" payname="在线支付" payid="4">
						<b></b> 在线支付
						<font class="whiteBarSpanClass hide" color="#FF6600">[支持打白条]</font>
					</div>
				</li>

				<li style="cursor: pointer;" onclick="save_Pay(5); ">

					<div class="payment-item online-payment "
						for="pay-method-5" payname="公司转账" payid="5">
						<b></b> 公司转账
					</div>
				</li>
				<li style="cursor: pointer;" onclick="save_Pay(2); ">

					<div class="payment-item  online-payment "
						for="pay-method-2" payname="邮局汇款" payid="2">
						<b></b> 邮局汇款
					</div>
				</li> 
				<!--div id="shipment"></div--> 
				<script>
					$('.online-payment').hover(function() {
						$(this).addClass('payment-item-hover');
					}, function() {
						$(this).removeClass('payment-item-hover');
					});
				</script>
			</ul>
		</div>
	</div>
</div>
<!--/ /widget/payment-step/payment-step.tpl -->
<div class="step-tit">
	<h3>送货清单</h3>
	<div class="extra-r">
		<a href="<%=basePath%>/order/showCart" id="cartRetureUrl" class="return-edit ftx-05">返回修改购物车</a>
	</div>
</div>
<div class="step-cont" id="skuPayAndShipment-cont">
	<!--添加商品清单  zhuqingjie -->
<div class="shopping-lists" id="shopping-lists"> 
<div class="shopping-list ABTest">
	<div class="goods-list">
     <!--配送方式-->
    <h4 class="vendor_name_h" id="0">商家：爱上鲜花</h4>
</div>
<!--goods-list 结束-->
<div class="dis-modes">
	<!--配送方式-->
	<div class="mode-item mode-tab">
		<h4>
			配送方式：（对应商品）
		</h4>
		<div class="mode-tab-nav">
			<ul>
				<li class="mode-tab-item " id="jd_shipment_item"
					onclick="doSwithTab('pay')"><span
					id="jdShip-span-tip" class="m-txt">爱上鲜花快递</span><b></b></li>
			</ul>
		</div>
	</div>
</div>
<!--dis-modes 结束-->
<div class="freight-cont">
	<strong class="ftx-01" style="color: #666" freightByVenderId="0" popJdShipment="false">免运费</strong>
</div>
</div>	
				
</div>
</div>  
</div>
</div>			
<!--  /widget/invoice-step/invoice-step.tpl -->
<div class="step-tit">
	<h3>发票信息</h3>
</div>
<div class="step-content">
	<div id="part-inv" class="invoice-cont">
		<span class="mr10"> 普通发票（电子） &nbsp; </span>
		<span class="mr10">个人 &nbsp; </span><span class="mr10"> &nbsp; </span> 明细
	</div>
</div>
		<div class="order-summary">
			<!--  预售 计算支付展现方式 begin -->
			<div class="statistic fr">
				<div class="list">
					<span>
						总商品金额：
					</span> 
					<em class="price" id="warePriceId">¥<fmt:formatNumber value="${countRMB}" maxFractionDigits="2" minFractionDigits="2" groupingUsed="true"/></em>
				</div>
				<div class="list">
					<span>运费：</span> <em class="price" id="freightPriceId">
						￥0.00</em>
				</div>
				<div class="list">
					<span>应付总额：</span> <em class="price" id="sumPayPriceId">
						￥<fmt:formatNumber value="${countRMB}" maxFractionDigits="2" minFractionDigits="2" groupingUsed="true"/></em>
				</div>
			</div>
			<div class="clr"></div>
		</div>
	</div>
</div>
<!--/ /widget/order-summary/order-summary.tpl -->
					
<!--  /widget/checkout-floatbar/checkout-floatbar.tpl -->
<div class="trade-foot">
  <div id="checkout-floatbar" class="group">
    <div class="ui-ceilinglamp checkout-buttons">
      <div class="sticky-placeholder hide" style="display: none;">
      </div>
      <div class="sticky-wrap">
      	<div class="inner">
          <button type="submit" class="checkout-submit btn-1" 
          		  id="order-submit"	onclick="$('#orderForm').submit()">
          	提交订单
          </button>
                    <span class="total">应付总额：<strong id="payPriceId">￥<fmt:formatNumber value="${countRMB}" maxFractionDigits="2" minFractionDigits="2" groupingUsed="true"/></strong>
          </span>
        </div>
        <span id="submit_message" style="display:none" class="submit-error" ></span>
		  	<div class="submit-check-info" id="submit_check_info_message" style="display:none"></div>
    	</div>
    </div>
  </div>
  
        </div>
      </div>
    </div>

  </div>
</div>

<!-- /main -->
	<jsp:include page="commons/footer.jsp" />
	</body>
</html>