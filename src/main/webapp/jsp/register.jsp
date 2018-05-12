<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<head>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache,must-revalidate">
    <title>注册-个人用户</title>
    <link type="text/css" rel="stylesheet" href="<%=basePath%>/css/regist.personal.css"/>
    <link type="text/css" rel="stylesheet" href="<%=basePath%>/css/passport.base.css"/>
    <script type="text/javascript" src="<%=basePath%>/js/jquery-1.6.4.js"></script>
</head>
<body>
<div class="w" id="logo">
    <div>
    	<a>
    		<img src="<%=basePath%>/images/logo.png" alt="鲜花商城" width="170" height="60"/>
    	</a> <b></b>
    </div>
</div>

<div class="w" id="regist">
    <div class="mt">
        <ul class="tab">
            <li class="curr">个人用户</li>
        </ul>
        <div class="extra">
        <span>我已经注册，现在就&nbsp;
        	<a href="/user/showLogin" class="flk13">登录</a>
        </span>
        </div>
    </div>
    <div class="mc">
        <form id="personRegForm" method="post" onsubmit="return false;">
            <div class="form" onselectstart="return false;">
                <div class="item" id="select-regName">
                    <span class="label"><b class="ftx04">*</b>用户名：</span>
                    <div class="fl item-ifo">
                        <div class="o-intelligent-regName">
                            <input type="text" id="sortname" name="sortname" class="text" tabindex="1" autoComplete="off"
                                   onpaste="return false;"
                                   value=""
                                   onfocus="if(this.value=='') this.value='';this.style.color='#333'"
                                   onblur="if(this.value=='') {this.value='';this.style.color='#999999'}"/>

                            <ul id="intelligent-regName" class="hide"></ul>
                            <label id="regName_succeed" class="blank"></label>
                            <label id="regName_error" class="hide"></label>
                        </div>
                    </div>
                </div>
                <div id="o-password">
                    <div class="item">
                        <span class="label"><b class="ftx04">*</b>请设置密码：</span>

                        <div class="fl item-ifo">
                            <input type="password" id="userpass" name="userpass" class="text" tabindex="2"
                                   style="ime-mode:disabled;"
                                   onpaste="return  false" autocomplete="off"/>

                            <label id="pwd_succeed" class="blank"></label>
                            <label id="pwd_error"></label>
                            <span class="clr"></span>
                        </div>
                    </div>

                    <div class="item">
                        <span class="label"><b class="ftx04">*</b>请确认密码：</span>

                        <div class="fl item-ifo">
                            <input type="password" id="usersrepass" name="usersrepass" class="text" tabindex="3"
                                   onpaste="return  false" autocomplete="off"/>

                            <label id="pwdRepeat_succeed" class="blank"></label>
                            <label id="pwdRepeat_error"></label>
                        </div>
                    </div>

                    <div class="item" >
                        <span class="label"><b class="ftx04">*</b>真实姓名：</span>
                        <div class="fl item-ifo">
                            <input type="text" id="userstruename" maxlength="11" name="userstruename"
                                   class="text" tabindex="4"
                                   autocomplete="off" />  <label
                                id="" class="blank"></label> <label
                                id=""></label>
                        </div>
                    </div>

					<div class="item" id="dphone">
						<span class="label"><b class="ftx04">*</b>验证手机：</span>

						<div class="fl item-ifo">
							<input type="text" id="usersphone" maxlength="11" name="usersphone"
								class="text" tabindex="4"
								autocomplete="off" /> <label
								id="phone_succeed" class="blank"></label> <label
								id="phone_error"></label>
						</div>
					</div>

                    <div class="item" >
                        <span class="label"><b class="ftx04"></b>密保问题：</span>
                        <div class="fl item-ifo">
                            <input type="text" id="userspassquestion" maxlength="11" name="userspassquestion"
                                   class="text" tabindex="4"
                                   autocomplete="off" />  <label
                                id="" class="blank"></label> <label
                                id=""></label>
                        </div>
                    </div>

                    <div class="item" >
                        <span class="label"><b class="ftx04"></b>密保答案：</span>
                        <div class="fl item-ifo">
                            <input type="text" id="userspassreply" maxlength="11" name="userspassreply"
                                   class="text" tabindex="4"
                                   autocomplete="off" />  <label
                                id="" class="blank"></label> <label
                                id=""></label>
                        </div>
                    </div>

                    <div class="item" >
                        <span class="label"><b class="ftx04">*</b>用户地址：</span>
                        <div class="fl item-ifo">
                            <input type="text" id="usersaddrss" maxlength="11" name="usersaddrss"
                                   class="text" tabindex="4"
                                   autocomplete="off" />  <label
                                id="" class="blank"></label> <label
                                id=""></label>
                        </div>
                    </div>

                    <div class="item" >
                        <span class="label"><b class="ftx04"></b>用户邮件：</span>
                        <div class="fl item-ifo">
                            <input type="text" id="usersemail" maxlength="11" name="usersemail"
                                   class="text" tabindex="4"
                                   autocomplete="off" />  <label
                                id="" class="blank"></label> <label
                                id=""></label>
                        </div>
                    </div>
                    </div>
					</div>
                <div class="item item-new">
                    <span class="label">&nbsp;</span>

                    <div class="fl item-ifo">
                        <input type="checkbox" class="checkbox" checked="checked" id="readme"
                               onclick="agreeonProtocol();">
                        <label for="protocol">我已阅读并同意<a href="#" class="blue" id="protocol">《鲜花用户注册协议》</a></label>
                        <span class="clr"></span>
                        <label id="protocol_error" class="error hide">请接受服务条款</label>
                    </div>
                </div>
                <div class="item">
                    <span class="label">&nbsp;</span>
                    <input type="button" class="btn-img btn-regist" id="registsubmit" value="立即注册" tabindex="8"
                           clstag="regist|keycount|personalreg|07"
                           onclick="REGISTER.reg();"/>
                </div>
            </div>
            <span class="clr"></span>
        </form>
    </div>
<script type="text/javascript">
	var REGISTER={
		inputcheck:function(){
				//不能为空检查
				if ($("#sortname").val() == "") {
					alert("用户名不能为空");
					$("#sortname").focus();
					return false;
				}
				if ($("#userpass").val() == "") {
					alert("密码不能为空");
					$("#userpass").focus();
					return false;
				}
				if ($("#usersphone").val() == "") {
					alert("手机号不能为空");
					$("#usersphone").focus();
					return false;
				}
                if ($("#usersaddrss").val() == "") {
                    alert("用户地址不能为空");
                    $("#usersaddrss").focus();
                    return false;
                }
                if ($("#userstruename").val() == "") {
                    alert("真实名称不能为空");
                    $("#userstruename").focus();
                    return false;
                }
				//密码检查
				if ($("#userpass").val() != $("#usersrepass").val()) {
					alert("确认密码和密码不一致，请重新输入！");
					$("#pwdRepeat").select();
					$("#pwdRepeat").focus();
					return false;
				}
				return true;
		},
		beforeSubmit:function() {
				//检查用户是否已经被占用
                var sortname = $("#sortname").val();
				$.ajax({
	            	url : "/user/selectById?sortname="+sortname,
	            	success : function(data) {
                        console.log(data)
	            		if (data.length==0) {
                            REGISTER.doSubmit();
	            		} else {
	            			alert("此用户名已经被占用，请选择其他用户名");
	            			$("#sortname").select();
	            		}	
	            	}
				});
		},
		doSubmit:function() {
			$.post("/user/register",$("#personRegForm").serialize(), function(data){
			    console.log(data)
				if(data.status == 200){
					alert('用户注册成功，请登录！');
					REGISTER.login();
				} else {
					alert("注册失败！");
				}
			});
		},
		login:function() {
			 location.href = "/user/showLogin";
			 return false;
		},
		reg:function() {
			if (this.inputcheck()) {
				this.beforeSubmit();
			}
		}
	};
</script>
</body>
</html>
