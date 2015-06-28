package com.zhbit.actions.lostandfind;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.zhbit.domain.lostandfind.Find;
import com.zhbit.domain.lostandfind.Lost;
import com.zhbit.domain.lostandfind.Lostreply;
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
	private List<Lostreply> lostreplylist;
	private Lostreply lostreply;
	private int lostid;
	private List<Find> findlist;
	private String username;
	private int rid;
	
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
			return "lostsuccess";				
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
	public Lostreply getLostreply() {
		return lostreply;
	}
	public void setLostreply(Lostreply lostreply) {
		this.lostreply = lostreply;
	}
	public List<Lostreply> getLostreplylist() {
		return lostreplylist;
	}
	public void setLostreplylist(List<Lostreply> lostreplylist) {
		this.lostreplylist = lostreplylist;
	}
	public int getLostid() {
		return lostid;
	}
	public void setLostid(int lostid) {
		this.lostid = lostid;
	}

	
	public String lostcheck(){
		HttpServletRequest request = ServletActionContext.getRequest();
		request.getSession().setAttribute("lostid",lostid);
		lostlist=lostser.getoneLost(lostid);
		setLostreplylist(lostser.getLostreply(lostid));
		return "check";		
	}
	
	public String execute() throws Exception{
		lostser.insertLostreply(lostreply);
		return "success";
	}
	
	public String lostcheck2(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		lostid=Integer.parseInt(session.getAttribute("lostid").toString());
		lostlist=lostser.getoneLost(lostid);
		setLostreplylist(lostser.getLostreply(lostid));
		return "check";		
	}
	
	public String allshow(){
		lostlist=lostser.getpersonalLost(username);
		findlist=lostser.getpersonalFind(username);
		return "alllist";
	}
	
	public String lostrevise(){
		HttpServletRequest request = ServletActionContext.getRequest();
		request.getSession().setAttribute("lostid",lostid);
		lostlist=lostser.getoneLost(lostid);
		return "revise";
	}
	
	public String lostrevise2(){
		Lost l1=lostser.updateLost(lost);
		if(l1!=null){
			return "lostsuccess";				
		}else{
			return "revise";
		}
	}
	
	public List<Find> getFindlist() {
		return findlist;
	}
	public void setFindlist(List<Find> findlist) {
		this.findlist = findlist;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}

	public String deletelost(){
		HttpServletRequest request = ServletActionContext.getRequest();
		request.getSession().setAttribute("lostid",lostid);
		lostser.deleteLost(lostid);
		lostser.deleteLostreply(lostid);
		return "deletesuccess";
		
	}
	public String lostandfind(){
		if(rid==2){
			lostlist=lostser.getLost();
			return "manage";
		}
		else
			return "lostadd";			
		}
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
}