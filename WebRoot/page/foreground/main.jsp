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
  </body>
</html>
