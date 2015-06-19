
<%@ page language="java" import="java.util.*,com.zhbit.domain.*,com.zhbit.dao.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>修改密码</title>

  <link rel="stylesheet" href="css/login.css" type="text/css"></link>
  
  <script type="text/javascript" src="js/main_regist.js"></script>    
  <body>
    <div class="dataEye">
	<div class="loginbox">

		<div class="login-content">
			<div class="loginbox-title">
				<h3>找回密码</h3>
			</div>
			<form id="signupForm" action="returnPassword" method="post">
			
			<div class="login-error"></div>
			<div class="row">
				<label class="field" id="text_user">用户名</label>
				<input type="text" class="input-text-user input-click"  name="user.userName" id="email" />				
			</div>
			
			<div class="row">
				<label class="field" id="text_password_old" >邮箱验证</label>
				<input type="text" class="input-text-password input-click" name="user.email" id="password_old" />
			</div>
			
						
			<div class="row">
				<label class="field" id="text_password" >新密码</label>
				<input type="password" class="input-text-password input-click" name="user.password" id="password" />
			</div>
			
			<div class="row">
				<label class="field" id="text_password_1" >新密码</label>
				<input type="password" class="input-text-password input-click" name="newpassword" id="password_1" />
			</div>			
			<div class="row btnArea">
				<input class="login-btn"  type="submit" value="确认"></input>
			</div>
			<div class="row btnArea">
				<input class="login-btn_cancel"  type="button" value="返还"  onClick="window.location='<%=basePath%>page/foreground/login.jsp'"></input>
			</div>			
			<div class="tissue">
				<p><s:property value="tissue"/></p>
				<s:fielderror></s:fielderror>
			</div>
			</form>
		</div>

	</div>
	
<div id="footer">

</div>

</div>
  </body>
</html>
