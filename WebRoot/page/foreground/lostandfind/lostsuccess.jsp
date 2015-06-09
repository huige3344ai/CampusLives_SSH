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
<legend align="center" ><h1>递交成功</h1></legend>
  <h3>失者姓名：<s:property value="lost.lostername"/><br></h3>
    <h3>失物名称： <s:property value="lost.lostname" /><br></h3>
        <h3>失物详细信息：  <s:property value="lost.description" /><br></h3>
              <h3>失者地址： <s:property value="lost.address" /><br></h3>
                   <h3>失者电话： <s:property value="lost.tel" /><br></h3>
                
    	</fieldset>
  </body>
</html>
