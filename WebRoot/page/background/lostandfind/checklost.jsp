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
    	       <center>  <jsp:include page="/page/background/nav.jsp"/></center>
   <div id="contents">         
        <div id="usermessage"> 

        <img id = "headphoto" src="<s:property value="%{#session.user.imgsrc}"/>">
     <center> <s:property value="#session.user.userName"/></center>
        <div id ="service">
        
           <fieldset > 
       <legend align="center" ><h3>可选服务</h3></legend>
        <s:form action ="manageact!findshow.action" method = "post">
        <center> <input type = "submit" style="width:200px;height:40px;"  value ="拾到物登记管理" /></center>
        </s:form>
        
         <s:form action ="manageact!lostshow.action" method = "post">
      <center>   <input type = "submit" style="width:200px;height:40px;"  value ="失物登记管理" /></center>
        </s:form>
        </fieldset>
        
        </div>
        </div><div id="findandlost">
         <br>
           <br>
 <fieldset >
<legend align="center" ><h2>拾到物详细信息</h2></legend>

<table align="center" border="1">

        
           <tbody>
           <s:iterator value="lostlist" var="lost">
                <tr><td width=100>拾到物名称</td><td width=500><s:property value="#lost.lostname"/></td>   </tr>
                 <tr><td width=100>拾到者姓名</td><td width=500><s:property value="#lost.lostername"/></td>   </tr>
                  <tr><td width=100>拾到物描述</td><td width=500><s:property value="#lost.description"/></td>   </tr>
                   <tr><td width=100>拾到者电话</td><td width=500><s:property value="#lost.tel"/></td>   </tr>
                    <tr><td width=100>拾到者地址</td><td width=500><s:property value="#lost.address"/></td>   </tr>
					<tr><td width=100>发布人</td><td width=500><s:property value="#lost.promulgator"/></td>   </tr>
</s:iterator>

          </tbody>
         </table>
</fieldset>

  <fieldset >
  <legend align="center" ><h2>评论</h2></legend>
  <table align="center" border="2">

        
           <tbody>
           <s:iterator value="lostreplylist" var="lostreply">
                <tr><td width=100>用户</td><td width=400>评论</td> <td width=100></td>  </tr>
                 <tr><td width=100><s:property value="#lostreply.username"/></td>
                 <td width=400><s:property value="#lostreply.reply"/></td>  
                 <td><a href="manageact!deletelostreply.action?replyid=<s:property value="#lostreply.id"/>">删除</a></td> </tr>

</s:iterator>

          </tbody>
         </table>

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
