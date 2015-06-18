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
  <script type="text/javascript" src="js/banner.js"></script> 
  <link rel="stylesheet" href="css/banner.css" type="text/css"></link>
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
			
		<div class="banner">
			  <div id="ifocus">
		  <div id="ifocus_pic">
		    <div style="left: 0px; top: -240px;" id="ifocus_piclist">
		 
		<ul >
		 <li><a href="#"><img src="images/aab629a0a6c5e13df6f8b51879056bca.jpg"></img></a></li>
		 <li><a href="#"><img src="images/aab629a0a6c5e13df6f8b51879056bca.jpg"></img></a></li>
		 <li><a href="#"><img src="images/2adb82f49e81cb3dfaaef6f7d9b2c6e2.jpg"></img></a></li>
		</ul>
		
		    </div>
		    
		    <!--已隐藏-->
		    <div id="ifocus_opdiv" style="visibility:hidden"></div>
		    <div id="ifocus_tx" style="visibility:hidden">
		      <ul>
		        <li class="normal"><a href="http://www.sitejs.cn/" target="_blank">111111111111</a></li>
		        <li class="current"><a href="http://www.sitejs.cn/" target="_blank">222222222332</a></li>
		        <li class="normal"><a href="http://www.sitejs.cn/" target="_blank">333333333333</a></li>
		      </ul>
		    </div>
		     <!--已隐藏-->
		    
		  </div>
		  <div id="ifocus_btn">		
			<ul>
			 <li class="normal"><a href="http://www.zhbit.com/zt/2015zs"><img src="images/aab629a0a6c5e13df6f8b51879056bca.jpg" alt="2015年招生专题网"></a>
			      <span>
			      <table border="0" cellpadding="0" cellspacing="0" width="165">
			  <tbody><tr>
			    <td height="40" valign="middle" align="center">2015年招生专题网</td>
			  </tr>
			</tbody></table>
			</span>
			</li>
			 <li class="current"><a href="http://www.beiweipano.com/panoView/krProjects/blgsys/vtour/tour.html"><img src="images/aab629a0a6c5e13df6f8b51879056bca.jpg" alt="实验室全景展示"></a>
			      <span>
			<table border="0" cellpadding="0" cellspacing="0" width="165">
				  <tbody><tr>
				    <td height="40" valign="middle" align="center">实验室全景展示</td>
				  </tr>
				  </tbody>		
			</table>
			</span>
			</li>
			 <li class="normal"><a href="http://www.zhbit.com/pic_banner/20150512/14140.html"><img src="images/2adb82f49e81cb3dfaaef6f7d9b2c6e2.jpg" alt="校园开放日"></a>
			      <span>
			      <table border="0" cellpadding="0" cellspacing="0" width="165">
			<tbody>
				<tr>
				  <td height="40" valign="middle" align="center">校园开放日</td>
				</tr>
			</tbody></table>
			</span>
			</li>
			</ul>		
	      </div>
		  
		</div>
			</div>
		<div class="main_a">
		  <div class="main_left">
	  	 	 <div class="title_1">
	  	    <h3>校园美景</h3>
	  	    <span><a href="#" target="_self">more+</a></span>
	  	  </div>
			<!------------首页新闻列表标签(可以选择性获取自己的内容)----------------->
		  <div class="news_list">
				<ul>
				
				<li><a href="#" title="学校召开2014-2015学年度考核工作及聘期考核动员布置会">学校召开2014-2015学年度考核工作及聘期考核动员布置会</a><span>06-12</span></li>
				
				<li><a href="#" title="广东省人社厅林应武厅长一行来我校调研指导工作">广东省人社厅林应武厅长一行来我校调研指导工作</a><span>06-11</span></li>
				
				<li><a href="#" title="宁波诺丁汉大学来访我校交流访问">宁波诺丁汉大学来访我校交流访问</a><span>06-10</span></li>
				
				<li><a href="#" title="我校学子在第六届“蓝桥杯”全国总决赛中再创佳绩">我校学子在第六届“蓝桥杯”全国总决赛中再创佳绩</a><span>06-09</span></li>
				
				<li><a href="#" title="我校与富士康科技集团合作开启定向培养模式">我校与富士康科技集团合作开启定向培养模式</a><span>06-08</span></li>
				
				</ul>			
			</div>
			<div class="title_1"><h3>校园美食</h3><span><a href="http://www.zhbit.com/international/" target="_self">more+</a></span></div>
			
						<!------------首页新闻列表标签----------------->
			<div class="news_list">
				<ul>
				
				<li><a href="#" title="6月21日校园开放日中外合作办学会计学专业项目宣讲会通知">6月21日校园开放日中外合作办学会计学专业项目宣讲会通</a><span>06-11</span></li>
				
				<li><a href="#" title="2015年保送推荐澳门科技大学硕士研究生录取名单 （第2批）">2015年保送推荐澳门科技大学硕士研究生录取名单 （第2</a><span>06-11</span></li>
				
				<li><a href="#" title="布莱恩特学院中外合作办学“会计学专业”招生问答">布莱恩特学院中外合作办学“会计学专业”招生问答</a><span>05-19</span></li>
				
				<li><a href="#" title="澳门科技大学内地研究生考试在我校开考">澳门科技大学内地研究生考试在我校开考</a><span>05-17</span></li>
				
				<li><a href="#" title="台湾师范大学进修推广学院代表来访">台湾师范大学进修推广学院代表来访</a><span>05-11</span></li>
			
				</ul>  
			</div>		
		  </div>
			<div class="main_left m_l_30">
			  	<div class="title_2"><h3>失物招领</h3><span><a href="http://www.zhbit.com/service/gonggao/" target="_self">more+</a></span></div>
				<!------------首页新闻列表标签----------------->
				<div class="news_list">
				<ul>
				
				<li><a href="#" title="关于申报2015—2016学年学生工作精品项目的通知">关于申报2015—2016学年学生工作精品项目的通知</a><span>06-11</span></li>
				
				<li><a href="#" title="关于2015年下半年全国计算机等级考试报名的通知">关于2015年下半年全国计算机等级考试报名的通知</a><span>06-11</span></li>
				
				<li><a href="#" title="2015第五届中国教育机器人大赛通知">2015第五届中国教育机器人大赛通知</a><span>06-11</span></li>
				
				<li><a href="#" title="关于招募第二届中国国际马戏节志愿者的通知">关于招募第二届中国国际马戏节志愿者的通知</a><span>06-10</span></li>
				
				<li><a href="#" title="关于招募珠海WTA超级精英赛志愿者的通知">关于招募珠海WTA超级精英赛志愿者的通知</a><span>06-10</span></li>
				
				</ul>
			</div>	
			<div class="title_2"><h3>爱心活动</h3><span><a href="loveActivityAction!toLoveActivity" target="_self">more+</a></span></div>
						<!------------首页新闻列表标签----------------->
			<div class="news_list">
				<ul>
				
				<li><a href="#" title="【新华网】专访北京理工大学珠海学院招生就业指导处处长赵霞：学校整体提升到第二批本科招生">【新华网】专访北京理工大学珠海学院招生就业指导处处</a><span>06-08</span></li>
				
				<li><a href="#" title="【珠海电视台】北理工珠海学院辩论队：我们向着冠军前进！">【珠海电视台】北理工珠海学院辩论队：我们向着冠军前</a><span>06-02</span></li>
				
				<li><a href="#" title="【珠海特区报】线上比拼“功夫” 线下互传“技巧” 珠海高校新媒体论坛召开">【珠海特区报】线上比拼“功夫” 线下互传“技巧” 珠</a><span>06-01</span></li>
				
				<li><a href="#" title="【珠海电视台】珠海手信文化设计研究院成立">【珠海电视台】珠海手信文化设计研究院成立</a><span>06-01</span></li>
				
				<li><a href="#" title="【珠海特区报】“云洲智能张云飞北理工开讲“大咖公开课” 与300学子分享创业之路">【珠海特区报】“云洲智能张云飞北理工开讲“大咖公开</a><span>06-01</span></li>
				
				</ul>
			</div>
			</div>					
		<div class="main_right">
			<div onmouseover="abc.style.display='block';" onmouseout="abc.style.display='none';">
						<div class="title_1"><h3>学院设置</h3></div>
						<div class="main_right_nav">
							<ul>
								<li><a href="http://xinxi.xy.zhbit.com/" target="new">信息学院</a></li>
								<li><a href="http://computer.xy.zhbit.com/" target="new">计算机学院</a></li>
								<li><a href="http://xueyuan.zhbit.com/jixie/" target="new">机械与车辆学院</a></li>
								<li><a href="http://huagong.xy.zhbit.com/" target="new">化工与材料学院</a></li>
								<li><a href="http://hangkong.xy.zhbit.com/" target="new">航空学院</a></li>
								<li><a href="http://shuli.xy.zhbit.com/slxy/" target="new">数理与土木工程学院</a></li>
								<li><a href="http://shang.xy.zhbit.com/" target="new">商学院</a></li>
								<li><a href="http://af.xy.zhbit.com/" target="new">会计与金融学院</a></li>
								<li><a href="http://waiyu.xy.zhbit.com/" target="new">外国语学院</a></li>
								<li><a href="http://wenfa.xy.zhbit.com/" target="new">文法学院</a></li>
								<li><a href="http://xueyuan.zhbit.com/yishu/" target="new">设计与艺术学院</a></li>
								<li><a href="http://www.bryant.edu/" target="new">布莱恩特学院</a></li>
								<li><a href="http://sz.zhbit.com/" target="new">思政部</a></li>
								<li><a href="http://tiyu.xy.zhbit.com/" target="new">体育部</a></li>
							</ul>
						</div>			
		   </div>
	    </div>         
	  </div>
	</div>
         <div id="footer">
			<jsp:include page="/page/background/footer.jsp" />
         </div>

  </body>		
</html>
