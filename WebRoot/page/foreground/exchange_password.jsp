
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
				<h3>修改密码</h3>
			</div>
			<%
			User user = (User)session.getAttribute("user");			
			 %>
			<form id="signupForm" action="exPassword" method="post">			
			<div class="login-error"></div>
			<div class="row">
				<label class="field" id="text_user"></label>
				<input type="text" class="input-text-user input-click" readonly="readonly" name="user.userName" id="email" value="<%=user.getUserName()%>"/>				
			</div>
			<div class="row">
				<label class="field" id="text_password_old" >旧密码</label>
				<input type="password" class="input-text-password input-click" name="oldpassword" id="password_old" />
				<input type="hidden" name="user_oldpassword" value="<%=user.getPassword()%>"/>
			</div>
						
			<div class="row">
				<label class="field" id="text_password">新密码</label>
				<input type="password" class="input-text-password input-click" name="user.password" id="password" />
			</div>
			
			<div class="row">
				<label class="field" id="text_password_1" >新密码</label>
				<input type="password" class="input-text-password input-click" name="newpassword" id="password_1" />
			</div>			
			<div class="row btnArea">
				<input class="login-btn"  type="submit" value="确认修改"></input>
			</div>
			<div class="row btnArea">
				<input class="login-btn_cancel"  type="button" value="取消修改"  onClick="window.location='<%=basePath%>/page/foreground/main.jsp'"></input>
			</div>			
			<div class="tissue">
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
