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
	private User user;//�û���
	private Role role;//��ɫ��
	private String repassword;//�ظ�����
	private String newpassword;//��ȡ�����������
	private String oldpassword;//��ȡ ����ľ�����
	private String user_oldpassword;//���ھ��������ж�
	private String tissue;//������
	private boolean jude ;//������
	
	private File file;//��װ�ϴ��ļ�����
	private String base64;//jq base64����
	private String fileFileName;//��װ�ϴ��ļ�����������
	private String targetName;//�����ļ���������
	private String dir;//�����ļ�·������

	
	@Resource
	private UserService userser;

	
		//ע���û�	
		public String register(){			
			if(userser.searchUser(user.getUserName()).isEmpty()){//�ж��û����Ƿ����
			user.setRole(role);
			User num = userser.insertUser(user);//�����û�
				if(num!=null){
					return LOGIN;				
				}else{
					tissue	= "ע��ʧ�������³��ԣ�����";	
					return INPUT;
				}
			}
			else{	
			tissue	= "�û����Ѵ��ڣ�����������û���������";
			return INPUT;
			}
			

			
		}
	

		//��¼У��
		@SuppressWarnings("rawtypes")
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
			tissue = "�����û���Ϣ�ɹ�";
			return "updatesuccess";	
		}else{
			tissue = "����ʧ�ܣ������ԣ�����";
			return "updateabort";	
		}		
	  }
		
		//�����û�����
		public String  exchangeType(){
		User user_type = null;
		if(userser.searchUser(user.getUserName()).isEmpty()){
			tissue = "�û�������";
			return "updateabort";
		}else{
			user_type = (User) userser.searchUser(user.getUserName()).get(0);
			if(user_type.getRole().getRid()==2){
				tissue = "����Ա��Ϣ�������޸�";	
				return "updateabort";					
			}else{
			user.setRole(role);
			user_type = userser.updateUserType(user);							
			if(user_type==null){
				tissue = "�����û���Ϣʧ�ܣ��Ժ���";	
				return "updateabort";
			}else{
				tissue = "�����û���Ϣ�ɹ�";	
				return "updatesuccess";
			}
			
			}
		}	
		
		
	  }	
		//��������	
		public String updateLogin(){	
			 User num = userser.updatePassword(user);
			 if(num!=null){
				loginOut();
				return  "update_passwor_success";	
			}else{	
				tissue = "����ʧ�ܣ������ԣ�����";
				return  "update_passwor_abort";
				}
	
		
		}	

		
		//�һ�����
		@SuppressWarnings("rawtypes")
		public String returnPassword(){																	
			User num = null;
			List userEmail = userser.searchUser(user.getUserName());			
			if(userEmail==null){
				tissue	= "�û���������";
				jude = false;
			}else if(!((User) userEmail.get(0)).getEmail().equals(user.getEmail())){				
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
		
		


	    //base64ת����ͼƬ�ļ�
	    public static boolean base64ToImage(String base64, File path) {// ���ֽ������ַ�������Base64���벢����ͼƬ
	    	if (base64 == null){ // ͼ������Ϊ��
	    		return false;
	    	}
	    	BASE64Decoder decoder = new BASE64Decoder();
	    	try {
	    		// Base64����
	    		byte[] bytes = decoder.decodeBuffer(base64);
	    		for (int i = 0; i < bytes.length; ++i) {
	    			if (bytes[i] < 0) {// �����쳣����
	    				bytes[i] += 256;
	    			}
	    		}
	    		// ����jpegͼƬ
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
	    
		//�ϴ�ͷ��
		@SuppressWarnings("rawtypes")
		public String uploadPic() throws IOException {
			HttpServletRequest request = ServletActionContext.getRequest();
			int position  ;//��ȡ"."��λ��
			String  extendstion  = null;//��ȡ��ǰ�ļ��ĺ�׺��
			User user_pic = (User) request.getSession().getAttribute("user");
			int user_id = user_pic.getId();
			boolean num = false;//�ж��Ƿ���³ɹ�
			int isSuccess = 1 ;
			String path_pic = null;//ͼƬ���·��;
			String resultName = null;			
			String realpath = request.getSession().getServletContext().getRealPath("/images/upload/");
			if(fileFileName==null||(fileFileName.trim().equals(""))){	
				this.addFieldError("file", "�ļ�����Ϊ��");
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
				 //  �ȴ����ļ����ڵ�Ŀ¼
				parentDir.getParentFile().mkdirs();
	            try {
	             // �������ļ�
	            	parentDir.createNewFile();
	            } catch (IOException e) {
	            	tissue="��������ԭ���ϴ�ʧ��";
	                e.printStackTrace();
	            }				
				num  = base64ToImage(base64, parentDir);
					if(num){				
						isSuccess = userser.uploadPic(user_id,path_pic);						
						List user_upload = userser.searchUser(user_pic.getUserName());
						resultName = "upload_success";	
						tissue="�ϴ��ɹ�";
						User user = (User)user_upload.get(0);
						request.getSession().setAttribute("user",user);								
					}else if(isSuccess==0){
						tissue="��������ԭ���ϴ�ʧ��";
						resultName = "error";				
					}	
				}else{
					tissue="��֧��JPEG,PNG��ʽ��ͼƬ";
					resultName = "error";	 				
	 			} 			
			}
	
			
			return resultName;

		}
		//�任�ļ�����
		public String generateFileName(String fileName){
			DateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
			String formatdate = format.format(new Date());
			int random = new Random().nextInt(10000);
			int position = fileName.lastIndexOf(".");
			String  extendstion  = fileName.substring(position);//��׺��		
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
