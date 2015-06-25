
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
    	 <center> <jsp:include page="/page/background/nav.jsp"/></center>
 <div id="contents">               
        <div id="usermessage"> 
        <img id = "headphoto" src="<s:property value="%{#session.user.imgsrc}"/>">
     <center>  <s:property value="#session.user.userName"/></center>
        <div id ="service">
           <fieldset > 
       <legend align="center" ><h3>可选服务</h3></legend>
        <form action ="page/foreground/lostandfind/find.jsp" method = "post">
        <center> <input type = "submit" style="width:200px;height:40px;"  value ="拾到物登记" name = "find"/></center>
        </form>
        
         <form action ="page/foreground/lostandfind/lost.jsp" method = "post">
      <center>   <input type = "submit" style="width:200px;height:40px;"  value ="失物登记" name = "lost"/></center>
        </form>
        
         <s:form action ="find!findshow.action" method = "post">
     <center>  <input type = "submit" style="width:200px;height:40px;"  value ="拾到物搜寻" name = "searchfind"/></center>
        </s:form>
        
        <s:form action ="lost!lostshow.action" method = "post">
     <center>  <input type = "submit" style="width:200px;height:40px;"  value ="失物搜寻" name = "searchlost"/></center>
        </s:form>

       <s:form action ="lost!allshow.action" method = "post">
     <center>  <input type = "submit" style="width:200px;height:40px;"  value ="个人发布记录" name = "personal"/></center>
     <s:hidden name="username" value="%{#session.user.userName}"/>
        </s:form>
        </fieldset>
        </div>
        </div><div id="findandlost">
               <br>
           <br>
          <fieldset >
<legend align="center" ><h2>拾到物登记</h2></legend>
<s:form action ="find!findrevise2.action" method="post"> 
	<s:iterator value="findlist" var="find">
<h3>拾到物名称：<input type = "text" name="find.findname" style="width:300px;height:30px;" value="<s:property value="#find.findname"/>"/> </h3>
<br>
<br>
<h3>拾到者姓名：<input type = "text" name="find.findername" style="width:300px;height:30px;" value="<s:property value="#find.findername"/>"/> </h3>
<br>
<br>
<h3>拾到物详细信息：（不超过100字）<input type="text" name="find.description"  style="width: 100%; height: 100px" value="<s:property value="#find.description"/>"/></h3>
<br>
<br>
<h3>拾到者地址：<input type = "text" name="find.address" style="width:100%;height:30px;" value="<s:property value="#find.address"/>"/> </h3>
<br>
<br>
<h3>拾到者电话：<input type = "text" name="find.tel" style="width:300px;height:30px;" value="<s:property value="#find.tel"/>"/> </h3>
<br>
<br>
<br>
<br><s:hidden name="find.promulgator" value="%{#session.user.userName}"/>
<s:hidden name="find.id" value="%{#session.findid}"/>
<center> 
<input type = "submit" style="width:200px;height:40px;"  value ="递交信息" name = "submit"/></center></s:iterator></s:form>
  </fieldset>
        
        
        
        
        
        
        
        
        
        
        </div>    
                
                
                
                
         </div>       
     				
         </div>
         
            
         
         <div id="footer">
<center><jsp:include page="/page/background/footer.jsp" /></center>
         </div>
  </div>
  </body>
</html>
