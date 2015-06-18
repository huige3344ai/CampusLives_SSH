<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
   <form>
        <table align="center" border="1">
        <thead > <td colspan="6" align="center"><b>报名信息</b></td></thead>
        
             <tbody >
                <tr><td>申请号</td>  <td>活动ID</td>   <td>活动名</td>    <td>用户ID</td> <td>用户名</td>  <td>电话</td></tr> 
               
                <%--
              request.setCharacterEncoding("utf-8");
              response.setCharacterEncoding("utf-8");
              
             String sql="select * from ActivityApply where u_id='u201'";/////////////////////////
	       Vector V=(Vector)ConnectionOperation2.queryData(sql);//vector
	       Iterator it=V.iterator();

	       while(it.hasNext()){

	          Vector v=(Vector)it.next();

	           --%>
	      <tr>
             <td><label ><%--=v.get(0).toString() --%></label></td>
             <td><label ><%--=v.get(1).toString() --%></label></td>
             <td><label ><%--=v.get(2).toString() --%></label></td>
             <td><label ><%--=v.get(3).toString() --%></label></td>
             <td><label ><%--=v.get(4).toString() --%></label></td>
             <td><label ><%--=v.get(5).toString() --%></label></td>
            <td><a  href="ActivityServlet2?ap_no=<%--=v.get(0).toString() --%>" title="取消报名" >取消报名</a>----</td>
                 
	       <%--
              }
	         
	           
            --%>
              
            </tr>
           <tr> <td></td> <td></td><td></td> <td></td> <td></td> <td></td> 
           
                 <td><% String return_check="return_check"; %>
                <a href="LoginServlet?return_of_check=<%--=return_check --%>">返回</a>--</td></tr>
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
