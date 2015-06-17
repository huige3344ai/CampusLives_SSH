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
            
       

            <h2>Store information</h2>
           <table class="zebra">
    <thead>
    <tr>
        <th>#</th>        
        <th>The store name</th>
        <th>Creation date</th>
         <th>Average score</th>
        <th> Editor</th>
        <th>Delete</th>
        <th>Details</th>
        

    </tr>
    </thead>
    <tfoot>
    <tr>
        <td>&nbsp;</td>        
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    </tfoot>    
    <s:iterator value = "relist" id = "re">
    <tr>
        <td>1</td>        
        <td><s:property value = "#re.rname"/></td>
        <td><s:date name="#re.RDate" format = "yyyy-MM-dd HH:mm"/></td>
        <td><s:property value = "#re.price"/></td>
        <td><a href= "#">编辑</a></td>
        <td><a href= "getdata!Delete_Messages.action?num=<s:property value = "#re.num"/>">删除</a></td>
        <td><a href= "#">详情</a></td>
    </tr>        
 	</s:iterator>
</table>

<br>
         

        </div>

    </body>
</html>
