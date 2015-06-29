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
	Short apnoForCancel;//根据报名号，删除某条具体的 报名记录
    Short acidForDelete;//根据活动id ,删除某个具体的活动
	Short acidForUpdate;//根据活动id, 修改活动信息

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

	//跳转到爱心活动主页面，并初始化---1
	public String toLoveActivity() throws Exception{
		System.out.print("\n...login to loveactivity the first time......\n");
		//获取全部的爱心活动，现在在主页
		activityList=acService.findAll();
		System.out.print("activityList:"+activityList.size());
		User user=(User)ActionContext.getContext().getSession().get("user");
		ActionContext.getContext().getSession().put("user",user);	
		return "to_love_activity";
	}
	
	//跳转到报名活动 页面,填写报名信息---2
	public String toApplyActivity() throws Exception{
		User user=(User)ActionContext.getContext().getSession().get("user");
		ActionContext.getContext().getSession().put("user",user);	
		return "to_apply_activity";
	}
	
	//跳转到活动删除页面，-----3
    public String toDeleteActivity() throws Exception{
    	activityList=acService.findAll();//列出所有活动。
    	User user=(User)ActionContext.getContext().getSession().get("user");
		ActionContext.getContext().getSession().put("user",user);	
		return "to_delete_activity";
	}
	
	//跳转到查看活动详情页面-----4
		public String toLookActivity(){
			User user=(User)ActionContext.getContext().getSession().get("user");
			ActionContext.getContext().getSession().put("user",user);	
			return "to_look_activity";
		}
		
	 //跳转到查看报名详情页面，可以选择取消报名----5
		public String toCheckCancelApply() throws Exception{
			if(u_id!=-1){//用户id有效
				User user=(User)ActionContext.getContext().getSession().get("user");//map    
				if(user!=null&&user.getRole().getRid()==2){//管理员
					applyList=apService.findAll();
				}else{//普通用户
				   applyList=apService.findAPById(u_id);//查询某个用户的报名情况
				}
			  }
			return "to_check_cancel_apply";
		}
		
		//跳转到修改活动页面----6
		public String toUpdateActivity() throws Exception{
			User user=(User)ActionContext.getContext().getSession().get("user");
			ActionContext.getContext().getSession().put("user",user);	
			activityList=acService.findAll();//列出所有活动。
			return "to_update_activity";
		}
		
	 ///////////////////////////////////////////
		
	//添加爱心活动后，再返回主页面
	public String addActivity() throws Exception{
		
		User user=(User)ActionContext.getContext().getSession().get("user");
		ActionContext.getContext().getSession().put("user",user);	
		
		if(loveActivity!=null)//先进行一个判断看其是否为空
		{
		  System.out.print("t="+loveActivity.getAcContent());
		  System.out.print("\n...add loveactivity  success ......\n");
		  acService.save(loveActivity);//添加活动到数据库
		  activityList=acService.findAll();
		  ActionContext.getContext().getSession().put("themeList", activityList);
		  ActionContext.getContext().getSession().put("the.TContent", loveActivity.getAcContent());
		  ActionContext.getContext().getSession().put("the.TId", loveActivity.getAcId());
		  
		  
		  System.out.print("tttttttttttttt  !e:"+loveActivity.getAcContent());
		  return "add_AC_success";//添加活动成功
		}
		else {
			System.out.print("\n...add loveactivity fail  ......\n");
			return "add_AC_fail";//添加活动失败
		}
	
	} 
	
	//删除活动，成功后就跳转到活动主页面
	public String  deleteActivity() throws Exception{
 
		User user=(User)ActionContext.getContext().getSession().get("user");
		ActionContext.getContext().getSession().put("user",user);	
		int deleteTag=0; 
		if(acidForDelete!=null&&acidForDelete!=0){
			List apid=apService.findAPByAcId(acidForDelete);//从报名表查找是否有这个活动
            System.out.println("apid  size is "+apid.size());
	        if(apid.size()>0){
	        	deleteTag=1;
	       }
	
			if(deleteTag==1){
				//this.addActionMessage("删除失败。");
				return "delete_AC_fail";//删除活动失败。
			}
			acService.deleteAcByID(acidForDelete);//删除操作
			activityList=acService.findAll();//查找剩余活动，就跳转到活动主页面
			
			return "delete_AC_success";
		}
		return "delete_AC_fail";
		

		
	}
	
	//修改活动信息，
	public String updateActivity() throws Exception{
		User user=(User)ActionContext.getContext().getSession().get("user");
		ActionContext.getContext().getSession().put("user",user);	
		
		if(loAc==null){
			 
			 System.out.print("loAc is  null");
			 return "update_AC_fail"; 
		 }
		 System.out.print("loAc is not  null");
		  loveActivity=loAc;
			//acService.updateActivity(lA.getAcId(),lA);//更改活动信息--方法1
		     acService.updateActivity2(loveActivity);//更改活动信息--方法2
		     activityList=acService.findAll();//查找更改后的活动信息，再跳转到活动主页面
			return "update_AC_success";
		
		
	}
	
	
	
	//添加报名
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
	
	 //取消报名
	public String toCancelApply(){
		User user=(User)ActionContext.getContext().getSession().get("user");
		ActionContext.getContext().getSession().put("user",user);	
		if(apnoForCancel!=null&&u_id!=null){
			apService.deleteByApNo(apnoForCancel);//根据报名号，删除某条报名记录
				if(user.getRole().getRid()==2){//角色id为2，说明这是管理员
					applyList=apService.findAll();
				}else{//否则为普通用户
				
					applyList=apService.findAPById(u_id);
				}
			return "cancel_AP_success";
		  }else{
			  System.out.print("apnoForCancel is null");
		  }
		return "cancel_AP_fail";
	}
	
	
	
	
	

}
