
 
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<base href="<%=basePath%>"/>
<title>登录</title>
<script type="text/javascript" src="js/main_login.js"></script>
<link rel="stylesheet" href="css/login.css" type="text/css"></link>

</head>
<body >
<div class="dataEye">
	<div class="loginbox">

		<div class="login-content">
			<div class="loginbox-title">
				<h3>登录</h3>
			</div>
			<s:form id="signupForm" action="userLogin!login.action" method="post"  namespace="/" theme = "simple">	
					
			<div class="row">
				<label class="field" id="text_user">用户名</label>
				<div class="input_img"></div>
				<input type="text" class="input-text-user" name="user.userName" id="email">				
				<input type="hidden" class="login-error"></input>
			</div>
			<div class="row">
				<label class="field" id="text_password">密码</label>
				<div class="pwd_img"></div>
				<input type="password" class="input-text-password" name="user.password" id="password" >				
			</div>
			<div class="row btnArea">
				<input class="login-btn"  type="submit" value="登录"  style="cursor:auto"></input>				
				<div  class="forget_password">
				找回密码，<a href="goTo!goToReturnPassword">戳这里</a>
				</div>
			</div>
			</s:form>
				还没有帐号？<a href="goTo!goToRegister.action">戳这里</a>
				
				<div class="tissue" > 			
					<p id = "tissue"><s:property value="tissue"/></p>
	            <s:if test="#session.tissue!=null">
					<p id = "tissue"><s:property value="#session.tissue"/></p>	               				
	             </s:if>			
			<s:fielderror></s:fielderror>
			</div>
		</div>

	</div>
	
<div id="footer">

 
 </div>
</div>

</body>
</html>
 
