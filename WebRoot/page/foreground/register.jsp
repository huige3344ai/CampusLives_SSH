<%@ page language="java" import="java.util.*,com.zhbit.domain.*,com.zhbit.dao.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
    <base href="<%=basePath%>">
    <title>注册 </title>

  <link rel="stylesheet" href="css/login.css" type="text/css"></link>
  
  <script type="text/javascript" src="js/main_regist.js"></script>    
  <body>
    <div class="dataEye register">
	<div class="loginbox">

		<div class="login-content">
			<div class="loginbox-title">
				<h3>注册</h3>
			</div>
			
			<form  action="userRegister!register.action" method="post">
			<div class="login-error"></div>
			<table id="register_table" cellspacing=0 cellspacing=0>
				<tr>
					<td>
					<label>用户:</label>					
					</td>
					<td ><s:textfield  name="user.userName" cssstyle="width:160px;height:26px" theme="simple"/></td>
				</tr>
				<tr>
					<td>
					<label >密  码:</label>
					</td>
					<td><s:password  name="user.password" cssstyle="width:160px;height:26px" theme="simple"/></td>
				</tr>
				<tr>
					<td>
					<label >重复密码:</label>
					</td>
					<td><s:password  name="repassword" cssstyle="width:160px;height:26px" theme="simple"/></td>
				</tr>
				<tr>
					<td>
					<label >年 龄:</label>
					</td>
					<td><s:textfield  name="user.age"  cssstyle="width:160px;height:26px;" theme="simple" /></td>
				</tr>
				<tr>					
					<td>
					<label >性 别:</label>					
					</td>
					<td>
					<input type="radio" name="user.sex" value="0" checked="checked">女
					<input type="radio" name="user.sex" value="1">男
					</td>
				</tr>
				
				<tr>
					<td>
					<label>邮 箱:</label>				
					</td>
					<td><s:textfield name="user.email" cssstyle="width:160px;height:26px" theme="simple"></s:textfield></td>
				</tr>
				<tr>
					<td>
					<label >类型:</label>			
					</td>
					<td>
					<input type="radio" name="role.rid" value="1" checked="checked">普通用户
					<input type="radio" name="role.rid" value="3">商家					
					</td>
				</tr>				
			</table>
		
										
			<div class="row btnArea">
				<input class="login-btn"  type="submit" value="确认"></input>
			</div>
			<div class="row btnArea">
				<input class="login-btn_cancel"  type="button" value="返还"  onClick="window.location='<%=basePath%>page/foreground/login.jsp'"></input>
			</div>			
			
			</form>
			<div class="tissue">
				<p id = "tissue"><s:property value="tissue"/></p>					
			<s:fielderror></s:fielderror>
			</div>			
		</div>

	</div>
	
<div id="footer">

</div>

</div>
  </body>
</html>
