<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
		
  <link rel="stylesheet" href="css/suggest_main.css" type="text/css"></link>
	  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	  <script type="text/javascript">
	  		function validation()
	  		{
	  		var title = document.getElementById("title");
	  		var context = document.getElementById("context");
	  		var tissue = document.getElementById("tissue_note");	  		
	  			if(title.value.length==0){
	  		
	  				tissue.innerHTML="主题不能为空";
	  				
	  				return false;
	  			}else if(context.value.length==0){
	  				tissue.innerHTML="内容不能为空";	  			
	  				return false;
	  			}else{
	  			return true;
	  			}
			
	  		}
	  	
	  </script>
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
		 				<div class = "user">                   
                   	                		
		          	  </div>		           
		           </div>               
	
                
               
                <div id ="suggest">

                <form action="sendNote!sendNote.action" method="post" name="note_form" >
                <div class="your_name">
                <label class="name_label">意见</label><br/>
                
                <input  class="your_name_input" type="text" name="note.title" id="title"></input>
                </div>
               
                <div class="your_suggest">
                <label class="suggest_label">内容</label>
                 <textarea  class="suggest_input"  name="note.content" id="context"></textarea>
                </div>		
                	<input class="sumbit_button" type="submit" value="提交" style="cursor:auto" onclick="return validation()" />          	
                </form>
               
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
