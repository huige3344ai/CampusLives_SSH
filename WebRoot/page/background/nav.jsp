<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
 	 <link rel="stylesheet" href="css/main.css" type="text/css"></link>

  </head>
  
  <body>
      	         <div id="nav">
                       <ul>
                       		<li>
                       				<a href="">主页 </a>
                       				
                       		</li>
                       		<li>
                       				<a href="">校园美景</a>
                       				
                       		</li>
                       		<li>
                       				<a href="page/foreground/food/FoodNetwork.jsp">校园美食</a>
                       				
                       		</li>
                       		<li>
                       				<a href="">失物招领</a>
                       				
                       				
                       		</li>
                       		<li>
                       				<a href="">爱心活动</a>
                       				
                       		</li>
                       		
                        	<li>
                       				<a href="goTo!goToSuggestion.action">投诉建议</a>
                       				 
                       		</li> 

                       		
                       </ul>  
                </div>
                 <div class = "user">
		                    <ul>
		                    <li><s:property value="#session.user.userName"/>
		                    	<ul class= "clearfix">
		                    	<li><a href="page/foreground/exchange_msg.jsp">修改信息</a></li>
		                    	<li><a href="page/foreground/exchange_password.jsp">修改密码</a></li>
		                    	<li><a href="userOut!loginOut.action" >退出登录</a></li>                   	
		                    	</ul>
		                    </li>	
		                    </ul>                 
		       </div>                
  </body>
</html>
