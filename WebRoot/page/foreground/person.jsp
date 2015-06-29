<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>"/>    
    <title>个人信息</title>
    

  <link rel="stylesheet" href="css/person_style.css" type="text/css"></link></head>
  
 <body>
        <div id="content">
            <a class="back" href=""></a>
            <span class="scroll"></span>
            <p class="head">            	
                Campus life services
                <a href="page/foreground/main.jsp" >Back to The home page</a>
            </p>
            <h1>Personal center</h1>
            <h2 class="person">个人信息</h2>
            <div class="persion_talbe">
        <div class="grid-1 clearfix">    
		<div class="aside">
			<div class="u-info">
				<div class="u-main">
					<div class="avatar avatar-hover">
					<a class="avatar-img" href="">
					<img src="<s:property value="%{#session.user.imgsrc}"/>">
					</a>
					<a class="change" href="page/foreground/person_pic.jsp">修改头像</a>
					</div>
					<div class="txt">
					<p style="font-size:12px;"><s:property value="%{#session.user.userName}"></s:property></p>
					<p style="font-size:16px;"><a href="page/foreground/exchange_msg.jsp" class="lnk">修改个人资料</a> </p>
					</div>
				</div>
			</div>
			<div class="aside-mod">
				<div class="aside-hd clearfix">
				<h3>常用操作</h3>
				</div>
				<div class="aside-bd" >
				<ul class="operation-list">
				<li>
				<h3><i class="ico ico-psw"></i>登录密码</h3>
				<p><span class="fr"><a href="page/foreground/exchange_password.jsp" class="lnk">修改</a></span> 定期修改密码保护帐号安全</p>
				</li>
				<li>
				<h3><i class="ico ico-email"></i>邮箱修改</h3>
				<p><span class="fr"><a href="page/foreground/exchange_msg.jsp" class="lnk">修改</a></span> <s:property value="%{#session.user.email}"></s:property></p>
				</li>				
				
				</ul>
				</div>
			</div>
			<div class="aside-mod">
				<div class="aside-hd clearfix">
				<h3>快捷入口</h3>
				</div>
				<div class="aside-bd">
				<ul class="entry-list">
				<li>
				<a href="get!getPoints.action" target="_blank">
				<p>校园美景</p>
				</a>
				</li>
				<li>
				<a href="Rtdata!Rt_FoodNetwork.action" target="_blank">
				<p>校园美食</p>
				</a>
				</li>
				<li>
				<a href="loveActivityAction!toLoveActivity" target="_blank">
				<p>爱心活动</p>
				</a>
				</li>
				<li>
				<a href="lost!lostandfind.action?rid=<s:property value="#session.user.role.rid"/>" target="_blank">
				<p>失物招领</p>
				</a>
				</li>
				<li  style="width: 100px;">
				<a href="goTo!goToSuggestion.action" target="_blank">
				<p>投诉和建议</p>
				</a>
				</li>
				</ul>
				</div>
			</div>
		</div>
		
		
			<div class="article">           
			<table class="zebra" style="float: left;">
			    <thead>
			    <tr>       
			        <th>我的店铺</th> 			              
			    </tr>
			    </thead>
			    <tfoot>
			    <tr>			   
			        <s:if test="#session.user.role.rid==3">
			        <td width="340px;" style="text-align: left;" ><a href="getdata!Rt_Myrestaurants.action">欢迎您，点击可以进入商家详情</a></td> 
			        </s:if>
			        <s:else>
			        <td>您还不是商家，联系管理员开通吧！</td>
			        </s:else>  	
			    </tr>
			    </tfoot>    
			
			</table>
						
			</div>
		</div>	
		
      	</div>

        </div>

    </body>
</html>
