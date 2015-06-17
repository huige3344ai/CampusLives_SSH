package com.zhbit.actions.lostandfind;

import java.util.List;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionSupport;
import com.zhbit.domain.lostandfind.Find;
import com.zhbit.domain.lostandfind.Lost;
import com.zhbit.services.lostandfind.LostService;


public class FindAction extends ActionSupport{
	private Integer id;
	private String findname;
	private String findername;
	private String address;
	private String tel;
	private String description;
	private String promulgator;
	private Find find;
	private List<Find> findlist;
	
	@Resource
	private LostService lostser;
	
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getFindname() {
		return findname;
	}
	public void setFindname(String findname) {
		this.findname = findname;
	}
	public String getFindername() {
		return findername;
	}
	public void setFindername(String findername) {
		this.findername = findername;
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
	public String getPromulgator() {
		return promulgator;
	}
	public void setPromulgator(String promulgator) {
		this.promulgator = promulgator;
	}
	public Find getFind() {
		return find;
	}
	public void setFind(Find find) {
		this.find = find;
	}
	
	
	public String addfind(){		
		Find f1 = lostser.insertFind(find);
		if(f1!=null){
			return SUCCESS;				
		}else{
			return "findadd";
		}
	}
	
	public String findshow(){
		findlist=lostser.getFind();
		return "list";
		
		
	}
	public List<Find> getFindlist() {
		return findlist;
	}
	public void setFindlist(List<Find> findlist) {
		this.findlist = findlist;
	}
}
