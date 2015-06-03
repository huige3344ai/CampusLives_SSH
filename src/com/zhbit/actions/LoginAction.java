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
	private String newpassword;//��ȡ�����������
	private String oldpassword;//��ȡ ����ľ�����
	private String user_oldpassword;//���ھ��������ж�
	private String tissue;//������
	private boolean jude ;//������
	
	@Resource
	private UserService userser;

	
		//ע���û�	
		public String register(){		
			User num = userser.insertUser(user);//�����û�
			if(num!=null){
				return LOGIN;				
			}else{
				return INPUT;
			}
		}
	

		//��¼У��
		public  String  login(){
			List us  =  userser.searchUser_only(user.getUserName(), user.getPassword());		
			HttpServletRequest request = ServletActionContext.getRequest();		
			if(!us.isEmpty()){
			User user = (User)us.get(0);
			request.getSession().setAttribute("user",user);			
			return SUCCESS;	
			}else{
			tissue	= "�û����������벻��ȷ";
			return LOGIN;	
			}	
			
		}
	

		//�����û���Ϣ
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
	
		//��������	
		public String updateLogin(){	
			 User num = userser.updatePassword(user);
			 if(num!=null){
				loginOut();
				return  "update_passwor_success";	
			}else{	
				return  "update_passwor_abort";
				}
	
		
		}	
		//�һ�����
		public String returnPassword(){
			HttpServletRequest request = ServletActionContext.getRequest();	
																	
			User num = null;
			List userEmail = userser.searchUser(user.getUserName());
			if(userEmail==null){
				tissue	= "�û���������";
				jude = false;
			}else if(!userEmail.get(0).toString().equals(user.getEmail())){
				tissue	= "���䲻��ȷ";		
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


		
		//ע��
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
