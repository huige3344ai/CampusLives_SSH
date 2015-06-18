<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改活动</title>
    
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
     				
        
         <!-- sssssssssssssssssssssssssssssssssssssss -->
         </div>
         <div class="c_apply">
   				<%--
        		 request.setCharacterEncoding("utf-8");
              response.setCharacterEncoding("utf-8");
             
	     
	      String sql="select * from LoveActivity";
	       Vector V=(Vector)ConnectionOperation2.queryData(sql);//vector
	       Iterator it=V.iterator();
	     	int i=1;
	     	
	     	//ActivityServlet2.is_delete=1;////////////////////////////////
	     	
	       while(it.hasNext()){
	        
	          Vector v=(Vector)it.next();
	       		
        		 --%>
   			
   <form action="ActivityServlet2" style="width:600px; height:500px; overflow: scroll; position:absolute; ">
        <table align="center" >
        <thead > <p align="center"><td></td> <td><b>修改活动</b></td></p></thead>
        
        		
             <tbody>
             
              	  <!--<tr><td >活动号</td>  <td  ><input type="text" name="ac_no"  value="<%--=v.get(0)--%>"/>--</td>   </tr> 
               	 --><tr><td >活动ID</td>  <td ><input type="text"  name="ac_id"  value="<%--=v.get(1)--%>" />--</td>   </tr> 
                  <tr><td>活动名称</td>  <td><input type="text"  name="ac_name"  value="<%--=v.get(2)--%>"/>--</td>   </tr> 
                  <tr><td>活动时间</td>  <td><input type="text"  name="ac_time"  value="<%--=v.get(3)--%>"/>--</td>   </tr> 
                  <tr><td>活动地点</td>  <td><input type="text" name="ac_place"  value="<%--=v.get(4)--%>"/>--</td>   </tr> 
                  <tr><td>负责人</td>  <td><input type="text"  name="p_name"  value="<%--=v.get(5)--%>"/>--</td>   </tr> 
                  <tr><td>负责人电话</td>  <td><input type="text"  name="p_tel"  value="<%--=v.get(6)--%>"/>--</td>   </tr> 
                  <tr><td>活动内容</td>  <td><textarea  name="ac_content" rows="10" cols="50"  id="ac_content">
                                              </textarea>
                                         </td>
                  </tr> 
                 
                    <tr><td ></td> 
                         <td>
             		     <input type="submit" value="确认修改" />
                             <%-- String return_alter="return_alter"; --%>
                                <a href="LoginServlet?return_of_alter=<%--=return_alter --%>">返回</a>
				          </td>
				          <td>
                         </td>   
                    </tr> 
               
            </tr>
            <%--
            
                 	
	          }
	          
	          --%>
	         
          </tbody>
         
         </table>
         
        </form>
     </div>
            
              <!--ssssssssssssssssssssssss -->
   
         <div id="footer">
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
