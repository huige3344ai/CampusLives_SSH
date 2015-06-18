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
        
       <form action ="page/foreground/lostandfind/searchlost.jsp" method = "post">
     <center>  <input type = "submit" style="width:200px;height:40px;"  value ="失物搜寻" name = "searchlost"/></center>
        </form>

       <form action ="page/foreground/lostandfind/personal.jsp" method = "post">
     <center>  <input type = "submit" style="width:200px;height:40px;"  value ="个人发布记录" name = "personal"/></center>
        </form>
        </fieldset>
        </div>
        </div><div id="findandlost">
         <br>
           <br>
          <fieldset >
<legend align="center" ><h2>拾到物登记记录</h2></legend>

<table align="center" border="1">

        
           <tbody>
                <tr><td width=40>编号</td><td width=100>拾到物名称</td>   <td width=260>物品描述</td>   <td width=100>发布者</td><td width=100></td></tr> 
	<s:iterator value="findlist" var="find">
		
	<s:form action="" theme="simple">
	

	<tr>
	<td><s:textfield name="findid" label="编号" style="width:40px;" value="%{#find.id}" readonly="true"/></td>
	
	<td ><s:property value="#find.findname"/></td>
	<td ><s:property value="#find.description"/></td>
	<td ><s:property value="#find.promulgator"/></td>
	<td><s:submit value="查看回复"/></td></tr>
	
</s:form> 

</s:iterator>

          </tbody>
         </table>

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
