<%-- <%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<html>
	<head>
		<title>用户注册</title>
		<sx:head parseContent="true"/>
	</head>

	<body>

		<s:form action="userRegister!register.action" namespace="/">
			<s:textfield key="用户名" name="user.userName" cssstyle="width:160px;height:26px"/>
			<s:password key="密码" name="user.password" cssstyle="width:160px;height:26px"/>
			<s:password key="再输一遍密码" name="repassword" cssstyle="width:160px;height:26px"/>
			<s:textfield key="年龄" name="user.age" cssstyle="width:160px;height:26px"/>	
			<s:radio name="user.sex" list="%{#{'1':'男','0':'女'}}" value="1"></s:radio>				
			<sx:datetimepicker  name="user.birthday" toggleType="explode" toggleDuration="400"
			label="出生日期" displayFormat="yyyy-MM-dd"  >	
			</sx:datetimepicker>
			<s:textfield key="邮箱" name="user.email" cssstyle="width:160px;height:26px"></s:textfield>
			<s:submit value="提 交"/>
		</s:form>
	</body>
</html> --%>

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
				<h3>注册</h3>
			</div>
			
			<form  action="userRegister!register.action" method="post">
			<div class="login-error"></div>
			<div class="row_user">
				<label id="text_user">用 	户:</label>
				<div class=left_side>
					<s:textfield  name="user.userName" cssstyle="width:160px;height:26px" theme="simple"/>	
				</div>													
			</div>
			<div class="row_user">
				<label id="text_user">密  码:</label>
				<s:password  name="user.password" cssstyle="width:160px;height:26px" theme="simple"/>
			</div>			
			<div class="row_user">
				<label id="text_re">重复密码:</label>
				<s:password  name="repassword" cssstyle="width:160px;height:26px" theme="simple"/>
			</div>			
			<div class="row_user">
				<label id="text_age">年 龄:</label>
				<s:textfield  name="user.age"  cssstyle="width:160px;height:26px;" theme="simple" />					
			</div>
			
			<div class="row_user">					
				<label id="text_sex">性 别:</label>	
				<s:radio name="user.sex" list="%{#{'1':'男','0':'女'}}" value="0" ></s:radio>														
			</div>	
				
			<div class="row_user">		
			<label id="text_birthday">出生日期:</label>
			<sx:datetimepicker  name="user.birthday" toggleType="explode" toggleDuration="400"
			displayFormat="yyyy-MM-dd" value="%{#session.user.birthday}">	
			</sx:datetimepicker>
			
			</div>	
			<div class="row_user">	
			<label id="text_user">邮 箱:</label>			
				<s:textfield name="user.email" cssstyle="width:160px;height:26px" theme="simple"></s:textfield>														
			</div>				
							
			<div class="row btnArea">
				<input class="login-btn"  type="submit" value="确认"></input>
			</div>
			<div class="row btnArea">
				<input class="login-btn_cancel"  type="button" value="返还"  onClick="window.location='<%=basePath%>/login.jsp'"></input>
			</div>			

			</form>
			<div class="tissue">
			<s:fielderror></s:fielderror>
			</div>			
		</div>

	</div>
	
<div id="footer">

</div>

</div>
  </body>
</html>
