<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@page import="com.zhbit.domain.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
			
 User user=(User)session.getAttribute("user");
  ActionContext.getContext().getSession().put("user",user);	
		String username="";
		username=user.getUserName();
			
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
		<div id="container">
			<div id="header">

				<div class="header_band">
					<span>北京理工大学珠海学院</span>
				</div>

				<div class="header_title">
					<strong><span>校园生活服务网站</span>
					</strong>
				</div>
			</div>

			 <div id="body" align="center">
         	   <jsp:include page="/page/background/nav.jsp"/>
     		
             </div>
         
			<div class="c_apply">
				<s:form action="loveActivityAction!addActivity" method="post"
					namespace="/">
					<table align="center">
						<thead align="center">
							<td>
							<td>
								<b>增加活动</b>
							</td>
						</thead>

						<tbody>

							<!--<p> <tr><td>活动ID</td>  <td><input type="text"  id="ac_id" name="ac_id" value="例：" onFocus="this.value=''" onBlur="if(!value){value=defaultValue;}"/></td>   </tr> </p>
                 -->
							<tr>
								<td>
									活动代号
								</td>
								<td>
									<input type="text" id="ac_id" name="loveActivity.acNo" value="例：ac001" onFocus="this.value=''" onBlur="if(!value){value=defaultValue;}" />
								</td>
							</tr>
							<tr>
								<td>
									活动名称
								</td>
								<td>
									<input type="text" id="ac_name" name="loveActivity.acName" value="长度应在10字以内" onFocus="this.value=''" onBlur="if(!value){value=defaultValue;}" />
								</td>
							</tr>
							<tr>
								<td>
									活动时间
								</td>
								<td>
									<input type="text" id="ac_time" name="loveActivity.acTime" value="例：2015-01-02" onFocus="this.value=''" onBlur="if(!value){value=defaultValue;}"/>
								</td>
							</tr>
							<tr>
								<td>
									活动地点
								</td>
								<td>
									<input type="text" id="ac_place" name="loveActivity.acPlace" value="长度应在10字以内" onFocus="this.value=''" onBlur="if(!value){value=defaultValue;}"/>
								</td>
							</tr>
							<tr>
								<td>
									负责人姓名
								</td>
								<td>
									<input type="text" id="p_name" name="loveActivity.PName" value="例：张三" onFocus="this.value=''" onBlur="if(!value){value=defaultValue;}"/>
								</td>
							</tr>
							<tr>
								<td>
									负责人电话
								</td>
								<td>
									<input type="text" id="p_tel" name="loveActivity.PTel" value="例：12345678901" onFocus="this.value=''" onBlur="if(!value){value=defaultValue;}" />
								</td>
							</tr>
							<tr>
								<td>
									活动内容
								</td>
								<td>
									<textarea rows="10" cols="50" name="loveActivity.acContent" value="长度应在300字以内" onFocus="this.value=''" onBlur="if(!value){value=defaultValue;}"></textarea>
								</td>
							</tr>
							<tr>
								<td>
								</td>
								<td>
									<!-- <a href="loveActivityAction!addActivity"> -->
									<input type="submit" value="增加" name="add_submit" />
									<input type="reset" id="add_reset" value="重置" />
									<%
										String return_add = "return_add";
									%>
									<a href="loveActivityAction!toLoveActivity">返回</a>
								</td>

								<td>
								</td>
							</tr>

						</tbody>

					</table>

				</s:form>
			</div>

			<!-- =========================== -->

			<div id="footer" align="center">
				<div class="footer_title">
					<p>
						Copyright 2014 ZFSOFT All Rights Reserved.
						标准版V1.0.0E-mail：888888@gmail.com
					</p>
					<br />
					<p>
						地址：广东省珠海市唐家湾金凤路6号 北京理工大学珠海学院 联系电话：13800138000
					</p>
				</div>
			</div>
		</div>



		<!-- ========================== -->



	</body>
</html>
