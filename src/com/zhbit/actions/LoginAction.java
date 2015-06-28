package com.zhbit.actions;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import sun.misc.BASE64Decoder;

import com.opensymphony.xwork2.ActionSupport;
import com.zhbit.domain.Role;
import com.zhbit.domain.User;
import com.zhbit.services.UserService;
/**
 * @author Administrator
 * 
 */

public class LoginAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private User user;//用户表
	private Role role;//角色表
	private String repassword;//重复密码
	private String newpassword;//获取输入的新密码
	private String oldpassword;//获取 输入的旧密码
	private String user_oldpassword;//用于救命检验判断
	private String tissue;//检验结果
	private boolean jude ;//检验结果
	
	private File file;//封装上传文件属性
	private String base64;//jq base64编码
	private String fileFileName;//封装上传文件的名称属性
	private String targetName;//保存文件名称属性
	private String dir;//保存文件路径属性

	
	@Resource
	private UserService userser;

	
		//注册用户	
		public String register(){			
			if(userser.searchUser(user.getUserName()).isEmpty()){//判断用户名是否存在
			user.setRole(role);
			User num = userser.insertUser(user);//保存用户
				if(num!=null){
					return LOGIN;				
				}else{
					tissue	= "注册失败请重新尝试！！！";	
					return INPUT;
				}
			}
			else{	
			tissue	= "用户名已存在，请更换其他用户名！！！";
			return INPUT;
			}
			

			
		}
	

		//登录校验
		@SuppressWarnings("rawtypes")
		public  String  login(){
			List us  =  userser.searchUser_only(user.getUserName(), user.getPassword());		
			HttpServletRequest request = ServletActionContext.getRequest();		
			if(!us.isEmpty()){
			User user = (User)us.get(0);
			request.getSession().setAttribute("user",user);			
			return SUCCESS;	
			}else{
			tissue	= "用户名或者密码不正确";
			return LOGIN;	
			}	
			
		}
	

		//更新用户信息
		public String  exchangeMsg(){
		HttpServletRequest request = ServletActionContext.getRequest();		
		User user_ex = userser.updateUser(user);
		if(user_ex!=null){	
			request.getSession().setAttribute("user",user_ex);
			tissue = "更新用户信息成功";
			return "updatesuccess";	
		}else{
			tissue = "更新失败，请重试！！！";
			return "updateabort";	
		}		
	  }
		
		//更新用户类型
		public String  exchangeType(){
		User user_type = null;
		if(userser.searchUser(user.getUserName()).isEmpty()){
			tissue = "用户不存在";
			return "updateabort";
		}else{
			user_type = (User) userser.searchUser(user.getUserName()).get(0);
			if(user_type.getRole().getRid()==2){
				tissue = "管理员信息不允许修改";	
				return "updateabort";					
			}else{
			user.setRole(role);
			user_type = userser.updateUserType(user);							
			if(user_type==null){
				tissue = "更新用户信息失败，稍后尝试";	
				return "updateabort";
			}else{
				tissue = "更新用户信息成功";	
				return "updatesuccess";
			}
			
			}
		}	
		
		
	  }	
		//更新密码	
		public String updateLogin(){	
			 User num = userser.updatePassword(user);
			 if(num!=null){
				loginOut();
				return  "update_passwor_success";	
			}else{	
				tissue = "更新失败，请重试！！！";
				return  "update_passwor_abort";
				}
	
		
		}	

		
		//找回密码
		@SuppressWarnings("rawtypes")
		public String returnPassword(){																	
			User num = null;
			List userEmail = userser.searchUser(user.getUserName());			
			if(userEmail==null){
				tissue	= "用户名不存在";
				jude = false;
			}else if(!((User) userEmail.get(0)).getEmail().equals(user.getEmail())){				
				tissue	= "邮箱不正确";		
				jude = false;
			}else{			
				jude = true;
				num = userser.updatePassword(user);				
			}
			
			 if(num!=null){
				loginOut();
				return  "return_password_success";	
			}else{	
				return  "return_password_abort";
				}			
	
		}		


		
		//注销
		public String loginOut(){
			HttpServletRequest request = ServletActionContext.getRequest();
			request.getSession().removeAttribute("user");
			request.getSession().invalidate();
			return LOGIN;
		}
		
		


	    //base64转换成图片文件
	    public static boolean base64ToImage(String base64, File path) {// 对字节数组字符串进行Base64解码并生成图片
	    	if (base64 == null){ // 图像数据为空
	    		return false;
	    	}
	    	BASE64Decoder decoder = new BASE64Decoder();
	    	try {
	    		// Base64解码
	    		byte[] bytes = decoder.decodeBuffer(base64);
	    		for (int i = 0; i < bytes.length; ++i) {
	    			if (bytes[i] < 0) {// 调整异常数据
	    				bytes[i] += 256;
	    			}
	    		}
	    		// 生成jpeg图片
	    		OutputStream out = new FileOutputStream(path);
	    		out.write(bytes);
	    		out.flush();
	    		out.close();
	    		return true;
	    	} catch (Exception e) {
	    		e.printStackTrace();	
	    		return false;
	    	}	
	    }
	    
		//上传头像
		@SuppressWarnings("rawtypes")
		public String uploadPic() throws IOException {
			HttpServletRequest request = ServletActionContext.getRequest();
			int position  ;//获取"."的位置
			String  extendstion  = null;//获取当前文件的后缀名
			User user_pic = (User) request.getSession().getAttribute("user");
			int user_id = user_pic.getId();
			boolean num = false;//判断是否更新成功
			int isSuccess = 1 ;
			String path_pic = null;//图片相对路径;
			String resultName = null;			
			String realpath = request.getSession().getServletContext().getRealPath("/images/upload/");
			if(fileFileName==null||(fileFileName.trim().equals(""))){	
				this.addFieldError("file", "文件不能为空");
				resultName ="error";
				num=false;
			}else{
				position = fileFileName.lastIndexOf(".");
				extendstion  = fileFileName.substring(position+1);
				if(extendstion.equalsIgnoreCase("png")||extendstion.equalsIgnoreCase("jpeg")||extendstion.equalsIgnoreCase("jpg")){
				base64 = base64.substring(22);	
				targetName = generateFileName(fileFileName);
				path_pic = "images\\upload\\"+user_id+"\\"+targetName;					
				File parentDir = new File(realpath+"/"+user_id,targetName);
				 //  先创建文件所在的目录
				parentDir.getParentFile().mkdirs();
	            try {
	             // 创建新文件
	            	parentDir.createNewFile();
	            } catch (IOException e) {
	            	tissue="由于网络原因上传失败";
	                e.printStackTrace();
	            }				
				num  = base64ToImage(base64, parentDir);
					if(num){				
						isSuccess = userser.uploadPic(user_id,path_pic);						
						List user_upload = userser.searchUser(user_pic.getUserName());
						resultName = "upload_success";	
						tissue="上传成功";
						User user = (User)user_upload.get(0);
						request.getSession().setAttribute("user",user);								
					}else if(isSuccess==0){
						tissue="由于网络原因上传失败";
						resultName = "error";				
					}	
				}else{
					tissue="仅支持JPEG,PNG格式的图片";
					resultName = "error";	 				
	 			} 			
			}
	
			
			return resultName;

		}
		//变换文件名称
		public String generateFileName(String fileName){
			DateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
			String formatdate = format.format(new Date());
			int random = new Random().nextInt(10000);
			int position = fileName.lastIndexOf(".");
			String  extendstion  = fileName.substring(position);//后缀名		
			String newfileNmae = formatdate+random+extendstion;
			return newfileNmae;			
		}
		
		
		
	    public String goToReturnPassword(){
			return "returnpassword";   	
	    }
	    
	    public String goToRegister(){
			return "returnregister";   	
	    }	
	    
	    public String goToSuggestion(){
			return "returnsuggest";   	
	    }		    
	    

	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}

	public String getNewpassword() {
		return newpassword;
	}

	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}



	public String getOldpassword() {
		return oldpassword;
	}



	public void setOldpassword(String oldpassword) {
		this.oldpassword = oldpassword;
	}



	public String getUser_oldpassword() {
		return user_oldpassword;
	}



	public void setUser_oldpassword(String user_oldpassword) {
		this.user_oldpassword = user_oldpassword;
	}


	public String getTissue() {
		return tissue;
	}


	public void setTissue(String tissue) {
		this.tissue = tissue;
	}


	public boolean isJude() {
		return jude;
	}


	public void setJude(boolean jude) {
		this.jude = jude;
	}


	public File getFile() {
		return file;
	}


	public void setFile(File file) {
		this.file = file;
	}


	public String getFileFileName() {
		return fileFileName;
	}


	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}


	public String getTargetName() {
		return targetName;
	}


	public void setTargetName(String targetName) {
		this.targetName = targetName;
	}


	public String getDir() {
		return dir;
	}


	public void setDir(String dir) {
		this.dir = dir;
	}


	public UserService getUserser() {
		return userser;
	}


	public void setUserser(UserService userser) {
		this.userser = userser;
	}


	public String getBase64() {
		return base64;
	}


	public void setBase64(String base64) {
		this.base64 = base64;
	}


	public Role getRole() {
		return role;
	}


	public void setRole(Role role) {
		this.role = role;
	}


	




	
}
