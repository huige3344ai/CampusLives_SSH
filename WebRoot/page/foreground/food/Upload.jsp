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
                <a href="page/foreground/main.jsp">Back to The home page</a>
            </p>
            <h1>Personal center</h1>
            
            <h2>Create a new store</h2>
   

			<s:form  action = "getdata" method = "post" theme="simple" namespace="/" name = "myform" enctype="multipart/form-data">
         	<img id="imghead" width=200 height=200 border=0 src="images/food/Upload_default.png"> <br>
            <s:file name = "file"></s:file><br><br>
          	店名：<s:textfield name="re.rname"></s:textfield><br><br>       	
          	支持货币:&nbsp;&nbsp;<s:select list = "{'￥￥','$$','￥$' }" name ="re.currency" value = "re.currency"/><br><br>	
			菜市风格：<s:select list = "{'中国','日本','法国','澳洲','美国','巴西','韩国'}" name ="re.style" /><br><br>
			服务时段：<s:select list = "{'早餐','午餐','晚餐','全天'}" name ="re.servicetime"/><br><br>
			餐厅性质：<s:select list = "{'自助餐','餐厅','吧'}" name ="re.character_"/><br><br>	
          	招牌菜式：<s:textfield name="re.dishes_"></s:textfield><br><br>
          	
          	<s:submit method = "save_Restaurant"></s:submit>
        <!--  <a class="button white " href="">Submit</a> -->
         </s:form>
         		<p align="center" style="color:red;"><s:property value="#request.nopic_msg"/></p>				
        </div>

    </body>
</html>
