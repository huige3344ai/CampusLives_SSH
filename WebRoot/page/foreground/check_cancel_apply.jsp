<%@page import="com.zhbit.domain.User"%>
<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
/* int u_id=Integer.parseInt(ActionContext.getContext().get("u_id").toString()); */
  int u_id=Integer.parseInt(request.getParameter("u_id").toString());
  System.out.print("s-uid="+u_id);

  User user=(User)session.getAttribute("user");
  ActionContext.getContext().getSession().put("user",user);	
		String username="";
		username=user.getUserName();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'lookapply.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/activityapply.css">
	

  </head>
  
  
  <!-- 0000000 -->
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
 
          <div id="body" align="center">
         	<jsp:include page="/page/background/nav.jsp"/>
     
       </div>
         <!-- sssssssssssssssssssssssssssssssssssssss -->
       <div class="c_apply">
   <form>
        <table align="center" border="1">
        <thead > <td colspan="6" align="center"><b>报名信息</b></td></thead>
        
             <tbody >
             
                <tr><td>申请号</td>  <td>活动ID</td>   <td>活动名</td>    <td>用户ID</td> <td>用户名</td>  <td>电话</td></tr> 
               <s:if test="applyList.size()!=0">
	               <s:iterator value="applyList" var="apList">
		           <tr>
			             <td><label ><s:property value="#apList.getApNo()"/></label></td>
			             <td><label ><s:property value="#apList.getAcId()"/></label></td>
			             <td><label ><s:property value="#apList.getAcName()"/></label></td>
			             <td><label ><s:property value="#apList.getUId()"/></label></td>
			             <td><label ><s:property value="#apList.getUName()"/></label></td>
			             <td><label ><s:property value="#apList.getUTel()"/></label></td>
			            <td><a  href="loveActivityAction!toCancelApply?apnoForCancel=<s:property value="#apList.getApNo()"/>&u_id=<%=u_id%>" title="取消报名" >取消报名</a>----</td>
	                  
	              </tr>
	              </s:iterator>
	          </s:if> 
                   <tr> 
		               
		           
		                 <td> <a href="loveActivityAction!toLoveActivity">返回</a>
		                 </td>
                     </tr>
          </tbody>
          
         </table>
         
        </form>
     </div>
              <!--ssssssssssssssssssssssss -->
   
         <div id="footer" align="center">
         	<div class="footer_title">
         	<p>Copyright 2014 ZFSOFT All Rights Reserved. 标准版V1.0.0E-mail：888888@gmail.com</p>
         	<br/>
			<p>地址：广东省珠海市唐家湾金凤路6号 北京理工大学珠海学院 联系电话：13800138000</p>
         	</div>
         </div>
  </div>
  
	
   
  </body>
  <!-- 0000000 -->
   
  
</html>
