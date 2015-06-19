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
	
	

		<link rel="stylesheet" href="css/point_main.css" type="text/css"></link>
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
		<center>
			<jsp:include page="/page/background/nav.jsp"/>
			<div id="contents">               
				<div id ="leftbody">
					<fieldset>
						<legend align="center" >景观导航选项</legend>
						<s:form action="/add!getPoints.action" method= "post" >
     						<center>  
     							<s:submit value=" 景观一览 " style="width:200px;height:40px;"  />
							</center>
						</s:form>
						<form action ="page/foreground/point/point.jsp" method = "post">
     						<center>  
     							<input type = "submit" style="width:200px;height:40px;"  value ="景观添加" />
							</center>
						</form>
					</fieldset>
				</div>   
                <div id ="point">
                	<table width="auto" border="1" style="border-collapse: collapse; border-color: blue;">
                		<tr>
                			<td width="80px">景观编号
                			</td>
                			<td width="80px">景观名称
                			</td>
                			<td width="280px">景观简介
                			</td>
                			<td width="140px">景观名称图片地址
                			</td>
                			<td width="140px">景观名称图片地址
                			</td>
                			<td width="80px">景观管理
                			</td>
                		</tr>
                		<s:iterator value="pointlist" var="point">
                		<tr>
	                		<td width="80px">
                				<s:property value="#point.pid"/>
                			</td>
                			<td width="80px">
                				<s:property value="#point.pname"/>
                			</td>
                			<td  width="280px">
                				<s:property value="#point.pinformation"/>
                			</td>
                			<td width="140px">
                				<s:property value = "#point.pimages"/>
                			</td>
                			<td width="140px">
                				<s:property value = "#point.pimages2"/>
                			</td>
                			<td width="80px">
                				<a href = "delete!deletePoint.action?pid=<s:property value="#point.pid"/>">
                				删除
                				</a>
                			</td>
                		</tr>
                		</s:iterator>
                	</table>
                
                
				</div>       
     				
            </div>
		</center>
		</div>
			<div id="footer" align="center">
         		<div class="footer_title">
         	<p>Copyright 2014 ZFSOFT All Rights Reserved. 标准版V1.0.0E-mail：888888@gmail.com</p>
         	<br/>
			<p>地址：广东省珠海市唐家湾金凤路6号 北京理工大学珠海学院 联系电话：13800138000</p>
				</div>
			</div>
		</div>
	</body>
</html>
