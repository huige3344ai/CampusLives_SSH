<<<<<<< HEAD
<%@page import="javax.annotation.Resource"%>
<%@ page language="java" import="java.util.*,com.zhbit.domain.*,com.zhbit.dao.*,com.zhbit.services.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
  <head>
 
    <title>校园生活服务网</title>

  <link rel="stylesheet" href="css/main.css" type="text/css"></link>
  <script type="text/javascript" src="js/site.js"></script>
  <script type="text/javascript" src="js/jquery.js"></script>
  
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 

  </head>
  
  <body>
    WELCOME:<s:property value="#session.user.userName"/>!!!
=======
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
  <head>
    <base href="<%=basePath%>"/>
    
    <title>校园服务网站</title>

  <link rel="stylesheet" href="css/main.css" type="text/css"></link>
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/imageflow_main.js"></script>
  
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
 
         <div id="bdys">
			<jsp:include page="/page/background/nav.jsp"/>
			<div id ="body_footer">
				<ul><li><h5>待开发框架</h5></li></ul>
			</div>
		</div>         
            
         
         <div id="footer">
			<jsp:include page="/page/background/footer.jsp" />
         </div>
  </div>
>>>>>>> refs/remotes/origin/dev
  </body>
</html>
