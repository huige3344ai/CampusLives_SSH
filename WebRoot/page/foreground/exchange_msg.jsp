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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">    
    <title>修改用户信息</title>

  <link rel="stylesheet" href="css/login.css" type="text/css"></link>
  
  <script type="text/javascript" src="js/main_regist.js"></script>    
  <body>
    <div class="dataEye">
	<div class="loginbox">
		
		<div class="login-content">
			<div class="loginbox-title">
				<h3>修改用户信息</h3>
			</div>
			<%
			User user = (User)session.getAttribute("user");			
			 %>
					 
			<form id="signupForm" action="userManager!exchangeMsg.action" method="post">
			<div class="login-error"></div>
				<input type="hidden" name="user.id"  value="<%=user.getId()%>"/>
			<table id="register_table" cellspacing=0 cellspacing=0>
				<tr>
					<td>
						<label>用 户:</label>
					</td>
					<td>
						<s:textfield  name="user.userName" cssstyle="width:160px;height:26px" value="%{#session.user.userName}" readonly="true" theme="simple"/>
					</td>										
				</tr>
				<tr>
					<td>
						<label>年 龄:</label>
					</td>
					<td>
						<s:textfield  name="user.age"  cssstyle="width:160px;height:26px;" value="%{#session.user.age}" theme="simple" />
					</td>										
				</tr>
				<tr>
					<td>
						<label>性 别:</label>
					</td>
					<td>
					<s:if test="#session.user.sex==0">
					<input type="radio" name="user.sex" value="0" checked="checked">女
					<input type="radio" name="user.sex" value="1">男
					</s:if>
					<s:else>
					<input type="radio" name="user.sex" value="0" >女
					<input type="radio" name="user.sex" value="1"checked="checked">男					
					</s:else>
					</td>
				</tr>				
				<tr>
					<td>
						<label>邮 箱:</label>
					</td>
					<td>
						<s:textfield name="user.email" cssstyle="width:160px;height:26px" value="%{#session.user.email}" theme="simple" ></s:textfield>	
				    </td>										
				</tr>				
			</table>			
					
			<div class="row btnArea">
				<input class="login-btn"  type="submit" value="确认修改"></input>
			</div>
			<div class="row btnArea">
				<input class="login-btn_cancel"  type="button" value="返还"  onClick="window.location='<%=basePath%>page/foreground/main.jsp'"></input>
			</div>			
			<div class="tissue">
				<s:fielderror></s:fielderror>
				<p id = "tissue"><s:property value="tissue"></s:property></p>		
			</div>
			</form>
		</div>

	</div>
	
<div id="footer">

</div>

</div>
  </body>
</html>
