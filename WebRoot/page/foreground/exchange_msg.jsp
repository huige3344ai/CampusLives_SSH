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
    		<sx:head parseContent="true"/>
    
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
				<input type="hidden" name="user.password"  value="<%=user.getPassword()%>"/>			
			<div class="row_user">
				<label id="text_user">用 户:</label>
				<s:textfield  name="user.userName" cssstyle="width:160px;height:26px" readonly ="true" value="%{#session.user.userName}"/>									
			</div>
			<div class="row_user">
				<label id="text_age">年 龄:</label>
				<s:textfield  name="user.age"  cssstyle="width:160px;height:26px;" value="%{#session.user.age}" theme="simple" />					
			</div>
			<div class="row_user">					
				<label id="text_sex">性 别:</label>	
				<s:radio name="user.sex" 	 list="%{#{'1':'男','0':'女'}}" value="%{#session.user.sex}" theme="simple" ></s:radio>														
			</div>		
			<div class="row_user">		
			<label id="text_birthday">出生日期:</label>
			<sx:datetimepicker  name="user.birthday" toggleType="explode" toggleDuration="400"
			displayFormat="yyyy-MM-dd" value="%{#session.user.birthday}">	
			</sx:datetimepicker>
			
			</div>	
			<div class="row_user">	
			<label id="text_user">邮 箱:</label>			
				<s:textfield name="user.email" cssstyle="width:160px;height:26px" value="%{#session.user.email}" theme="simple" ></s:textfield>														
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
