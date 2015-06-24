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
        <div id = "headphoto"><img src="<s:property value="%{#session.user.imgsrc}"/>"; width:150px; height:150px></div>
     <center> <s:property value="#session.user.userName"/></center>
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
<legend align="center" ><h2>个人登记管理</h2></legend>

<table align="center" border="1">

        
           <tbody>
                <tr><td width=100>拾到物名称</td>   <td width=300>物品描述</td>   <td width=100></td><td width=100></td></tr> 
	<s:iterator value="findlist" var="find">
		
	<s:form action="" method="post" theme="simple">
	
	<tr>
	
	<td><s:property value="#find.findname"/></td>
	<td><a href="find!findcheck.action?findid=<s:property value="#find.id"/>"><s:property value="#find.description"/></a></td>
	<td><a href="find!findrevise.action?findid=<s:property value="#find.id"/>">修改</a></td>
	<td><a href="find!deletefind.action?findid=<s:property value="#find.id"/>">删除</a></td></tr>
	
</s:form> 

</s:iterator>

          </tbody>
         </table>
         
         
         <table align="center" border="2">

        
           <tbody>
                <tr><td width=100>失物名称</td>   <td width=300>物品描述</td>   <td width=100></td><td width=100></td></tr> 
	<s:iterator value="lostlist" var="lost">
		
	<s:form action="" method="post" theme="simple">
	
	<tr>
	
	<td><s:property value="#lost.lostname"/></td>
	<td><a href="lost!lostcheck.action?lostid=<s:property value="#lost.id"/>"><s:property value="#lost.description"/></a></td>
	<td><a href="lost!lostrevise.action?lostid=<s:property value="#lost.id"/>">修改</a></td>
	<td><a href="lost!deletelost.action?lostid=<s:property value="#lost.id"/>">删除</a></td></tr>
	
</s:form> 

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
