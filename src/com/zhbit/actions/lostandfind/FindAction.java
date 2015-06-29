package com.zhbit.actions.lostandfind;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;



import com.opensymphony.xwork2.ActionSupport;
import com.zhbit.domain.lostandfind.Find;
import com.zhbit.domain.lostandfind.Findreply;

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
	private List<Findreply> findreplylist;
	private Findreply findreply;
	private int findid;
	
	
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
			return "findsuccess";				
		}else{
			return "findadd";
		}
	}
	
	public String findshow(){
		findlist=lostser.getFind();
		return "list";
			
	}
	
	public String findcheck(){
		HttpServletRequest request = ServletActionContext.getRequest();
		request.getSession().setAttribute("findid",findid);
		findlist=lostser.getoneFind(findid);
		setFindreplylist(lostser.getFindreply(findid));
		return "check";		
	}
	
	public String execute() throws Exception{
		lostser.insertFindreply(findreply);
		return "success";
	}
	
	public String findcheck2(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		findid=Integer.parseInt(session.getAttribute("findid").toString());
		findlist=lostser.getoneFind(findid);
		setFindreplylist(lostser.getFindreply(findid));
		return "check";		
	}
	
	
	
	public List<Find> getFindlist() {
		return findlist;
	}
	public void setFindlist(List<Find> findlist) {
		this.findlist = findlist;
	}
	public int getFindid() {
		return findid;
	}
	public void setFindid(int findid) {
		this.findid = findid;
	}
	public List<Findreply> getFindreplylist() {
		return findreplylist;
	}
	public void setFindreplylist(List<Findreply> findreplylist) {
		this.findreplylist = findreplylist;
	}
	public Findreply getFindreply() {
		return findreply;
	}
	public void setFindreply(Findreply findreply) {
		this.findreply = findreply;
	}
	
	
	public String findrevise(){
		HttpServletRequest request = ServletActionContext.getRequest();
		request.getSession().setAttribute("findid",findid);
		findlist=lostser.getoneFind(findid);
		return "revise";
	}
	
	public String findrevise2(){
		Find f1=lostser.updateFind(find);
		if(f1!=null){
			return "findsuccess";				
		}else{
			return "revise";
		}
	}
	
	public String deletefind(){
		HttpServletRequest request = ServletActionContext.getRequest();
		request.getSession().setAttribute("findid",findid);
		lostser.deleteFind(findid);
		lostser.deleteFindreply(findid);
		return "deletesuccess";
		
	}
}
