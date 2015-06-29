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

  <link rel="stylesheet" href="css/nav.css" type="text/css"></link>
  </head>
  
  <body>
      	         <div id="nav">
                       <ul>
                       		<li>
                       				<a href="page/foreground/main.jsp">主页 </a>
                       				
                       		</li>
                       		<li>
                       				<s:a href="get!getPoints.action">校园美景</s:a>
                       				
                       		</li>
                       		<li>
                       				<a href="Rtdata!Rt_FoodNetwork.action">校园美食</a>
                       				
                       		</li>
                       		<li>
                       				<a href="lost!lostandfind.action?rid=<s:property value="#session.user.role.rid"/>">失物招领</a>
                       				
                       				
                       		</li>
                       		<li>
                       				<a href="loveActivityAction!toLoveActivity">爱心活动</a>
                       				
                       		</li>
                       		
                        	<li>
                       				<a href="goTo!goToSuggestion.action">投诉建议</a>
                       				 
                       		</li> 
                       		<s:if test="#session.user!=null">
							<li style="margin-left:60px;">
									<a href="userOut!loginOut.action" >退出登录</a>
							</li>                       		
							</s:if>
							<s:else>
							<li style="margin-left:50px;">
								<a href="page/foreground/login.jsp" style="color:green;">登录</a>	
							</li>  							
							</s:else>
                       		
                       </ul>  
                </div>
                 <div class = "user" id="user_setting">
                 <s:if test="#session.user!=null">                 
                 
		                    <ul>
		                    <li><a href="page/foreground/person.jsp"><s:property value="#session.user.userName"/></a>
		                    	<ul class= "clearfix">
		                    	<s:if test="#session.user.role.rid==2">
		                    	<li><a href="page/foreground/person_admin.jsp">修改用户</a></li>		                    	
		                    	</s:if>
		                    	<li><a href="page/foreground/person_pic.jsp">上传头像</a></li>
		                    	<li><a href="page/foreground/exchange_msg.jsp">修改信息</a></li>
		                    	<li><a href="page/foreground/exchange_password.jsp">修改密码</a></li>
		                    	<!--肖剑锋景观跳转修改  -->
		                    	<s:if test="#session.user.role.rid==2">
		                    	<li><a href="add!getPoints.action">景观修改</a></li>
		                    	</s:if>
		                    	<!--END -->
		                    	<li><a href="userOut!loginOut.action" >退出登录</a></li>                   	
		                    	</ul>
		                    </li>	
		                    </ul>      
				</s:if>	
				
				<s:else>
				<p style="font-size: 14px;">还没有帐号？<a href="goTo!goToRegister.action" style="color:green;">戳这里</a></p>
				</s:else>	                               
		       </div>                
  </body>
</html>
