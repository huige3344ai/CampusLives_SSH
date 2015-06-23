<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page import="com.zhbit.domain.ActivityApply"%>
<%@page import="com.zhbit.domain.LoveActivity"%>
<%@page import="com.zhbit.domain.User"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 String isA ="",contact="",sex="",username="";
                     int judge,identity=-1;
                     User user=(User)session.getAttribute("user");
                     ActionContext.getContext().getSession().put("user",user);	
	                      if(user!=null){ 
	                         username=user.getUserName();
	                        judge= user.getRole().getRid();//获取身份角色编号
	                        identity=user.getId();//获取身份id
	                        contact=user.getEmail();//获取联系方式
	                      }else{
	                        judge=-1;
	                        
	                      }
    	        	       
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>校园服务网站</title>
	
	<link rel="stylesheet" type="text/css" href="css/main_ac.css">
	<script src="js/LoveActivity.js" type="text/javascript"></script>
  </head>
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
          
         
    	    <div id="body">
         	<jsp:include page="/page/background/nav.jsp"/>
     		
         </div>
         
           <div id="body1">      
                <!-- //////////////////////////////////// --> 
    	        <div class="c_div1">
    	        <br>
    	        
    	            <table align="center">
    	                    <th>登录信息:</th>
    	            		<tr >
    	            	         <td>姓名</td>
    	                         <td><s:if test="#session.user!=null"><s:property value="#session.user.userName"/></s:if></td>
    	                   </tr>
    	                   	<tr >
    	                   		
    	            	         <td>身份</td>
    	                         <td><s:if test="#session.user.role.rid==2">管理员</s:if><s:else>普通用户 </s:else></td>
    	                   </tr>
    	                   	<tr >
    	            	        <td>性别</td>
    	                        <td><s:if test="#session.user.sex==1">男</s:if><s:else>女</s:else></td>
    	                   </tr>
    	                   <tr >
    	            	       <td>联系方式</td>
    	                       <td><s:if test="#session.user!=null"><s:property value="#session.user.email"/></s:if></td>
    	                       
    	                       
    	                  </tr>
    	                   <s:if test="#session.user.role.rid==2">
    	                      <tr>
    	                 
 						        <td><a href="page/background/add_activity.jsp"> [增加活动]</a></td>
    	                        <td><a href="loveActivityAction!toDeleteActivity.action?"> [删除活动]</a></td>
    	                      </tr>
    	                   </s:if>
    	                   <tr>	
    	                        <s:if test="#session.user.role.rid==2">
    	                           <td><a href="loveActivityAction!toUpdateActivity.action"> [修改活动]</a></td>
    	                        </s:if>   	        	           		
    	                       <td><a href="loveActivityAction!toCheckCancelApply.action?u_id=<%=identity%>"> [查看报名情况]</a></td>
    	                      
    	                   </tr>
    	                  <tr> <td ></td></tr>
    	                  
    	            </table>               
    	        </div>
    	       
    	        <div class="c_div2">
    	                    
    	        </div>
    	       <div class="c_div3">
    	             <div id="middle_b">
    	                      <div id="in_middle_b">
    	                             <div id="d1">
    	                             	 <a ><img  width="200px" height="200px" src="images/2.jpg" /></a>
    	                                 <a ><img  width="200px" height="200px" src="images/3.jpg" /></a>
    	                                 <a ><img  width="200px" height="200px" src="images/4.jpg" /></a>
    	                                 <a ><img  width="200px" height="200px" src="images/5.jpg" /></a>  
    	                               
    	                             </div>
    	          .                       <div id="d2">
    	                                  </div>
    	                      </div>
    	              </div>
    	       </div>
    	       
    	       <div class="c_div4">
    	         
    	          	 <form >
        <table cellpadding="20px">
       		 <thead > <td></td><td><b>爱心活动列表</b></td></thead>
             <tbody>
          
              <s:if test="activityList.size()!=0">
    	    
               <tr><td><b>活动ID</b></td><td align="center"><b>活动名</b></td><td><b>报名</b></td></tr>
         
	          
                   
    	       	<s:iterator value="activityList" var="acList">
    	       	<tr>
    	       	     <td><label><s:property value="%{#acList.getAcId()}" /></label></td>
    	       		 <td> 
    	       			       <a title="查看活动详情" style=" text-decoration: none;" href="<s:url action="loveActivityAction!toLookActivity?">
    	       			                                                 <s:param name="loveActivity.acId" value="%{#acList.getAcId()}" />
    	       			                                                 <s:param name="loveActivity.acNo" value="%{#acList.getAcNo()}" />
    	       			                                                 <s:param name="loveActivity.acName" value="%{#acList.getAcName()}" />
    	       			                                                 <s:param name="loveActivity.acTime" value="%{#acList.getAcTime()}" />
    	       			                                                 <s:param name="loveActivity.acPlace" value="%{#acList.getAcPlace()}" />
    	       			                                                 <s:param name="loveActivity.acContent" value="%{#acList.getAcContent()}" />
    	       			                                                 <s:param name="loveActivity.PName" value="%{#acList.getPName()}" />
    	       			                                                 <s:param name="loveActivity.PTel" value="%{#acList.getPTel()}" />
    	       			                                                 
    	       			                                                </s:url>">
    	       			           <s:property value="%{#acList.getAcName()}" />
    	       			       </a>
    	       	    </td>
    	       	
    	       			       
    	       		<td align="center"><a title="报名活动"  href="<s:url action="loveActivityAction!toApplyActivity?">
    	       			                                                <s:param name="loveActivity.acId" value="%{#acList.getAcId()}" />
    	       			                                                <s:param name="loveActivity.acName" value="%{#acList.getAcName()}" />
    	       			                                                 
    	       			                                         </s:url>">
    	       			                  <label >+</label>
    	       			                </a>
                   </td>
                      
                </tr> 
                   	       
    	       </s:iterator>
    	       		
    	            
    	       </s:if>
    	       <s:else>
    	                        <tr> 空空如也..</tr>
    	       </s:else>
           </tbody> 
        </table>
     </form>
    	          
    	    </div>
         </div>
         
            
        
        
        
         <div id="footer">
         	<div class="footer_title">
         	<p>Copyright 2014 ZFSOFT All Rights Reserved. 标准版V1.0.0E-mail：888888@gmail.com</p>
         	<br/>
			<p>地址：广东省珠海市唐家湾金凤路6号 北京理工大学珠海学院 联系电话：13800138000</p>
         	</div>
         </div>
  </div>
  </body>
</html>
