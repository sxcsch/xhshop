<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Cache-Control" content="max-age=300" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商品信息 - 爱上鲜花</title>
<meta name="Keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css" href="/css/base.css" media="all" />
<link rel="stylesheet" type="text/css" href="/css/myjd.common.css" media="all" />
<link rel="stylesheet" type="text/css" href="/css/myjd.info.css" media="all" />
<script type="text/javascript" src="/js/jquery-1.7.1.js"></script>
    <%--<script type="text/javascript" src="/js/ajaxfileuploadFixToBatch.js"></script>--%>
    <%--<script type="text/javascript" src="/js/ajaxSubmit.js"></script>--%>
    <%--<script type="text/javascript" src="/js/jquery.formHelp.js"></script>--%>
</head>
<body>
<script type="text/javascript" src="/js/base-2011.js" charset="utf-8"></script>
<!-- header start -->
<jsp:include page="commons/header.jsp" />
<!-- header end -->

<div id="container">
<div class="w">
	
<div id="main">
    <div class="g-0">
        <div id="content" class="c-3-5">
            
			<div class="mod-main">
                <form action="/goods/save" id="form" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="id" id="id" value="${goods.id}"/>
                        <div class="mt">
                            <ul class="extra-l">
                                <li class="fore-1"><a class="curr" href="#">基本信息</a></li>
                            </ul>
                        </div>
                        <div class="mc">
                            <div class="user-set userset-lcol">
                                <div class="form">
                                    <div class="item">
                                        <span class="label"><em>*</em>商品名称：</span>
                                        <div class="fl">
                                            <input type="text" class="itxt" maxlength="20" id="name" name="name" value="${goods.name}">
                                            <div class="clr"></div><div class="prompt-06"><span id="nickName_msg"></span></div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <span class="label"><em>*</em>描述：</span>
                                        <div class="fl">
                                            <input type="text" class="itxt" maxlength="20" name="des" id="des" value="${goods.des}">
                                            <div class="clr"></div><div class="prompt-06"><span id="realName_msg"></span></div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <span class="label"><em>*</em>价格：</span>
                                        <div class="fl">
                                            <input type="text" class="itxt" maxlength="20" name="price" id="price" value="${goods.price}">
                                            <div class="clr"></div><div class="prompt-06"><span id="realName_msg"></span></div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <span class="label"><em>*</em>种类：</span>
                                        <div class="fl">
                                            <select name="type" id="zl">
                                                <option value="0"<c:if test="${'1' eq goods.type}">selected</c:if> >花束</option>
                                                <option value="1"<c:if test="${'1' eq goods.type}">selected</c:if> >花盒</option>
                                                <option value="2"<c:if test="${'1' eq goods.type}">selected</c:if> >鲜花</option>
                                                <option value="3"<c:if test="${'1' eq goods.type}">selected</c:if> >精品鲜花</option>
                                                <option value="4"<c:if test="${'1' eq goods.type}">selected</c:if> >果篮</option>
                                                <option value="5"<c:if test="${'1' eq goods.type}">selected</c:if> >桌面花篮</option>
                                                <option value="6"<c:if test="${'1' eq goods.type}">selected</c:if> >开业花篮</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <span class="label"><em>*</em>图片：</span>
                                        <div class="fl">
                                            <c:if test="${goods.id==null}">
                                            <input type="file" class="itxt imgSel" maxlength="20" name="picture" id="picture">
                                            <div class="clr"></div><div class="prompt-06"><span id="realName_msg"></span></div>
                                            </c:if>
                                            <c:if test="${goods.id!=null}">
                                                <img src="data:image/png;base64,${goods.picture}" alt=""/>
                                            </c:if>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <span class="label"><em>*</em>上下状态：</span>
                                        <div class="fl">
                                            <div>
                                                <select name="status" id="zt">
                                                    <option value="1"  <c:if test="${'1' eq goods.status}">selected</c:if> >上架</option>
                                                    <option value="2" <c:if test="${'1' eq goods.status}">selected</c:if> >下架</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="clr"></div>
                                    </div>

                                    <div class="item">
                                        <span class="label">&nbsp;</span>
                                        <div class="fl">
                                            <c:if test="${goods.id==null}">
                                                <input type="submit"></input>
                                            </c:if>

                                            <c:if test="${goods.id!=null && goods.id!=''}">
                                                <a class="btn-5" onclick="updateGoodsInfo(${goods.id})">提交</a>
                                            </c:if>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="clr"></div>
							
                        </div>
                    </form>
                </div>
        </div>
    </div>
    <script type="text/javascript">

        function updateGoodsInfo(id) {
//            var formData = new FormData();
//            console.log(formData)
//            formData.append("name",$("#name").val());
//            formData.append("des",$("#des").val());
//            formData.append("price",$("#price").val());
//            formData.append("type",$("#type").val());
//            formData.append("status",$("#status").val());
//            console.log(formData)
            if(id!=null){
//                formData.append("id",$("#id").val());
                $.ajax({
                    type: "POST",
                    url: "/goods/edit.do",
                    data:  $('#form').serialize(),
                    //processData: false,  // 告诉jQuery不要去处理发送的数据
                    //contentType: false,   // 告诉jQuery不要去设置Content-Type请求头
                    //cache: false,
                    dataType : "json",
                    success: function(respMsg){
                        console.log(respMsg)
                        location.href = "/page/goods";
                    },
                    error:function(respMsg){
                        console.log(respMsg)
                        location.href = "/page/goods";
                    }
                });
            }else{
                //formData.append("picture",$("#picture")[0].files[0]);
                //更换成ajax上传
//                console.log("aaa")
//                document.getElementById("form").submit();
                  var form=document.getElementById("form");
                  var input=document.createElement('input');
                  input.setAttribute("type","submit");
                  input.setAttribute("id","tj");
                  form.append(input);
                  console.log(form);
                    $("#tj").submit();
//                $.ajaxFileUpload({
//                    url : "/goods/save.do",
//                    type : 'post',
//                    async : true,
//                    secureuri : false, //一般设置为false
//                    fileElementId : 'picture', // 上传文件的id、name属性名
//                    dataType : 'text', //返回值类型，一般设置为json、application/json
//                    data : $(form).serialize(),
//                    success : function(data, status) {
//                        location.href = "/page/goods";
//                    }
//                });
//                $.ajax({
//                    type: "POST",
//                    url: "/goods/save.do",
//                    data: formData,
//                    processData: false,  // 告诉jQuery不要去处理发送的数据
//                    contentType: false,   // 告诉jQuery不要去设置Content-Type请求头
//                    cache: false,
//                    dataType : "json",
//                    success: function(respMsg){
//                        location.href = "/page/goods";
//                    }
//                });
            }
        }
    </script>
    <div id="left" class="g-3-5 c-0">
        <!--js 加载异步加载的左侧菜单 -->
        <div id="menu">
            <h3>我的交易</h3>
            <dl class="fore1">
                <dt>
                    <a target="_blank" clstag="homepage|keycount|home2013|hdd" id="_MYJD_ordercenter" href="/user/showMyUser" class="curr">我的信息</a>
                </dt>
            </dl>
            <dl class="fore2">
                <dt>
                    <a target="_blank" clstag="homepage|keycount|home2013|hyushou" id="_MYJD_yushou" href="/page/user">用户管理</a>
                </dt>
            </dl>
            <dl class="fore3">
                <dt>
                    <a target="_blank" clstag="homepage|keycount|home2013|hyushou" id="_MYJD_yushou" href="/page/goods">商品管理</a>
                </dt>
            </dl>
            <dl class="fore3">
                <dt>
                    <a target="_blank" clstag="homepage|keycount|home2013|hyushou" id="_MYJD_yushou" href="/page/orderMsg" class="curr">订单查看</a>
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