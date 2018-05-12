<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:forward page="/page/index" />
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
