
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
   <base href="<%=basePath%>"/>

    
    <title>美食推介</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  <link rel="stylesheet" href="css/text.css" type="text/css"></link>
  <script type="text/javascript" src="js/main_scrol.js"></script>
	<style>
	
.fivestars,.fivestars div{background:transparent url(commstar.gif) repeat-x scroll left bottom;width:130px;float:left}
.fivestars{padding:0; position:relative; line-height:28px;display:inline-block;}
.fivestars div{background-position:bottom center; text-indent:-9999px;}
.fivestars div{background-position:left top; width:0px;}
.p{
	line-height:1.2;
	margin-top:5px;
}


</style>

  
  <body>
  <div id="continer">
  <div class="header_nav">
    			<div class="header_bg">
    	    <div class="header_band" >
         	<span>北京理工大学珠海学院</span>
         	</div>        	
         	<div class="header_title" >
         	<strong><span>校园生活服务网站</span></strong>
         	</div> 
    			</div>
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
    	
    	<div id="header">
    	
    	
    	
    	<img alt="head1" src="images/food/image.png">
    	
    	
    	<h2 style="float:left;margin-top:20px"><s:property value = "re.rname"/> </h2><br><br><br><br><br>
    	
    	<div class="fivestars" id="fivestars"><div class="autostars" id="autostars" style="width: <s:property value = "re.price*26"/>px">&nbsp;</div></div>
 
    	<br><br>
    	<p style="color:green;font-size:16px;float:left">在北理10家餐馆中排<b><s:property value = "px"/><%-- <%=num %> --%></b></p><br><br>
    	
    	<p style="font-size:14px;float:left">¥¥ | 美国, 晚餐, 吧, 炸鱼薯条 </p><br>
        </div>
				<div id ="part1" style= "background:white">
        	        	<hr style="height:10px;border:none;border-top:10px groove skyblue;" />
        	        	
					<div id="scroll_list" >
                    	
                        <div class="scroll_wrap">
                        	<div class="scroll_wrap_l">
                            	<div id="run1" class="scroll_wrap_r">
                                	<a class="prev" href="javascript:;"></a>
                                	<a class="next" href="javascript:;"></a>
                                    <div class="list_wrap">
                                    	<ul style="width: 1230px; left: -615px;">
                                        	<li>
                                            	<a href="#"><img src="images/food/scroll_pic/1.jpg" alt=""></a>
                                                <p>Elegant MP3 player skin PSD download</p>
                                            </li>
                                        	<li>
                                            	<a href="#"><img src="images/food/scroll_pic/2.jpg" alt=""></a>
                                                <p>Download shopping bag &amp; icons (PSD &amp; PNG)</p>
                                            </li>
                                        	<li>
                                            	<a href="#"><img src="images/food/scroll_pic/3.jpg" alt=""></a>
                                                <p>High resolution abstract bokeh background</p>
                                            </li>
                                        
                                        	<li>
                                            	<a href="#"><img src="images/food/scroll_pic/1.jpg" alt=""></a>
                                                <p>Elegant MP3 player skin PSD download</p>
                                            </li>
                                        	<li>
                                            	<a href="#"><img src="images/food/scroll_pic/3.jpg" alt=""></a>
                                                <p>Download shopping bag &amp; icons (PSD &amp; PNG)</p>
                                            </li>
                                        	<li>
                                            	<a href="#"><img src="images/food/scroll_pic/2.jpg" alt=""></a>
                                                <p>High resolution abstract bokeh background</p>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
        	        	
        	        	<div  style = "float:right;border:1px solid #ccc; width:270px; height:270px;border-radius:10px; position:aboslute;
     marigin-top:100px;   	        	
        	        	">
        	        	<img src="<s:property value = "re.images"/>" width="270px"  height="240px" style="margin-top:15px; margin-bottom: auto;"></img> 
        	        	
        	        	</div>
        	        	
        	        	
        	        	 <div class="messager" style = "float:left;border:1px solid #ccc; width:770px;border-radius:10px">
        	        		
							
							
							<TABLE align=center border=0  bordercolor=#cccccc cellSpacing=0 cellPadding=16  rules="rows"
									style="width:770px;"
								>


									<s:iterator value = "ctlist" id = "ct">
								
								
									<tr style="vertical-align:top" >
									<td style = "width:130px;background:#F3F3F3">
									 <img src="images/head_pic/default.jpeg" style = "width:100%"></img>
									 <p class = "p">用户名:</p>
									 <p class = "p">权限:</p>
									 <p class = "p">发表日期:</p>
									 </td>
									<td>
									<s:property value = "comment"/></td>
									
									</tr>
									
								</s:iterator>



							</table>
        	        		
        	        		
        	        		

        	        		
        	        	</div>
            
        	
			</div>
         
           
        </div>
         <div id="footer">
         	<div class="footer_title">
         	<p>Copyright 2014 ZFSOFT All Rights Reserved. 标准版V1.0.0E-mail：888888@gmail.com</p>
			<p>地址：广东省珠海市唐家湾金凤路6号 北京理工大学珠海学院 联系电话：13800138000</p>
         	</div>
         </div>
    
  </body>
</html>
