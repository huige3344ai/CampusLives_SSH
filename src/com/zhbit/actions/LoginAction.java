package com.zhbit.actions;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
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
	private User user;
	private String repassword;
	private String newpassword;//获取输入的新密码
	private String oldpassword;//获取 输入的旧密码
	private String user_oldpassword;//用于救命检验判断
	private String tissue;//检验结果
	private boolean jude ;//检验结果
	
	@Resource
	private UserService userser;

	
		//注册用户	
		public String register(){		
			User num = userser.insertUser(user);//保存用户
			if(num!=null){
				return LOGIN;				
			}else{
				return INPUT;
			}
		}
	

		//登录校验
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
			return "updatesuccess";	
		}else{
			return "updateabort";	
		}
		
	  }
	
		//更新密码	
		public String updateLogin(){	
			 User num = userser.updatePassword(user);
			 if(num!=null){
				loginOut();
				return  "update_passwor_success";	
			}else{	
				return  "update_passwor_abort";
				}
	
		
		}	
		//找回密码
		public String returnPassword(){
			HttpServletRequest request = ServletActionContext.getRequest();	
																	
			User num = null;
			List userEmail = userser.searchUser(user.getUserName());
			if(userEmail==null){
				tissue	= "用户名不存在";
				jude = false;
			}else if(!userEmail.get(0).toString().equals(user.getEmail())){
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
		
	    public String goToReturnPassword(){
			return "returnpassword";   	
	    }
	    
	    public String goToRegister(){
			return "returnregister";   	
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


	




	
}
