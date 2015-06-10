 
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'activitydelete.jsp' starting page</title>
    
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
     				
        </div>
         <!-- sssssssssssssssssssssssssssssssssssssss -->
         
         <div class="c_apply">
   
   			
   <form  style="width:600px; height:500px; overflow: scroll; position:absolute; ">
        <table align="center" >
        <thead > <td></td><td><b>删除活动</b></td></thead>
        
        		<%--
        		 request.setCharacterEncoding("utf-8");
              response.setCharacterEncoding("utf-8");
             
	     
	      String sql="select * from LoveActivity";
	       Vector V=(Vector)ConnectionOperation2.queryData(sql);//vector
	       Iterator it=V.iterator();
	     	int i=1;
	     	
	     	ActivityServlet2.is_delete=1;////////////////////////////////
	     	String w="delete_ac";
	       while(it.hasNext()){
	        
	          Vector v=(Vector)it.next();
	       		
        		 --%>
             <tbody>
             
              	 <p> <tr><td >活动号</td>  <td  ><input type="button"   id="ac_no"  value="<%--=v.get(0)--%>"/>--</td>   </tr> </p>
               	 <p> <tr><td >活动ID</td>  <td ><input type="button"  id="ac_id"  value="<%--=v.get(1)--%>" />--</td>   </tr> </p>
                 <p> <tr><td>活动名称</td>  <td><input type="button"  id="ac_name"  value="<%--=v.get(2)--%>"/>--</td>   </tr> </p>
                 <p> <tr><td>活动时间</td>  <td><input type="button"  id="ac_content"  value="<%--=v.get(3)--%>"/>--</td>   </tr> </p>
                 <p> <tr><td>活动地点</td>  <td><input type="button" id="p_name"  value="<%--=v.get(4)--%>"/>--</td>   </tr> </p>
                 <p> <tr><td>负责人</td>  <td><input type="button"  id="ac_time"  value="<%--=v.get(5)--%>"/>--</td>   </tr> </p>
                 <p> <tr><td>负责人电话</td>  <td><input type="button"  id="ac_place"  value="<%--=v.get(6)--%>"/>--</td>   </tr> </p>
                 <p> <tr><td>活动内容</td>  <td><textarea  name="ac_content" rows="10" cols="50"  id="ac_content" name="ac_content"><%--=v.get(7)--%></textarea></td>   </tr> </p>
                 
                    <tr><td ></td> 
                         <td>
             		        <a href="ActivityServlet2?AC_NO=<%--=v.get(0)--%>&where=<%--=w--%>">删除</a>
                             <%-- String return_delete="return_delete"; --%>
                                <a href="LoginServlet?return_of_delete=<%--=return_delete --%>">返回</a>
                             <%--
                             System.out.print("\n path:"+path);
                             
                             --%>
				          ------</td>
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
