<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@page import="com.zhbit.domain.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  int userid=-1;
  String username="",usertel="";

  User user=(User)ActionContext.getContext().getSession().get("user");
  ActionContext.getContext().getSession().put("user",user);
	if(user!=null){
		userid=user.getId();
	    username=user.getUserName();
		usertel=user.getEmail();
	}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>活动报名</title>

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
      <div class="c_apply2">
       <s:if test="#session.user==null">
     
                     <div align="center"> <h1> 请您先登录，谢谢。</h1>
                     </div>
         </s:if>
         <s:else>
   <s:form action="loveActivityAction!addApply" method="post" namespace="/">
					<table align="center" style=" margin-top: 246px;">
						<thead>
							<td></td>
							<td>
								<b>填写活动报名信息</b>
							</td>
						</thead>

						<tbody>
							<%  
               request.setCharacterEncoding("utf-8");
               response.setCharacterEncoding("utf-8");
               
              String ac_id=request.getParameter("loveActivity.acId").toString();
        	  String ac_name=new String(request.getParameter("loveActivity.acName").getBytes("iso8859-1"),"utf-8");
        	 
               %>
							<tr>
								<td>
									活动id：
								</td>
								<td>
									<input style="background: none; border:none; "  type="text" readonly="readonly" name="activityApply.acId" value="<%=ac_id%>" />
								</td>

							</tr>
							<tr>
								<td>
									活动名：
								</td>
								<td>
									<input style="background: none; border:none; " type="text" readonly="readonly" name="activityApply.acName"
										value="<%=ac_name%>" />
								</td>


							</tr>
							<tr>
								<td>
									用户id：
								</td>
								<td>
									<input style="background: none; border:none; " style="background: none; border:none; " type="text" readonly="readonly" name="activityApply.UId" value="<%=userid %>" />
								</td>

							</tr>
							<tr>
								
								<td>
									用户姓名：
								</td>
								<td>
									<input style="background: none; border:none; " type="text" readonly="readonly" name="activityApply.UName" value="<%=username %>" />
								</td>
								
							</tr>
							<tr>
								
								<td>
									联系方式：
								</td>
								<td>
									<input type="text" name="activityApply.UTel" />
								</td>
								
							</tr>

							<tr>
								<td></td>
								<td>
									<input type="submit" name="submitofapply" value="确认报名" />
									<% String return_apply="return_apply"; %>
									<a href="loveActivityAction!toLoveActivity">返回</a>
								</td>

							</tr>

						</tbody>
					</table>
				</s:form>
		</s:else>
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
   
  <!-- mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm -->
  
  <!-- mmmmmmmmmmmmm -->
  
</html>
