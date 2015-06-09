<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> <!--导入Struts 2 标签库-->

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
  <head>
    <base href="<%=basePath%>"/>
    
    <title>校园服务网站</title>
	
	

  <link rel="stylesheet" href="css/lostandfindmain.css" type="text/css"></link>
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
                       				<a href="#">主页 </a>
                       				
                       		</li>
                       		<li>
                       				<a href="#">校园美景</a>
                       				
                       		</li>
                       		<li>
                       				<a href="#">校园美食</a>
                       				
                       		</li>
                       		<li>
                       				<a href="#">失物招领</a>
                       				
                       				
                       		</li>
                       		<li>
                       				<a href="#">爱心活动</a>
                       				
                       		</li>
                       		<li>
                       				<a href="#">修改密码</a>
                       				 
                       		</li>
                       		
                        	<li>
                       				<a href="#">投诉建议</a>
                       				 
                       		</li>                      		
                       		
                       		
                       </ul>
              
                </div>
 <div id="contents">               
        <div id="usermessage"> 
        <div id = "headphoto"><img src="images/head sculpture.jpg"></div>
     <center> <%= session.getAttribute("username") %></center>
        <div id ="service">
             <fieldset > 
       <legend align="center" ><h3>可选服务</h3></legend>
        <form action ="page/foreground/lostandfind/find.jsp" method = "post">
        <center> <input type = "submit" style="width:200px;height:40px;"  value ="拾到物登记" name = "find"/></center>
        </form>
        
         <form action ="page/foreground/lostandfind/lost.jsp" method = "post">
      <center>   <input type = "submit" style="width:200px;height:40px;"  value ="失物登记" name = "lost"/></center>
        </form>
        
         <form action ="page/foreground/lostandfind/searchfind.jsp" method = "post">
     <center>  <input type = "submit" style="width:200px;height:40px;"  value ="拾到物搜寻" name = "searchfind"/></center>
        </form>
        
       <s:form action ="lost!lostshow.action" method = "post">
     <center>  <input type = "submit" style="width:200px;height:40px;"  value ="失物搜寻" name = "searchlost"/></center>
        </s:form>

       <form action ="page/foreground/lostandfind/personal.jsp" method = "post">
     <center>  <input type = "submit" style="width:200px;height:40px;"  value ="个人发布记录" name = "personal"/></center>
        </form>
        </fieldset>
        </div>
        </div><div id="findandlost">
               <br>
           <br>
          <fieldset >
<legend align="center" ><h2>失物登记</h2></legend>
<s:form action ="lost!addlost.action" method="post"> 
<h3>失物名称：<input type = "text" name="lost.lostname" style="width:300px;height:30px;"/> </h3>
<br>
<br>
<h3>失者姓名：<input type = "text" name="lost.lostername" style="width:300px;height:30px;"/> </h3>
<br>
<br>
<h3>失物详细信息：（不超过100字）<input type="text" name="lost.description"  style="width: 100%; height: 100px"/></h3>
<br>
<br>
<h3>失者地址：<input type = "text" name="lost.address" style="width:100%;height:30px;"/> </h3>
<br>
<br>
<h3>失者电话：<input type = "text" name="lost.tel" style="width:300px;height:30px;"/> </h3>
<br>
<br>
<br>
<br><input type="text" name="lost.promulgator" readonly="readonly"  value="<%= session.getAttribute("username") %>"/>
<center> 
<input type = "submit" style="width:200px;height:40px;"  value ="递交信息" name = "submit"/></center></s:form>
  </fieldset>
        
        
        
        
        
        
        
        
        
        
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
