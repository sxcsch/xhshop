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
	<title>爱上鲜花-花语大全</title>
	<meta name="Keywords" content="" />
	<meta name="description" content="" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/base.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/myjd.common.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/myjd.info.css" media="all" />
	<link rel="stylesheet" href="<%=basePath%>/css/language.css">
	<script type="text/javascript" src="<%=basePath%>/js/jquery-1.6.4.js"></script>
</head>
<body>
<script type="text/javascript" src="<%=basePath%>/js/base-2011.js" charset="utf-8"></script>
<!-- header start -->
<jsp:include page="commons/header.jsp" />
<!-- header end -->

<!-- con start -->
<div class="lan">
	<div class="lanCon">
		<div class="lanNav">
			<a href="#">爱上鲜花</a>&nbsp;&gt;&nbsp;<a href="#">花语大全</a>
		</div>
		<div class="lanMain">
			<div class="lanTit">花语大全</div>
			<div class="lanSel">
				<div class="selList">玫瑰</div>
				<div class="selList">郁金香</div>
				<div class="selList">紫罗兰</div>
				<div class="selList">马蹄莲</div>
				<div class="selList">水仙花</div>
			</div>
			<div class="lanWen">
				<div class="lanTit1">玫瑰的花语</div>
				<div class="wenList">
					<div class="wenImg"><img src="<%=basePath%>/images/flower/1.jpg" alt=""></div>
					<div class="wenRight">
						<div class="wenName">红玫瑰</div>
						<div class="floSend"><span>送花对象：</span>朋友、恋人、爱人</div>
						<div class="floLan"><span>花语：</span>热恋、希望与你泛起激情的爱</div>
						<div class="wenInfo"></div>
					</div>
				</div>
				<div class="wenList">
					<div class="wenImg"><img src="<%=basePath%>/images/flower/2.jpg" alt=""></div>
					<div class="wenRight">
						<div class="wenName">白玫瑰</div>
						<div class="floSend"><span>送花对象：</span>朋友、爱人</div>
						<div class="floLan"><span>花语：</span>纯洁、高贵、天真和纯纯的爱</div>
						<div class="wenInfo">花语的其他解释: 1、尊敬；2、不被注意(不为人知)的美；3、诚实；4、纯纯的爱；5、甘心为你付出所有；6、高贵；7、智慧；8、纯洁、纯情、天真；9、我足以与你相配</div>
					</div>
				</div>
				<div class="hd">
					<div class="hdTit">朵数代表的花语</div>
					<div class="hdList">1朵: 你是我的唯一。（一见钟情）</div>
					<div class="hdList">2朵: 世界上只有你和我。（你浓我浓）</div>
					<div class="hdList">3朵: I LOVE YOU。</div>
					<div class="hdList">999朵: 无尽的爱。</div>
				</div>
			</div>
			<div class="lanWen">
				<div class="lanTit1">郁金香的花语</div>
				<div class="wenList">
					<div class="wenImg"><img src="<%=basePath%>/images/flower/3.jpg" alt=""></div>
					<div class="wenRight">
						<div class="wenName">白色郁金香</div>
						<div class="floSend"><span>送花对象：</span>朋友、同事、长辈、情人</div>
						<div class="floLan"><span>花语：</span>纯情、纯洁；失恋、失去的爱</div>
						<div class="wenInfo"></div>
					</div>
				</div>
				<div class="wenList">
					<div class="wenImg"><img src="<%=basePath%>/images/flower/4.jpg" alt=""></div>
					<div class="wenRight">
						<div class="wenName">黄色郁金香</div>
						<div class="floSend"><span>送花对象：</span>爱人、老师、客户、领导/长辈</div>
						<div class="floLan"><span>花语：</span>1、高雅、珍贵、财富、爱惜、友谊。2、表示没有希望的爱、无望的恋情</div>
						<div class="wenInfo"></div>
					</div>
				</div>
				<div class="hd">
					<div class="hdTit">其他郁金香的花语</div>
					<div class="hdList">双色郁金香：美丽的你、喜相逢</div>
					<div class="hdList">羽毛郁金香：情意绵绵</div>
				</div>
			</div>
			<div class="lanWen">
				<div class="lanTit1">紫罗兰的花语</div>
				<div class="wenList">
					<div class="wenImg"><img src="<%=basePath%>/images/flower/5.jpg" alt=""></div>
					<div class="wenRight">
						<div class="wenName">白色紫罗兰</div>
						<div class="floLan"><span>花语：</span>诚实、清凉，让我们抓住幸福的机会吧</div>
						<div class="wenInfo"></div>
					</div>
				</div>
				<div class="wenList">
					<div class="wenImg"><img src="<%=basePath%>/images/flower/6.jpg" alt=""></div>
					<div class="wenRight">
						<div class="wenName">粉色紫罗兰</div>
						<div class="floLan"><span>花语：</span>誓言</div>
						<div class="wenInfo"></div>
					</div>
				</div>
			</div>
			<div class="lanWen">
				<div class="lanTit1">马蹄莲的花语</div>
				<div class="wenList">
					<div class="wenImg"><img src="<%=basePath%>/images/flower/7.jpg" alt=""></div>
					<div class="wenRight">
						<div class="wenName">白色马蹄莲</div>
						<div class="floSend"><span>送花对象：</span>朋友、亲人、爱人、同事、情人</div>
						<div class="floLan"><span>花语：</span>幸福/纯洁，忠贞不渝，永结同心</div>
						<div class="wenInfo">白色马蹄莲清雅而美丽，因白色马蹄莲花语象征幸福所以它和玫瑰、百合一样非常适合用在婚礼上面，同时也是欧美国家新娘捧花的常用花</div>
					</div>
				</div>
				<div class="wenList">
					<div class="wenImg"><img src="<%=basePath%>/images/flower/8.jpg" alt=""></div>
					<div class="wenRight">
						<div class="wenName">红色马蹄莲</div>
						<div class="floSend"><span>送花对象：</span>朋友、亲人、爱人、同事</div>
						<div class="floLan"><span>花语：</span>清净、喜欢</div>
						<div class="wenInfo">红色马蹄莲象征圣洁虔诚，吉祥如意，永结同心。注：马蹄莲花有毒，内含大量草本钙洁结晶和生物碱，误食会引起昏眠等中毒症状</div>
					</div>
				</div>
			</div>
			<div class="lanWen">
				<div class="lanTit1">水仙花的花语</div>
				<div class="wenList">
					<div class="wenImg"><img src="<%=basePath%>/images/flower/9.jpg" alt=""></div>
					<div class="wenRight">
						<div class="wenName">中国水仙花</div>
						<div class="floSend"><span>送花对象：</span>朋友、爱人、恋人</div>
						<div class="floLan"><span>花语：</span>多情、想你、自尊、自信</div>
						<div class="wenInfo">中国水仙，水仙属石蒜科水仙属植物，原产中国，在中国已有一千多年栽培历史，为中国传统名花之一</div>
					</div>
				</div>
				<div class="wenList">
					<div class="wenImg"><img src="<%=basePath%>/images/flower/10.jpg" alt=""></div>
					<div class="wenRight">
						<div class="wenName">西洋水仙花</div>
						<div class="floSend"><span>送花对象：</span>朋友、爱人、情人、恋人、所爱的人</div>
						<div class="floLan"><span>花语：</span>期盼爱情、爱你、纯洁</div>
						<div class="wenInfo">洋水仙与中国水仙相比，具有花大色艳、应用广泛等特点。常多球盆栽，在室内还可用作切花观赏。也可用于花坛、花境、草坪和水池边缘的摆设布置</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>
<!-- con end -->

<!-- footer start -->
<jsp:include page="commons/footer.jsp" />
<!-- footer end -->
<script>
	$(function(){
        $(".selList").eq(0).addClass("selListOn");
        $(".lanWen").eq(0).css("display","block")
	    $(".selList").click(function () {
			var index=$(this).index();
            $(".selList").removeClass("selListOn");
            $(".lanWen").css("display","none")
			$(".selList").eq(index).addClass("selListOn")
            $(".lanWen").eq(index).css("display","block")
        })
	})
</script>
</body>
</html>