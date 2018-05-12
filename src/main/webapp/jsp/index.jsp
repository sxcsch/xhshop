<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page session="false" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>鲜花网上商城-鲜花综合网购首选-正品低价、品质保障、货到付款、配送及时、放心服务、轻松购物！</title>
<meta name="description" content="鲜花网上商城">
<link href="<%=basePath%>/css/taotao.css" rel="stylesheet"/><script src="<%=basePath%>/js/jquery-1.6.4.js"></script>
<script type="text/javascript">
	window.pageConfig={
	compatible:true,
	navId:"home",
	enableArea: true
	};

    $(function(){

        $(".list").eq(0).css("display","block")
        $(".btn").eq(0).css("background","#fff")

        $(".btn").hover(function(){
            var index=$(this).index()
            $(".btn").css("background","#000").filter(this).css("background","#fff")
            $(".list").css("display","none")
            $(".list").eq(index).css("display","block");
        },function(){
            num=$(this).index()
        })

        var t=setInterval(move,3000)
        var num=0
        function move(){
            num++
            if(num==$(".btn").length){num=0}
            if(num<0){num=$(".btn").length-1}
            $(".btn").css("background","#000").eq(num).css("background","#fff")
            $(".list").css("display","none")
            $(".list").eq(num).css("display","block");
        }

        $(".banner").hover(function(){
            clearInterval(t)
        },function(){
            t=setInterval(move,3000)
        })


    })
</script>
<style type="text/css">
#categorys-2013 .mc {
	display: block;
}
#categorys-2013 .mt {
	background: 0
}
.banner{
	width: 670px;
	height: 240px;
	margin: 0 auto;
	overflow: hidden;
	position: relative;
	margin-bottom: 5px;
}
.box{
	width: 670px;
	height:240px;
}
.list{
	width: 670px;
	height: 240px;
	display: none;
}
	.list .img{
		display: block;
		width:100%;
	}
.btnbox{
	width:200px;height: 20px;
	position: absolute;
	left:300px;bottom: 2px;
	z-index: 1;
}
.btn{
	width: 10px;height: 10px;
	background: #000;
	float: left;
	margin-left: 5px;
	border-radius: 50%;
	cursor: pointer;
}
</style>
</head>
<body>
<!-- header start -->
<jsp:include page="commons/header.jsp" />
<!-- header end -->
<div class="w">
<div id="o-slide">
	<div class="banner">
		<div class="box">
			<div class="list"><img src="images/5.jpg" alt=""></div>
			<div class="list"><img src="images/4.jpg" alt=""></div>
			<div class="list"><img src="images/3.jpg" alt=""></div>
		</div>
		<div class="btnbox">
			<div class="btn"></div>
			<div class="btn"></div>
			<div class="btn"></div>
		</div>
	</div><!--slide end-->
<div class="jscroll" id="mscroll">
	<DIV class="fk">
		<img src="images/7.jpg" alt="">
		<img src="images/9.jpg" alt="">
		<img src="images/8.jpg" alt="">
	</DIV>
</div><!--mscroll end-->
</div>
<div id="jdnews" class="m m1" >
</div>
<!--新闻结束-->
 
<div data-widget="tabs" class="m _520_a_lifeandjourney_1" id="virtuals-2014">
<div class="mt">
</div>
<div class="mc">
	<img src="images/6.jpg" alt="">
</div>
</div>
	<div class="flower-lan">
		<div class="flowerTop">
			<div class="flowerTit">爱花物语</div>
			<a href="#" class="flower-more">更多</a>
		</div>
		<div class="flower-list"><span>红玫瑰：</span>热恋、希望与你泛起激情的爱</div>
		<div class="flower-list"><span>白百合：</span>纯洁、纯白、优雅、高贵、庄严、心心相印！</div>
		<div class="flower-list"><span>海棠花：</span>温和、美丽、快乐，象征游子思乡，表达离愁别绪的意思；也有人说是跟随他人的引导走。</div>
	</div>

<!--virtuals end-->
<span class="clr"></span>
</div>
<!-- 幻灯片, 公信力, 淘淘快报, 虚拟产品 end -->
 
<div id="floors-list">
<div class="w w1" data-fid="0" id="electronics">
<div class="m m1 catalogue" data-lazyload="1">
<div class="mt ld">
<div class="floor"><b class="fixpng b b1"></b><b class="fixpng b b2"></b><b class="b b3">baidu</b><b class="fixpng b4"></b></div>
	<div class="fr">
		<div class="sm" id="branch-office">
			<div class="smt">
				<h3>鲜花自营覆盖区县</h3>
			</div>
			<div class="smc">
				<p>爱上花鲜花已向全国1859个区县提供自营配送服务，支持货到付款、POS机刷卡和售后上门服务。</p>
				<p class="ar"><a href="http://help.jd.com/help/distribution-768.html" target="_blank">查看详情&nbsp;></a></p>
			</div>
		</div>
	</div>
</div>
<!-- 家电通讯楼层 end-->
</div>
 
<!-- footer start -->
<jsp:include page="commons/footer.jsp" />
<!-- footer end -->
 
</body>
</html>