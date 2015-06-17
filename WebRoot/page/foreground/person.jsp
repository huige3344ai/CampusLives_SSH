<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Business_nformation_center</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <link rel="stylesheet" href="css/Business_nformation_center.css" type="text/css"></link></head>
  
 <body>
        <div id="content">
            <a class="back" href=""></a>
            <span class="scroll"></span>
            <p class="head">
                Campus life services
                <a href="#">Back to The home page</a>
            </p>
            <h1>Personal center</h1>
            <h2>个人信息</h2>
           <table class="zebra">
    <thead>
    <tr>       
        <th>用户名</th>
        <th>年龄</th>
        <th>注册日期</th>        
        <th>邮箱</th>
        <s:if test="#session.user.role.rid==3">
        <th>我的店铺</th> 
        </s:if>      
    </tr>
    </thead>
    <tfoot>
    <tr>
        <td><s:property value="%{#session.user.userName}"></s:property></td>
        <td><s:property value="%{#session.user.age}"></s:property></td> 
        <td><s:date name="#session.user.birthday" format="yyyy-MM-dd" ></s:date></td>               
        <td><s:property value="%{#session.user.email}"></s:property></td>
        <s:if test="#session.user.role.rid==3">
        <td><a href="#">淘宝店铺</a></td> 
        </s:if>  


    </tr>
    </tfoot>    

</table>

<br>
         

        </div>

    </body>
</html>
