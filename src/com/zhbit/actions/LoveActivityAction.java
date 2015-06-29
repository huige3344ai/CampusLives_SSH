package com.zhbit.actions;

import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.mapping.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.apache.struts2.interceptor.ServletResponseAware;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.zhbit.domain.ActivityApply;
import com.zhbit.domain.LoveActivity;
import com.zhbit.domain.User;
import com.zhbit.services.AcService;
import com.zhbit.services.ApService;



public class LoveActivityAction extends ActionSupport{
	
	private javax.servlet.http.HttpServletResponse response;

	LoveActivity loveActivity;
	LoveActivity loAc;
	
	ActivityApply activityApply;
	
	List<LoveActivity> activityList;
	List<ActivityApply> applyList;
	Short u_id;
	Short apnoForCancel;//���ݱ����ţ�ɾ��ĳ������� ������¼
    Short acidForDelete;//���ݻid ,ɾ��ĳ������Ļ
	Short acidForUpdate;//���ݻid, �޸Ļ��Ϣ

	@Resource
	AcService acService;
	@Resource
	ApService apService;
	
	public LoveActivity getLoAc() {
		return loAc;
	}

	public void setLoAc(LoveActivity loAc) {
		this.loAc = loAc;
	}

	
	public Short getAcidForUpdate() {
		return acidForUpdate;
	}

	public void setAcidForUpdate(Short acidForUpdate) {
		this.acidForUpdate = acidForUpdate;
	}
	
	public Short getAcidForDelete() {
		return acidForDelete;
	}

	public void setAcidForDelete(Short acidForDelete) {
		this.acidForDelete = acidForDelete;
	}
 
	
	public Short getApnoForCancel() {
		return apnoForCancel;
	}

	public void setApnoForCancel(Short apnoForCancel) {
		this.apnoForCancel = apnoForCancel;
	}
	
	public Short getU_id() {
		return u_id;
	}

	public void setU_id(Short u_id) {
		this.u_id = u_id;
	}
	
	public ActivityApply getActivityApply() {
		return activityApply;
	}

	public void setActivityApply(ActivityApply activityApply) {
		this.activityApply = activityApply;
	}

	public List<ActivityApply> getApplyList() {
		return applyList;
	}

	public void setApplyList(List<ActivityApply> applyList) {
		this.applyList = applyList;
	}

	public ApService getApService() {
		return apService;
	}

	public void setApService(ApService apService) {
		this.apService = apService;
	}

	public LoveActivity getLoveActivity() {
		return loveActivity;
	}

	public void setLoveActivity(LoveActivity loveActivity) {
		this.loveActivity = loveActivity;
	}

	public List<LoveActivity> getActivityList() {
		return activityList;
	}

	public void setActivityList(List<LoveActivity> activityList) {
		this.activityList = activityList;
	}

	public AcService getAcService() {
		return acService;
	}

	public void setAcService(AcService acService) {
		this.acService = acService;
	}

	//��ת�����Ļ��ҳ�棬����ʼ��---1
	public String toLoveActivity() throws Exception{
		System.out.print("\n...login to loveactivity the first time......\n");
		//��ȡȫ���İ��Ļ����������ҳ
		activityList=acService.findAll();
		System.out.print("activityList:"+activityList.size());
		User user=(User)ActionContext.getContext().getSession().get("user");
		ActionContext.getContext().getSession().put("user",user);	
		return "to_love_activity";
	}
	
	//��ת������� ҳ��,��д������Ϣ---2
	public String toApplyActivity() throws Exception{
		User user=(User)ActionContext.getContext().getSession().get("user");
		ActionContext.getContext().getSession().put("user",user);	
		return "to_apply_activity";
	}
	
	//��ת���ɾ��ҳ�棬-----3
    public String toDeleteActivity() throws Exception{
    	activityList=acService.findAll();//�г����л��
    	User user=(User)ActionContext.getContext().getSession().get("user");
		ActionContext.getContext().getSession().put("user",user);	
		return "to_delete_activity";
	}
	
	//��ת���鿴�����ҳ��-----4
		public String toLookActivity(){
			User user=(User)ActionContext.getContext().getSession().get("user");
			ActionContext.getContext().getSession().put("user",user);	
			return "to_look_activity";
		}
		
	 //��ת���鿴��������ҳ�棬����ѡ��ȡ������----5
		public String toCheckCancelApply() throws Exception{
			if(u_id!=-1){//�û�id��Ч
				User user=(User)ActionContext.getContext().getSession().get("user");//map    
				if(user!=null&&user.getRole().getRid()==2){//����Ա
					applyList=apService.findAll();
				}else{//��ͨ�û�
				   applyList=apService.findAPById(u_id);//��ѯĳ���û��ı������
				}
			  }
			return "to_check_cancel_apply";
		}
		
		//��ת���޸Ļҳ��----6
		public String toUpdateActivity() throws Exception{
			User user=(User)ActionContext.getContext().getSession().get("user");
			ActionContext.getContext().getSession().put("user",user);	
			activityList=acService.findAll();//�г����л��
			return "to_update_activity";
		}
		
	 ///////////////////////////////////////////
		
	//��Ӱ��Ļ���ٷ�����ҳ��
	public String addActivity() throws Exception{
		
		User user=(User)ActionContext.getContext().getSession().get("user");
		ActionContext.getContext().getSession().put("user",user);	
		
		if(loveActivity!=null)//�Ƚ���һ���жϿ����Ƿ�Ϊ��
		{
		  System.out.print("t="+loveActivity.getAcContent());
		  System.out.print("\n...add loveactivity  success ......\n");
		  acService.save(loveActivity);//��ӻ�����ݿ�
		  activityList=acService.findAll();
		  ActionContext.getContext().getSession().put("themeList", activityList);
		  ActionContext.getContext().getSession().put("the.TContent", loveActivity.getAcContent());
		  ActionContext.getContext().getSession().put("the.TId", loveActivity.getAcId());
		  
		  
		  System.out.print("tttttttttttttt  !e:"+loveActivity.getAcContent());
		  return "add_AC_success";//��ӻ�ɹ�
		}
		else {
			System.out.print("\n...add loveactivity fail  ......\n");
			return "add_AC_fail";//��ӻʧ��
		}
	
	} 
	
	//ɾ������ɹ������ת�����ҳ��
	public String  deleteActivity() throws Exception{
 
		User user=(User)ActionContext.getContext().getSession().get("user");
		ActionContext.getContext().getSession().put("user",user);	
		int deleteTag=0; 
		if(acidForDelete!=null&&acidForDelete!=0){
			List apid=apService.findAPByAcId(acidForDelete);//�ӱ���������Ƿ�������
            System.out.println("apid  size is "+apid.size());
	        if(apid.size()>0){
	        	deleteTag=1;
	       }
	
			if(deleteTag==1){
				//this.addActionMessage("ɾ��ʧ�ܡ�");
				return "delete_AC_fail";//ɾ���ʧ�ܡ�
			}
			acService.deleteAcByID(acidForDelete);//ɾ������
			activityList=acService.findAll();//����ʣ��������ת�����ҳ��
			
			return "delete_AC_success";
		}
		return "delete_AC_fail";
		

		
	}
	
	//�޸Ļ��Ϣ��
	public String updateActivity() throws Exception{
		User user=(User)ActionContext.getContext().getSession().get("user");
		ActionContext.getContext().getSession().put("user",user);	
		
		if(loAc==null){
			 
			 System.out.print("loAc is  null");
			 return "update_AC_fail"; 
		 }
		 System.out.print("loAc is not  null");
		  loveActivity=loAc;
			//acService.updateActivity(lA.getAcId(),lA);//���Ļ��Ϣ--����1
		     acService.updateActivity2(loveActivity);//���Ļ��Ϣ--����2
		     activityList=acService.findAll();//���Ҹ��ĺ�Ļ��Ϣ������ת�����ҳ��
			return "update_AC_success";
		
		
	}
	
	
	
	//��ӱ���
	public String addApply(){
		User user=(User)ActionContext.getContext().getSession().get("user");
		ActionContext.getContext().getSession().put("user",user);	
		if(activityApply!=null){
			
			System.out.print("\n...add activityApply  success ......\n");
			apService.save(activityApply);
			System.out.print("apno="+activityApply.getApNo());
			return "add_AP_success";
		}
		return "add_AP_fail";
	}
	
	 //ȡ������
	public String toCancelApply(){
		User user=(User)ActionContext.getContext().getSession().get("user");
		ActionContext.getContext().getSession().put("user",user);	
		if(apnoForCancel!=null&&u_id!=null){
			apService.deleteByApNo(apnoForCancel);//���ݱ����ţ�ɾ��ĳ��������¼
				if(user.getRole().getRid()==2){//��ɫidΪ2��˵�����ǹ���Ա
					applyList=apService.findAll();
				}else{//����Ϊ��ͨ�û�
				
					applyList=apService.findAPById(u_id);
				}
			return "cancel_AP_success";
		  }else{
			  System.out.print("apnoForCancel is null");
		  }
		return "cancel_AP_fail";
	}
	
	
	
	
	

}
