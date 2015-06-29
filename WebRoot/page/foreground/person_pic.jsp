<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>头像上传</title>
<link rel="stylesheet" href="css/style.css" type="text/css" />
<script type="text/javascript" src="js/jquery.min.js"></script> 
<script type="text/javascript" src="js/cropbox.js"></script>
</head>
<script type="text/javascript">
$(window).load(function() {
	$("#pic_submit").hide();
	var options =
	{
		thumbBox: '.thumbBox',
		spinner: '.spinner',
		imgSrc: 'images/avatar.png'
	}
	var cropper = $('.imageBox').cropbox(options);
	$('#upload-file').on('change', function(){
		var reader = new FileReader();
		reader.onload = function(e) {
			options.imgSrc = e.target.result;
			cropper = $('.imageBox').cropbox(options);
		}
		reader.readAsDataURL(this.files[0]);
		this.files = [];
	})
	$('#btnCrop').on('click', function(){
		var img = cropper.getDataURL();
		$('.cropped').html('');			
		$('.cropped').append('<img src="'+img+'" align="absmiddle" style="width:64px;margin-top:4px;border-radius:64px;box-shadow:0px 0px 12px #7E7E7E;" ><p>64px*64px</p>');
		$('.cropped').append('<img src="'+img+'" align="absmiddle" style="width:128px;margin-top:4px;border-radius:128px;box-shadow:0px 0px 12px #7E7E7E;"><p>128px*128px</p>');
		$('.cropped').append('<img src="'+img+'" align="absmiddle" style="width:180px;margin-top:4px;border-radius:180px;box-shadow:0px 0px 12px #7E7E7E;"><p>180px*180px</p>');
		$("#base64_pic").val(img);
		$("#pic_submit").show();
		$("#select_pic").hide();
		
	})
	$('#btnZoomIn').on('click', function(){
		cropper.zoomIn();
	})
	$('#btnZoomOut').on('click', function(){
		cropper.zoomOut();
	})
});
</script>
<body>
<div class="container">
  <div class="imageBox">
    <div class="thumbBox"></div>
    <div class="spinner" style="display: none">Loading...</div>
  </div>
 
  <div class="action"> 
  	<s:form action="upload!uploadPic.action" enctype="multipart/form-data">
  	
    <div class="new-contentarea tc" id="select_pic"> <a href="javascript:void(0)" class="upload-img">
      <label for="upload-file">选择</label>
      </a>
      <input type="file" class="" name="file" id="upload-file" />      
    </div> 
    
    <input type="hidden" name="base64" id="base64_pic"></>
    
    <div class="pic_submit" id="pic_submit">
    <a ><input type="submit"  class="button_sumbit tc" value="提交"/></a>   
    </div>
     
    </s:form>                
    <input type="button" id="btnCrop"  class="Btnsty_peyton" value="裁切"/>
    <input type="button" id="btnZoomIn" class="Btnsty_peyton" value="+"  />
    <input type="button" id="btnZoomOut" class="Btnsty_peyton" value="-" />
    <input type="button"  class="Btnsty_peyton" value="返还" onClick="window.location='<%=basePath%>page/foreground/person.jsp'"/>
  
    </div> 
 	<div class="tissue">
 		<s:fielderror></s:fielderror>
 		<span><s:property value="tissue"/></span><br/>
 		<strong id="show_tissue" >注：默认图片仅供参考，请选择本地图片（.jpeg .png .jpg）上传，点击返还按钮将返还个人信息页面，查看头像</strong>		
 	</div>
  <div class="cropped">
 
  </div>
</div> 
</body>
</html>

