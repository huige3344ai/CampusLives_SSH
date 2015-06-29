<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> <!--导入Struts 2 标签库-->
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
    
    <title>My JSP 'lostsuccess.jsp' starting page</title>
    


  </head>
  
  <body>
   <fieldset >
<legend align="center" ><h1>删除成功</h1></legend>
  <h3>请按“返回”键返回界面</h3>
         <s:form action ="manage!lostshow.action" method = "post">
      <center>   <input type = "submit" style="width:200px;height:40px;"  value ="返回页面"/></center>
        </s:form>
    	</fieldset>
  </body>
</html>
