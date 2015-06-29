 
<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@page import="com.zhbit.domain.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

User user;
if(session.getAttribute("user")!=null){
  user=(User)session.getAttribute("user");
  ActionContext.getContext().getSession().put("user",user);
  }	
		String username="";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>删除活动</title>
    
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
         <!-- sssssssssssssssssssssssssssssssssssssss -->
         
         <div class="c_apply">
         <s:if test="#session.user==null">
     
                     <div align="center"> <h1> 请您先登录，谢谢。</h1>
                     </div>
         </s:if>
         <s:else>
   			
   <form  style="margin-top:120px; margin-left:40px;width: 450px; height: 508px; overflow: scroll; position:absolute; ">
        <table align="center" style=" margin-top:35px;margin-left: 75px;">
        <thead > <td></td><td><b>删除活动</b></td></thead>
               
             <tbody>
               <s:if test="activityList.size()!=0">
                 <s:iterator value="activityList" var="acList">
              	  <tr><td >活动ID</td>  <td ><s:property  value="%{#acList.getAcId()}" /></td></tr> 
              	   <tr><td >活动代号</td>  <td><s:property value="#acList.getAcNo()"/></td></tr> 
                   <tr><td>活动名称</td>  <td><s:property value="%{#acList.getAcName()}"/></td></tr> 
                   <tr><td>活动时间</td>  <td><s:property  value="%{#acList.getAcTime()}"/></td></tr> 
                   <tr><td>活动地点</td>  <td><s:property  value="%{#acList.getAcPlace()}"/></td></tr> 
                   <tr><td>负责人</td>  <td><s:property value="%{#acList.getPName()}"/></td> </tr> 
                   <tr><td>负责人电话</td>  <td><s:property  value="%{#acList.getPTel()}"/></td></tr> 
                   <tr><td>活动内容</td>  <td><textarea  rows="10" cols="30" readonly="readonly" id="ac_content" name="ac_content"><s:property value="%{#acList.getAcContent()}"/></textarea></td></tr> 
                 
                   <tr><td ></td> 
                         <td>
             		        <a href="loveActivityAction!deleteActivity.action?acidForDelete=<s:property  value="%{#acList.getAcId()}" />">删除</a>
                        
                             <a href="loveActivityAction!toLoveActivity">返回</a>
                            
				         </td>
				         <td>
                         </td>   
                  </tr> 
                </s:iterator>
              </s:if>
           
	         
          </tbody>
         
         </table>
         
        </form>
        </s:else>
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
