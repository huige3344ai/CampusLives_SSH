<%@page import="javax.annotation.Resource"%>
<%@ page language="java" import="java.util.*,com.zhbit.domain.*,com.zhbit.dao.*,com.zhbit.services.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
  <head>
     <base href="<%=basePath%>"/>

    <title>投诉和建议</title>

	<script type="text/javascript" src="js/jquery.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
	<link rel="stylesheet" href="css/suggest_main.css" type="text/css"></link>
  </head>
  
  <body id="page-top">
  

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
			                		<a  href="page/foreground/main.jsp"><h3>首页</h3></a>
			                		</div>
			                	</div>
			                </div>	  
		                       
			                <div class=suggest_nav>                
			                	<div class="suggest_nav_l">
			                		<div class="suggest_nav_r">
			                			<a  href="page/foreground/send_note.jsp"><h3>发表</h3></a>
			                		</div>
			                	</div>
			                </div>	           
		 				<div class = user>                   
		
		          	  </div>		           
		           </div>               
	
                
               
                <div id ="content">
                	<ul class="note_send">
                		<s:iterator value="notes" var="note">	                		
	                	<li>
	                 	<form action="noteManager!noteGo.action" class="conten_form" method="post" >
	                 	<s:hidden  name="nid" value="%{nid}"></s:hidden>
	                 	<button type ="submit"  class="note_button">
	                 	
	                	<table class=note_table>
	                		<tr>
	                			<td class=content_title>
	                		 <h3> 标题：<s:property value="title"/>  </h3>     	
	                			</td>
	                			<td class=content_note_user>
	                		楼猪: <s:property value="user.userName"/>
	                			</td>
	                			<td class=content_note_time>
	                	发表时间:  <s:property value="ntime"/>			
	                			</td>	                				                			
	                		</tr>	                	
	                	</table>	
	                	</button>	
	             		</form> 
	             		</li> 
         		</s:iterator>
                	</ul>
                   <div class="page">
		               <div class="pageno">
		             当前第<s:property value="pageNo"/> /<s:property value="pageCount"/>页 
		               </div> 
		               <div class="page_a">
   	
		               <div class="next_a">
		               <a href="noteManager!execute.action?pageNo=<s:property value="pageNo+1"/>">
		               		<img src="images/nav/page_next.gif"></img>
		               </a>		
		               </div>
		               <div class="pre_a">
							<a href="noteManager!execute.action?pageNo=<s:property value="pageNo-1"/>">
								<img src="images/nav/page_pre.gif"></img>
							</a>	               
		               </div> 		                   	
		               </div>  	
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