<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
	  	 	  	 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";	
int num=0;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
  <head>

    <base href="<%=basePath%>"/>
    
    <title>校园服务网站</title>

  <link rel="stylesheet" href="css/main.css" type="text/css"></link>
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/banner.js"></script> 
  <link rel="stylesheet" href="css/banner.css" type="text/css"></link>
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
         <div id="bdys">
		                    	       
			<jsp:include page="/page/background/nav.jsp"/>					                    	
			
		<div class="banner">
		
			  <div id="ifocus">
		  <div id="ifocus_pic">
		    <div style="left: 0px; top: -240px;" id="ifocus_piclist">		 
		<ul >
		 <li><a href="Rtdata!Rt_FoodNetwork.action"><img src="images/restaurant.jpg"></img></a></li>
		 <li><a href="get!getPoints.action"><img src="images/point.gif"></img></a></li>
		 <li><a href="loveActivityAction!toLoveActivity"><img src="images/love.gif"></img></a></li>
		</ul>
		
		    </div>
		    
		    <!--已隐藏-->
		    <div id="ifocus_opdiv" style="visibility:hidden"></div>
		    <div id="ifocus_tx" style="visibility:hidden">
		      <ul>
		        <li class="normal"><a href="Rtdata!Rt_FoodNetwork.action" target="_blank">111111111111</a></li>
		        <li class="current"><a href="get!getPoints.action" target="_blank">222222222332</a></li>
		        <li class="normal"><a href="loveActivityAction!toLoveActivity" target="_blank">333333333333</a></li>
		      </ul>
		    </div>
		     <!--已隐藏-->
		    
		  </div>
		  <div id="ifocus_btn">		
			<ul>
			 <li class="normal"><a href="Rtdata!Rt_FoodNetwork.action"><img src="images/restaurant.jpg" alt="校园美食"></a>
			      <span>
			      <table border="0" cellpadding="0" cellspacing="0" width="165">
			  <tbody><tr>
			    <td height="40" valign="middle" align="center">校园美食</td>
			  </tr>
			</tbody></table>
			</span>
			</li>
			 <li class="current"><a href="get!getPoints.action"><img src="images/point.gif" alt="校园美景"></a>
			      <span>
			<table border="0" cellpadding="0" cellspacing="0" width="165">
				  <tbody><tr>
				    <td height="40" valign="middle" align="center">校园美景</td>
				  </tr>
				  </tbody>		
			</table>
			</span>
			</li>
			 <li class="normal"><a href="loveActivityAction!toLoveActivity"><img src="images/love.gif" alt="爱心活动"></a>
			      <span>
			      <table border="0" cellpadding="0" cellspacing="0" width="165">
			<tbody>
				<tr>
				  <td height="40" valign="middle" align="center">爱心活动</td>
				</tr>
			</tbody></table>
			</span>
			</li>
			</ul>		
	      </div>
		  
		</div>
			</div>
		<div class="main_a">
		  <div class="main_left">
	  	 	 <div class="title_1">
	  	    <h3>爱心活动</h3>
	  	    <span><a href="loveActivityAction!toLoveActivity" target="_self">more+</a></span>
	  	  </div>

			<!------------首页新闻列表标签(可以选择性获取自己的内容)----------------->
		  <div class="news_list">
				<ul>					
				<s:iterator value="#request.loves" id="love" >
				<li>				
				<a href="<s:url action="loveActivityAction!toLookActivity?">
    	       			                                                 <s:param name="loveActivity.acId" value="%{#love.getAcId()}" />
    	       			                                                 <s:param name="loveActivity.acNo" value="%{#love.getAcNo()}" />
    	       			                                                 <s:param name="loveActivity.acName" value="%{#love.getAcName()}" />
    	       			                                                 <s:param name="loveActivity.acTime" value="%{#love.getAcTime()}" />
    	       			                                                 <s:param name="loveActivity.acPlace" value="%{#love.getAcPlace()}" />
    	       			                                                 <s:param name="loveActivity.acContent" value="%{#love.getAcContent()}" />
    	       			                                                 <s:param name="loveActivity.PName" value="%{#love.getPName()}" />
    	       			                                                 <s:param name="loveActivity.PTel" value="%{#lovet.getPTel()}" />    	       			                                                 
    	       			                                                </s:url>">
    	       			                                                 <s:property value="#love.acName"/></a>  	       			                                                
    	       			                                                 <span> <s:property value="#love.acTime"/></span>
				</li>
				</s:iterator>	
						
				</ul>			
			</div>
			<div class="title_1"><h3>校园美食</h3><span><a href="Rtdata!Rt_FoodNetwork.action" target="_self">more+</a></span></div>
			
						<!------------首页新闻列表标签----------------->
			<div class="news_list">
				<ul>
				<s:iterator value="#request.relist" id="restaurant">
				
			 		<%++num;%>		
					<li><a href="getdata!Rt_Restaurant?num=<s:property value = "#restaurant.num"/>"><s:property value="#restaurant.Rname"/></a><span><s:date name="#restaurant.RDate" format = "yyyy-MM-dd" /></span></li>				

				</s:iterator>

			
				</ul>  
			</div>		
		  </div>
			<div class="main_left m_l_30">
			  	<div class="title_2"><h3>失物招领</h3><span><a href="lost!lostandfind.action?rid=<s:property value="#session.user.role.rid"/>" target="_self">more+</a></span></div>
				<!------------首页新闻列表标签----------------->
				<div class="news_list">
				<ul>
								
				<s:iterator value="#request.lostlist" id="lost" >
				<li>				
				<a href="lost!lostcheck.action?lostid=<s:property value="#lost.id"/>&rid=<s:property value="#session.user.role.rid"/>"><s:property value="#lost.lostname"/></a>
				 <span>2015-07-03</span>
				</li>
				</s:iterator>	
				<s:iterator value="#request.findlist" id="find" >
				<li>				
				<a href="find!findcheck.action?findid=<s:property value="#find.id"/>&rid=<s:property value="#session.user.role.rid"/>"><s:property value="#find.findname"/></a>
				<span>2015-07-03</span>
				</li>
				</s:iterator>	

				
				</ul>
			</div>	
			<div class="title_2"><h3>校园美景</h3><span><a href="get!getPoints.action" target="_self">more+</a></span></div>
						<!------------首页新闻列表标签----------------->
			<div class="news_list">
				<ul>
				<s:iterator value="#request.pointlist" id="point" >
				<li><a href="search!getSPoint.action?pid=<s:property value="#point.pid"/>" ><s:property value="#point.pname"/></a><span>2015-06-09</span></li>
				</s:iterator>
				
				</ul>
			</div>
			</div>					
		<div class="main_right">
			<div onmouseover="abc.style.display='block';" onmouseout="abc.style.display='none';">
						<div class="title_1"><h3>学院设置</h3></div>
						<div class="main_right_nav">
							<ul>
								<li><a href="http://xinxi.xy.zhbit.com/" target="new">信息学院</a></li>
								<li><a href="http://computer.xy.zhbit.com/" target="new">计算机学院</a></li>
								<li><a href="http://xueyuan.zhbit.com/jixie/" target="new">机械与车辆学院</a></li>
								<li><a href="http://huagong.xy.zhbit.com/" target="new">化工与材料学院</a></li>
								<li><a href="http://hangkong.xy.zhbit.com/" target="new">航空学院</a></li>
								<li><a href="http://shuli.xy.zhbit.com/slxy/" target="new">数理与土木工程学院</a></li>
								<li><a href="http://shang.xy.zhbit.com/" target="new">商学院</a></li>
								<li><a href="http://af.xy.zhbit.com/" target="new">会计与金融学院</a></li>
								<li><a href="http://waiyu.xy.zhbit.com/" target="new">外国语学院</a></li>
								<li><a href="http://wenfa.xy.zhbit.com/" target="new">文法学院</a></li>
								<li><a href="http://xueyuan.zhbit.com/yishu/" target="new">设计与艺术学院</a></li>
								<li><a href="http://www.bryant.edu/" target="new">布莱恩特学院</a></li>
								<li><a href="http://sz.zhbit.com/" target="new">思政部</a></li>
								<li><a href="http://tiyu.xy.zhbit.com/" target="new">体育部</a></li>
							</ul>
						</div>			
		   </div>
	    </div>         
	  </div>
	</div>

         <div id="footer">
			<jsp:include page="/page/background/footer.jsp" />
         </div>
</div>
  </body>		
</html>
