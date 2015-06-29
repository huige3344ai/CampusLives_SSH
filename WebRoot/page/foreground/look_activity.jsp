<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@page import="com.zhbit.domain.User"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

  User user=(User)session.getAttribute("user");
  ActionContext.getContext().getSession().put("user",user);	
		String username="";
		
		
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>查看活动详情</title>
    
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
         <s:if test="#session.user==null">
     
                     <div align="center"> <h1> 请您先登录，谢谢。</h1>
                     </div>
         </s:if>
         <s:else>
        
   <%                 //username=user.getUserName();
      System.out.print("user is "+user);
        			  request.setCharacterEncoding("utf-8");
        			  response.setCharacterEncoding("utf-8");
        			  String a=" ";
        			  String ac_name,ac_time,ac_place,ac_content,p_name,p_tel;
        			  String ac_id=request.getParameter("loveActivity.acId")== null?"":request.getParameter("loveActivity.acId").toString();
        			  String ac_no=request.getParameter("loveActivity.acNo")==null?"":request.getParameter("loveActivity.acNo").toString();
        if(request.getParameter("loveActivity.acName")==null)
        	 ac_name="";
        else 
        	ac_name=new String(request.getParameter("loveActivity.acName").getBytes("iso8859-1"),"utf-8");
        
        if(request.getParameter("loveActivity.acTime")==null)
        	ac_time="";
        else	
        	ac_time=new String(request.getParameter("loveActivity.acTime").getBytes("iso8859-1"),"utf-8");
        if(request.getParameter("loveActivity.acPlace")==null)
        	ac_place="";
        else
           ac_place=new String(request.getParameter("loveActivity.acPlace").getBytes("iso8859-1"),"utf-8");
        
        if(request.getParameter("loveActivity.acContent")==null)
        	ac_content="";
        else 
        	ac_content=new String(request.getParameter("loveActivity.acContent").getBytes("iso8859-1"),"utf-8");
        if(request.getParameter("loveActivity.PName")==null)
        	p_name="";
        else 
        	p_name=new String(request.getParameter("loveActivity.PName").getBytes("iso8859-1"),"utf-8");
       
        if(request.getParameter("loveActivity.PTel")==null)
        	p_tel="";
        else
        	p_tel=new String(request.getParameter("loveActivity.PTel").getBytes("iso8859-1"),"utf-8");
        			    
        			  
        			  
        			 %>
   			
      <form>
         <table align="center" style="margin-top: 135px; margin-left:40px;" >
           <thead > <td></td><td><b><%=ac_name %></b></td></thead>
        			
             <tbody >
              	  <tr><td>活动ID</td>  <td><input type="button" style="background: none; border:none; " id="ac_id" value="<%=ac_id %>" /></td>   </tr> 
               	  <tr><td>活动代号</td>  <td><input type="button" style="background: none; border:none; "  value="<%=ac_no %>" /></td>   </tr> 
               	  <tr><td>活动名称</td>  <td><input type="button"  style="background: none; border:none; " value="<%=ac_name %>" /></td>   </tr> 
               	  <tr><td>活动地点</td>  <td><input type="button"  style="background: none; border:none; " value="<%=ac_place %>" /></td>   </tr> 
               	  <tr><td>活动时间</td>  <td><input type="button"  style="background: none; border:none; " value="<%=ac_time %>" /></td>   </tr> 
               	 <tr><td>活动负责人</td>  <td><input type="button" style="background: none; border:none; " value="<%=p_name %>" /></td>   </tr> 
               	 <tr><td>负责人电话</td>  <td><input type="button"  style="background: none; border:none; " value="<%=p_tel %>" /></td>   </tr> 
               	 
               	  <tr>
               	  <td colspan="2">
               	    <textarea rows="10" cols="50" readonly="readonly"> 
               	       <%=ac_content%>
               	    </textarea>
               	  </td>
               	  </tr>
               	  <tr><td>  
                              <a href="loveActivityAction!toLoveActivity">返回</a>
                      </td></tr>
              
          </tbody>
          
         </table>
         
        </form>
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
  
  
</html>
