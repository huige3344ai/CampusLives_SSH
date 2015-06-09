package com.zhbit.actions.lostandfind;

import java.util.List;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionSupport;
import com.zhbit.domain.lostandfind.Lost;
import com.zhbit.services.lostandfind.LostService;


public class LostAction extends ActionSupport{
	private Integer id;
	private String lostname;
	private String lostername;
	private String address;
	private String tel;
	private String description;
	private String promulgator;
	private Lost lost;
	private List<Lost> lostlist;

	
	@Resource
	private LostService lostser;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getLostname() {
		return lostname;
	}
	public void setLostname(String lostname) {
		this.lostname = lostname;
	}
	public String getLostername() {
		return lostername;
	}
	public void setLostername(String lostername) {
		this.lostername = lostername;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Lost getLost() {
		return lost;
	}
	public void setLost(Lost lost) {
		this.lost = lost;
	}
		public String getPromulgator() {
		return promulgator;
	}
	public void setPromulgator(String promulgator) {
		this.promulgator = promulgator;
	}
	public String addlost(){		
		Lost l1 = lostser.insertLost(lost);//±£¥Ê”√ªß
		if(l1!=null){
			return SUCCESS;				
		}else{
			return "lostadd";
		}
	}
	
	public String lostshow(){
		lostlist=lostser.getLost();
		return "list";
	}
	
	public List<Lost> getLostlist() {
		return lostlist;
	}
	public void setLostlist(List<Lost> lostlist) {
		this.lostlist = lostlist;
	}


	

}
