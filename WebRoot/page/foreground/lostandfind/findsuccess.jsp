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
  <h3>拾到者姓名：<s:property value="find.findername"/><br></h3>
    <h3>拾到物名称： <s:property value="find.findname" /><br></h3>
        <h3>拾到物详细信息：  <s:property value="find.description" /><br></h3>
              <h3>拾到者地址： <s:property value="find.address" /><br></h3>
                   <h3>拾到者电话： <s:property value="find.tel" /><br></h3>
                
    	</fieldset>
  </body>
</html>