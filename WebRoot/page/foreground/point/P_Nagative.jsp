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
		<link href="css/lrtk.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/point/jquery.js"></script>
		<script type="text/javascript" src="js/point/lrtk.js"></script>
		
		
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
 
		<div id="body" >
		<center>
			<jsp:include page="/page/background/nav.jsp"/>
		
			<div id="contents" align="left">               
				
					<div class="slide-main" id="touchMain">
						<a class="prev" href="javascript:;" stat="prev1001">	
						<img src="images/point/l-btn.png" />
						</a>
					<div class="slide-box" id="slideContent">
					<framework>
						<s:iterator value="pointlist" var="point">
						<div class="slide" id="bgstylec">
							<a href="search!getSPoint.action?pid=<s:property value="#point.pid"/>">
                			<img src=  " <s:property value = "#point.pimages"/> "
                			alt=" <s:property value = "#point.pname"/>"/>
							</a>
						</div>
						</s:iterator>
					</framework>
					</div>
					<a class="next" href="javascript:;" stat="next1002"><img src="images/point/r-btn.png" /></a>
						<div class="item">
						<a class="cur" stat="item1001" href="javascript:;"></a><a href="javascript:;" stat="item1002"></a><a href="javascript:;" stat="item1003"></a>
						</div>
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
