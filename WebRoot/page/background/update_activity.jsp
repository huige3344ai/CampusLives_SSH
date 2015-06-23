<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@page import="com.zhbit.domain.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

User user=(User)session.getAttribute("user");
 ActionContext.getContext().getSession().put("user",user);	
	String username="";
    username=user.getUserName();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改活动</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/activityapply.css">

 

  </head>
  
  
  <!-- 0000000 -->
  <body>
     <div id="container" >
         <div id="header">
         	
         	<div class="header_band" >
         	<span>北京理工大学珠海学院</span>
         	</div>
         	
         	<div class="header_title" >
         	<strong><span>校园生活服务网站</span></strong>
         	</div>         	
         </div>

			 <div id="body" align="center">
         	   <jsp:include page="/page/background/nav.jsp"/>
     		
             </div>

				<!-- acidForUpdate=<s:property value="%{#id}"/>sssssssssssssssssssssssssssssssssssssss -->
			 
			<div class="c_apply">

                <% Short name0fForm=1; %>
          <framework   style="width: 600px; height: 500px; overflow: scroll; position: absolute;" >      
           <s:if test="activityList.size()!=0">
			<s:iterator value="activityList" var="acList">
			  
				<table align="center">
						<thead>
							<td><s:a href="loveActivityAction!toLoveActivity">返回</s:a></td> <td><b>修改活动</b></td>
						</thead>
						
						<tbody>
							     
								 <s:form namespace="/"  method="post" action="loveActivityAction!updateActivity.action">
											
											<s:textfield label="活动ID" name="loAc.acId" readonly="true" value='%{#acList.getAcId()}'/>
								
											<s:textfield label="活动代号" name="loAc.acNo" value='%{#acList.getAcNo()}'/>
									
											<s:textfield label="活动名称"  name="loAc.acName" value='%{#acList.getAcName()}'/>
										 
									
											<s:textfield label="活动时间" name="loAc.acTime" value='%{#acList.getAcTime()}'/>
										
										 
											<s:textfield label="活动地点"   name="loAc.acPlace" value='%{#acList.getAcPlace()}'/>
									
											<s:textfield label="负责人" name="loAc.PName" value='%{#acList.getPName()}'/>
										 
									
											<s:textfield label="负责人电话" name="loAc.PTel" value='%{#acList.getPTel()}'/>
									
										 
											<s:textarea label="活动内容" rows="10" cols="50" name="loAc.acContent" value="%{#acList.getAcContent()}">
												 
											</s:textarea>
									
									<s:submit value="修改" />
								</s:form>
						</tbody>
                            
					</table>

			  
           </s:iterator>
		 </s:if>
		
		</framework>
				
			</div>
            
			<!--ssssssssssssssssssssssss -->
   
         <div id="footer" align="center">
         	<div class="footer_title">
         	<p>Copyright 2014 ZFSOFT All Rights Reserved. 标准版V1.0.0E-mail：888888@gmail.com</p>
         	<br/>
			<p>地址：广东省珠海市唐家湾金凤路6号 北京理工大学珠海学院 联系电话：13800138000</p>
         	</div>
         </div>
  </div>
  
	
   
  </body>
  <!-- 0000000 -->
  
 
     
  
</html>
