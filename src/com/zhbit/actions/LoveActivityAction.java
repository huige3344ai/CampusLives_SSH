package com.zhbit.actions;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.zhbit.domain.LoveActivity;
import com.zhbit.services.AcService;
import com.zhbit.services.ApService;



public class LoveActivityAction extends ActionSupport {
	
	
	LoveActivity loveActivity;
	
	List<LoveActivity> activityList;
	
	@Resource
	AcService acService;
	@Resource
	ApService apService;
	
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

	//��ʼ�� ���Ļ��ҳ��
	public String toLoveActivity(){
		System.out.print("\n...login to loveactivity the first time......\n");
		//��ȡȫ���İ��Ļ����������ҳ
		activityList=acService.findAll();
		System.out.print("activityList:"+activityList.size());
		
		return "love_activity";
	}
	
	//��Ӱ��Ļ���ٷ�����ҳ��
	public String addActivity(){
		
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
	
	
	
	

}
