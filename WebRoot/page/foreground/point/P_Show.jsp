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
			<jsp:include page="/page/background/nav.jsp"/>
			<div id="contents">               
				
                <div id ="mainbody" align="center">
                	<s:iterator value="pointlist" var="point">
                	<p align="center"><s:property value = "#point.pname"/>
                	</p>
                	<br>
                	<img src= " <s:property value = "#point.pimages"/>"
                		alt=" <s:property value = "#point.pname"/>"
                		width="500px"  height="350px" style="margin-top:15px; margin-bottom: auto;">
                	</img>
                	<br>
                	<p align="center">
                	<s:property value = "#point.pinformation"/>
                	</p>
					
					<table  width="100%" border="0" align="center" cellpadding="3" cellspacing="1" >
        				<tr>
        					<td>
								<marquee  behavior=alternate ONMOUSEOUT="this.scrollDelay=1" ONMOUSEOVER="this.scrollDelay=600"  scrollamount=1  SCROLLDELAY=1  border=0  scrolldelay=70  width="100%"  align=middle>
									<a href='#ecms' onclick='GotoPhPage(1);' title='<s:property value = "#point.pname"/>'>
        							<img src="<s:property value = "#point.pimages"/>" alt='<s:property value = "#point.pname"/>' border=0 width="300px" height="150px"></a>&nbsp;
        							<a href='#ecms' onclick='GotoPhPage(2);' title='<s:property value = "#point.pname"/>'>
        							<img src="<s:property value = "#point.pimages2"/>"'alt='<s:property value = "#point.pname"/>' border=0 width="300px" height="150px"></a>&nbsp;
        							<a href='#ecms' onclick='GotoPhPage(3);'title=''>
        							<img src="<s:property value = "#point.pimages"/>"' alt='<s:property value = "#point.pname"/>' border=0 width="300px" height="150px"></a>
        							&nbsp;<a href='#ecms' onclick='GotoPhPage(4);' title='<s:property value = "#point.pname"/>'></a>
        						</marquee>
        					</td>
        				</tr>
        		</table>
				</s:iterator>
                </div> 
     		</div>
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
