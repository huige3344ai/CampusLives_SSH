<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'activityadd.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/activityapply.css">

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
    	         <div id="nav">
                       <ul>
                       		<li>
                       				<a href="page/foreground/main.jsp">主页 </a>
                       				
                       		</li>
                       		<li>
                       				<a href="page/PointView/foreground/PointNavigation.jsp">校园美景</a>
                       				
                       		</li>
                       		<li>
                       				<a href="page/foreground/food/FoodNetwork.jsp">校园美食</a>
                       				
                       		</li>
                       		<li>
                       				<a href="checkservlet">失物招领</a>
                       				
                       				
                       		</li>
                       		<li>
                       				<a href="LoginServlet">爱心活动</a>
                       				
                       		</li>
                       		
                        	<li>
                       				<a href="JudgeIsAdmin">投诉建议</a>
                       				 
                       		</li> 
                       		                           		
                       		<li>
                       				
                       				<a href="page/foreground/regist.jsp" >修改密码</a>
                       				 
                       		</li>

                       		
                       </ul>
                <div class = "user">
                        
                 <%=session.getAttribute("uname")%>,<a href="page/foreground/logout.jsp">注销</a>
                	                		
                 </div>   
                </div>
     				
        
         <!-- ========================= -->
         </div>
         <div class="c_apply">
             <form  action="loveActivityAction!addActivity" method="post">
        <table align="center" >
        <thead align="center" ><td><td> <b>增加活动</b></td></thead>
        
             <tbody >
              	 
              	 <!--<p> <tr><td>活动ID</td>  <td><input type="text"  id="ac_id" name="ac_id"/></td>   </tr> </p>
                 -->
                  <tr><td>活动名称</td>  <td><input type="text"  id="ac_name" name="loveActivity.acName" /></td>   </tr> 
                  <tr><td>活动时间</td>  <td><input type="text"  id="ac_time"  name="loveActivity.acTime" /></td>   </tr> 
                  <tr><td>活动地点</td>  <td><input type="text"  id="ac_place" name="loveActivity.acPlace"/></td>   </tr> 
                  <tr><td>负责人姓名</td>  <td><input type="text" id="p_name"  name="loveActivity.PName" /></td>   </tr> 
                  <tr><td>负责人电话</td>  <td><input type="text" id="p_tel" name="loveActivity.PTel"/></td>   </tr> </p>
                  <tr><td>活动内容</td>  <td><textarea rows="10" cols="50"   name="loveActivity.acContent"></textarea>
                                        </td>   
                  </tr>
                  <p> <tr><td > </td>
                          <td><a href="loveActivityAction!addActivity">
                          <input type="submit" value="增加"  name="add_submit"/></a>
                               <input type="reset" id="add_reset" value="重置"/>
                               <% String return_add="return_add"; %>
                                <a href="LoginServlet?return_of_add=<%=return_add %>">返回</a></td>  

                          <td > </td>
                      </tr>
                  </p>
            </tr>
           
          </tbody>
          
         </table>
         
        </form>
     </div>
            
              <!-- =========================== -->
   
         <div id="footer">
         	<div class="footer_title">
         	<p>Copyright 2014 ZFSOFT All Rights Reserved. 标准版V1.0.0E-mail：888888@gmail.com</p>
         	<br/>
			<p>地址：广东省珠海市唐家湾金凤路6号 北京理工大学珠海学院 联系电话：13800138000</p>
         	</div>
         </div>
  </div>
  

  
  <!-- ========================== -->
   			
   			
   
  </body>
</html>
