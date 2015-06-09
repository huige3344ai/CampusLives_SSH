<%@page import="org.hibernate.Interceptor"%>
<%@ page language="java" import="java.util.*,com.zhbit.domain.*,com.zhbit.services.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
  <head>
    <base href="<%=basePath%>"/>    
    <title>农场论坛</title>
		<script type="text/javascript">
			  		function validation()
			  		{
			  		var context = document.getElementById("answer_input");
			  	
					 if(context.value.length==0){
			  				tissue.innerHTML="回复内容不能为空";	  			
			  				return false;
			  			}else{
			  		return true;
			  			}
					
			  		}
			  	
		</script>
  <link rel="stylesheet" href="<%=basePath%>/css/suggest_main.css" type="text/css"></link>
	  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  </head>

  <body>
  <div id="container" >
         <div id="header">         	        	
         	<div class="header_title" >
         	<strong><span>投诉和建议</span></strong>
         	</div>         	
         </div> 
         
		         <div id="bys">
 
		           <div class="nav">
				                 <div class=main_nav>                
			                	<div class="suggest_nav_l">
			                		<div class="suggest_nav_r">
			                		<a  href="<%=basePath%>/page/foreground/main.jsp"><h3>首页</h3></a>
			                		</div>
			                	</div>
			                </div>	  
		                       
			                <div class=suggest_nav>                
			                	<div class="suggest_nav_l">
			                		<div class="suggest_nav_r">
			                			<a  href="<%=basePath%>/page/foreground/send_note.jsp"><h3>发表</h3></a>
			                		</div>
			                	</div>
			                </div>	           
		 				<div class = "user">                   
                    	                		
		          	  </div>		           
		           </div>               
	
                
       
                <div id ="details">		
                		<s:iterator value="#session.note">
                		<div class=title>
						<h3 >标题：<s:property value="title"/></h3>                		
                		</div>			
                		<div class=contents>
						<h3 >内容：<s:property value="content"/></h3>                		
                		</div>	
                		<div class=note_time>
						<h3 >发表时间：<s:property value="ntime"/></h3>                		
                		</div>
                		</s:iterator>
                			<table class="answer" >		
					<s:iterator value="#session.answers">
                				<tr>
                				<td>楼猪：<s:property value="user.userName"/></td>
                				<td>回复时间：<s:property value="ftime"/></td>               				
                				</tr>
                				<tr style="line-height:44px;">
                				<td colspan="2"  class=td_answer>
                					<s:property value="followcontent"/>
                				</td>                				
                				</tr> 
              		</s:iterator>		
                			</table>
               			
		               <div class="your_answer">
		               <%
		        java.util.Date currentTime = new java.util.Date();//得到当前系统时间  
				java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				String date = formatter.format(currentTime);	
	                   %>
	                   		
			                <form action="noteManager!sendAnswer.action" method="post">
			                <h4>回复内容：</h4>                
			                 <textarea  class="answer_input"  name="answer.followcontent" id="answer_input"></textarea>
			                 <input type="hidden" name="answer.ftime" value="<%=date%>"/>
			                 <input class="answer_sumbit_button" type="submit" value="提交" onclick="return validation()"/>	
			                </form>		
		                </div> 
                 <div class="tissue" style="height:44px; width:150px; ">
               				<ul>
               					<li id="tissue_note" ></li>
               				</ul>
				</div> 
                
                		                									
             </div> 
             
                <div class="fix-layout">    
                <div class="gb-operation-area" id="_returnTop_layout_inner">
                   	<a href="javascript:scroll(0,0)" id="goto_top_btn" class="gb-operation-button return-top">           
                    <i class="gb-operation-icon" title="返回顶部"></i>            
                    <span class="gb-operation-text">顶部</span>        
                    </a>    
                    
                    <a style="display: block;" id="site_hot_btn" class="gb-operation-button hot-msg" href="page/foreground/suggest_main.jsp">
                    <i class="gb-operation-icon"></i>
                    <span class="gb-operation-text">返还</span>
                    </a>
                    
                    </div>
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
