<%@page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page import="com.zhbit.domain.ActivityApply"%>
<%@page import="com.zhbit.domain.LoveActivity"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
    	         <div id="nav">
                       <ul>
                       		<li>
                       				<a href="page/foreground/main.jsp">主页 </a>
                       				
                       		</li>
                       		<li>
                       				<a href="page/PointView/foreground/PointNavigation.jsp">校园美景</a>
                       				
                       		</li>
                       		<li>
                       				<a href="page/foreground/food/FoodNetwork.jsp">校园美食</a>
                       				
                       		</li>
                       		<li>
                       				<a href="checkservlet">失物招领</a>
                       				
                       				
                       		</li>
                       		<li>
                       				<a href="LoginServlet">爱心活动</a>
                       				
                       		</li>
                       		
                        	<li>
                       				<a href="JudgeIsAdmin">投诉建议</a>
                       				 
                       		</li> 
                       		                           		
                       		<li>
                       				
                       				<a href="page/foreground/regist.jsp" >修改密码</a>
                       				 
                       		</li>

                       		
                       </ul>
                <div class = "user">
                        
                 <%=session.getAttribute("uname")%>,<a href="page/foreground/logout.jsp">注销</a>
                	                		
                 </div>   
                </div>
     				
         </div>
         
           <div id="body1">      
                <!-- //////////////////////////////////// --> 
    	        <div class="c_div1">
    	        <br>
    	        
    	            <table align="center">
    	                    <th>登录信息:</th>
    	            		<tr >
    	            	         <td>姓名</td>
    	                         <td><%=session.getAttribute("uname")%></td>
    	                   </tr>
    	                   	<tr >
    	                   		<%-- int judge = Integer.parseInt(session.getAttribute("isAdmin").toString());
    	                   		String isA = null;
    	        	              if(judge==1){
    	        	           		isA ="管理员";
    	        	               }else{
    	        	                isA ="普通用户";
    	        	               }
    	        	            --%>
    	            	         <td>身份</td>
    	                         <td><%--=isA--%></td>
    	                   </tr>
    	                   	<tr >
    	            	        <td>性别</td>
    	                        <td></td>
    	                   </tr>
    	                   <tr >
    	            	       <td>联系方式</td>
    	                       <td></td>
    	                       
    	                       
    	                  </tr>
    	                   <tr>
    	                  <%--
							if(judge==1){
    	        	       --%>
 							  <td><a href="page/background/add_activity.jsp"> [增加活动]</a></td>
    	                       	<td><a href="page/background/delete_activity.jsp"> [删除活动]</a></td></tr>
    	                       <tr>	<td><a href="page/background/alter_activity.jsp"> [修改活动]</a></td>   	        	           		
    	        	       <%--   		
    	        	               }    	                  
    	                   --%>
    	                 
    	                      <td><a href="page/foreground/check_cancel_apply.jsp"> [查看报名情况]</a></td></tr>
    	                  <tr> <td ><a href="#"><input type="hidden" value="[活动管理]" accesskey='<jsp:element name="table"></jsp:element>'/> </a></td></tr>
    	                  
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
        <table >
       		 <thead > <td></td><td><b>爱心活动列表</b></td></thead>
             <tbody>
          
              <s:if test="activityList.size()!=0">
    	    
               <tr><td><b>活动ID</b></td><td align="center"><b>活动名</b></td><td><b>报名</b></td></tr>
         
	          
                   
    	       	<s:iterator value="activityList" var="acList">
    	       	<tr>
    	       	     <td><label><s:property value="%{#acList.getAcId()}" /></label></td>
    	       		 <td> 
    	       			       <a title="查看活动详情" style=" text-decoration: none;" href="<s:url action="loveActivityAction">
    	       			                                                <s:param name="loveActivity.acId" value="%{#acList.getAcId()}" />
    	       			                                                </s:url>">
    	       			           <s:property value="%{#acList.getAcName()}" />
    	       			       </a>
    	       	    </td>
    	       			       <!--<td><input type="hidden" name="loveActivity.acContent" /></td> -->
    	       			       
    	       		<td align="center"><a title="报名活动" href="page/foreground/apply_activity.jsp?v1=<%--=v.get(1).toString()%>&v2=<%=v.get(2).toString()--%>"><label >+</label></a>
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
