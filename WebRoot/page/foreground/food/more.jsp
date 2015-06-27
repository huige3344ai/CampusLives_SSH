
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
  <link rel="stylesheet" href="css/button.css" type="text/css"></link>
  
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

 
         	
    	</div>   
    	        <div id="nav_food">
    				<jsp:include page="/page/background/nav.jsp"/>  			
    			</div>
    	
    	<div id="header">
    	
    	
    	
    	<img alt="head1" src="images/food/image.png">
    	
    	
    	<h2 style="float:left;margin-top:20px"><s:property value = "re.rname"/> </h2><br><br><br><br><br>
    	
    	<div class="fivestars" id="fivestars"><div class="autostars" id="autostars" style="width: <s:property value = "re.price*26"/>px">&nbsp;</div></div>
 
    	<br><br>
    	<p style="color:green;font-size:16px;float:left">在北理10家餐馆中排<b><s:property value = "px"/><%-- <%=num %> --%></b></p><br><br>
    	
    	<p style="font-size:14px;float:left">¥¥ | 美国, 晚餐, 吧, 炸鱼薯条 </p><br>
        </div>
        		
				<div style= "width:1045px; margin:0 auto;clear:both;overflow:auto;">
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
									<s:if test = "totalPages<=0" >
									<tr style = "height:200px" >
									<td>
									<img  style = "width:100%;height:100%"src="images/food/comments.png">
									</td>
									</tr>
									</s:if>

									<s:iterator value = "#session.ctlist" id = "ct">
										
										<s:action name="getdata!returnUser">
										<s:param name = "commenter" value = "%{#ct.user.id}"></s:param>
								
										</s:action>
										<s:iterator value = "#request.u" id = "u"> 
									<tr style="vertical-align:top" >
									<td style = "width:130px;background:#F3F3F3">
									 <img src="<s:property value = "#u.imgsrc"/>" style = "width:100%"></img>
									 <p class = "p">用户名:<FONT color=#006400><s:property value = "#u.userName"/></FONT></p>
									 
									 <p class = "p">权限:<FONT color=#006400><s:property value = "rname"/></FONT></p>

									 
									
									
									 <p class = "p">发表日期:<br><FONT color=#006400>
									 <s:date name="#ct.CDate" format = "MM-dd HH:mm"/></FONT>
									 </p>
									 </td>
									<td>
									<s:property value = "#ct.comment"/></td>
									
									</tr>
								 </s:iterator>
								</s:iterator>
								


							</table>
							<div style = "width:762px;background:#f3f3f3;text-align:right; padding:3px;">
									<s:if test="pageNo>1">
									<a class="button white small" href="getdata!ChangePage.action?pageNo=1">首页</a>
									<a class="button white small" href="getdata!ChangePage.action?pageNo=<s:property value = "pageNo-1"/>">上一页</a>
									</s:if>
									<s:if test="pageNo<totalPages">
									<a class="button white small" href="getdata!ChangePage.action?pageNo=<s:property value = "pageNo+1"/>">下一页</a>
									<a class="button white small"href="getdata!ChangePage.action?pageNo=<s:property value = "totalPages"/>">末页</a>
									</s:if>
									<s:if test = "totalPages>0" >
									(<s:property value = "pageNo"/>/<s:property value = "totalPages"/>)
									</s:if>
		
							</div>
							
        	        		<form action="getdata!savecomment.action" method="post" class="basic-grey" namespace="/" id = "myform_food" >
							<h1>Contact Form
							<span>Please fill all the texts in the fields.</span>
							</h1>
						
							
							<div class="grade_warp">
							
								<div class="User_ratings User_grade" id="div_fraction0">
									<div class="ratings_title01"><p><span>评分</span>-你觉得这个餐厅在各个方面上优秀吗？<i>分数越高表示越优秀。</i></p></div>
									<div class="ratings_bars">
										<span id="title0">0</span> 
										<span class="bars_10">0</span>
										<input type="hidden" name="score" id="aaa"/>
										
										<div class="scale" id="bar0">
											<div></div>
											<span id="btn0"></span>
										</div>
										<span class="bars_10">5</span>
									</div>
								</div>
							</div>	
							
							<label>
							<span>Message :</span>
							<textarea id="message" name="com" placeholder="Your Message to Us"></textarea>
							</label>
							
							<label>
							<span>&nbsp;</span>
							<input type="submit" class="button" value="Send" />
							</label>
							</form>
        	        		
        	        		

        	        		
        	        	</div>
            				
            				
            		</div>		
        	
			</div>
         
           
        </div>
         
         	<div class="footer_title">
         	<p>Copyright 2014 ZFSOFT All Rights Reserved. 标准版V1.0.0E-mail：888888@gmail.com</p>
			<p>地址：广东省珠海市唐家湾金凤路6号 北京理工大学珠海学院 联系电话：13800138000</p>
         	</div>
         </div>
    <script type="text/javascript">
scale = function (btn, bar, title) {
	this.btn = document.getElementById(btn);
	this.bar = document.getElementById(bar);
	this.aaa = document.getElementById("aaa");
	this.title = document.getElementById(title);
	this.step = this.bar.getElementsByTagName("DIV")[0];
	this.init();
};
scale.prototype = {
	init: function () {
		var f = this, g = document, m = Math;
		f.btn.onmousedown = function (e) {
			var x = (e || b.event).clientX;
			var l = this.offsetLeft;
			var max = f.bar.offsetWidth - this.offsetWidth;
			g.onmousemove = function (e) {
				var thisX = (e || b.event).clientX;
				var to = m.min(max, m.max(-2, l + (thisX - x)));
				f.btn.style.left = to + 'px';
				f.ondrag(m.round(m.max(0, to / max) * 100), to);
			
			};
			g.onmouseup = new Function('this.onmousemove=null');
		};
	},
	ondrag: function (pos, x) {
		this.step.style.width = Math.max(0, x) + 'px';
		this.title.innerHTML = pos / 20 + '';
		this.aaa.value = pos / 20 + '';
		
	}
}
new scale('btn0', 'bar0', 'title0');

</script>
  </body>
</html>
