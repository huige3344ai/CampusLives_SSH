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
    	         <jsp:include page="/page/background/nav.jsp"/>  
    	            <div id="contents">     
        <div id="usermessage"> 
        <div id = "headphoto"><img src="images/head sculpture.jpg"></div>
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
<legend align="center" ><h2>失物详细信息</h2></legend>

<table align="center" border="1">

        
           <tbody>
           <s:iterator value="lostlist" var="lost">
                <tr><td width=100>失物名称</td><td width=500><s:property value="#lost.lostname"/></td>   </tr>
                 <tr><td width=100>失者姓名</td><td width=500><s:property value="#lost.lostername"/></td>   </tr>
                  <tr><td width=100>失物描述</td><td width=500><s:property value="#lost.description"/></td>   </tr>
                   <tr><td width=100>失者电话</td><td width=500><s:property value="#lost.tel"/></td>   </tr>
                    <tr><td width=100>失者地址</td><td width=500><s:property value="#lost.address"/></td>   </tr>
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
                <tr><td width=100>用户</td><td width=500>评论</td>   </tr>
                 <tr><td width=100><s:property value="#lostreply.username"/></td><td width=500><s:property value="#lostreply.reply"/></td>   </tr>

</s:iterator>

          </tbody>
         </table>

  </fieldset>
  
  
  
    <fieldset >
    <legend align="center" ><h2>用户评论</h2></legend>
    
      <s:form action="lost" method="post" theme="simple">
     <table align="center" border="3">
    <tbody>

                 <tr><td width=100>用户</td><td width=500>评论</td></tr>
         	      <s:hidden name="lostreply.username" value="%{#session.user.userName}"/>
         	       <s:hidden name="lostreply.lostid" value="%{#session.lostid}"/>
                 <tr><td width=100><s:property value="#session.user.userName"/></td>
          
                 <td width=500><input type = "text" name="lostreply.reply"  style="width: 100%; height: 100px"   /></td>
                 
                
             	  </tr>
          
   
    </tbody>
    </table>
    <center> <input type = "submit" style="width:200px;height:40px;"  value ="发表评论" name = "submit"/></center>
    </s:form>
    </fieldset>
  
        
        
        
        
        
        
        </div>    
                
                
                
                
         </div>       
     				
         </div>
         
            
         
         <div id="footer">
<jsp:include page="/page/background/footer.jsp" />
         </div>
  </div>
  </body>
</html>
