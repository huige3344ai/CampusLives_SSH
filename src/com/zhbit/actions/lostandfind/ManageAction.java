package com.zhbit.actions.lostandfind;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.zhbit.domain.lostandfind.Find;
import com.zhbit.domain.lostandfind.Findreply;
import com.zhbit.domain.lostandfind.Lost;
import com.zhbit.domain.lostandfind.Lostreply;
import com.zhbit.services.lostandfind.manageServise;


public class ManageAction extends ActionSupport{
	
	private Lost lost;
	private List<Lost> lostlist;
	private List<Lostreply> lostreplylist;
	private Lostreply lostreply;
	private int lostid;
	private Find find;
	private List<Find> findlist;
	private List<Findreply> findreplylist;
	private Findreply findreply;
	private int findid;
	private int replyid;
	
	@Resource
	private manageServise mser;
	
	public String lostshow(){
		lostlist=mser.getLost();
		return "lostshow";
	}
	
	public String lostcheck(){
		HttpServletRequest request = ServletActionContext.getRequest();
		request.getSession().setAttribute("lostid",lostid);
		lostlist=mser.getoneLost(lostid);
		setLostreplylist(mser.getLostreply(lostid));
		return "lostcheck";		
	}
	
	public String deletelost(){
		HttpServletRequest request = ServletActionContext.getRequest();
		request.getSession().setAttribute("lostid",lostid);
		mser.deleteLost(lostid);
		mser.deleteLostreply(lostid);
		return "deletesuccess";
		
	}
	public String deletelostreply(){
		HttpServletRequest request = ServletActionContext.getRequest();
		request.getSession().setAttribute("replyid",replyid);
		mser.deleteLostonereply(replyid);
		return "deletesuccess";
		
	}
	
	
	public String findshow(){
		findlist=mser.getFind();
		return "findshow";
			
	}
	
	public String findcheck(){
		HttpServletRequest request = ServletActionContext.getRequest();
		request.getSession().setAttribute("findid",findid);
		findlist=mser.getoneFind(findid);
		setFindreplylist(mser.getFindreply(findid));
		return "checkfind";		
	}
	
	public String deletefind(){
		HttpServletRequest request = ServletActionContext.getRequest();
		request.getSession().setAttribute("findid",findid);
		mser.deleteFind(findid);
		mser.deleteFindreply(findid);
		return "deletesuccess";
		
	}
	public String deletefindreply(){
		HttpServletRequest request = ServletActionContext.getRequest();
		request.getSession().setAttribute("replyid",replyid);
		mser.deleteFindonereply(replyid);
		return "deletesuccess";
		
	}
	public String execute() throws Exception{
		return "lostshow";
	}
	

	public Lost getLost() {
		return lost;
	}

	public void setLost(Lost lost) {
		this.lost = lost;
	}

	public List<Lost> getLostlist() {
		return lostlist;
	}

	public void setLostlist(List<Lost> lostlist) {
		this.lostlist = lostlist;
	}

	public List<Lostreply> getLostreplylist() {
		return lostreplylist;
	}

	public void setLostreplylist(List<Lostreply> lostreplylist) {
		this.lostreplylist = lostreplylist;
	}

	public Lostreply getLostreply() {
		return lostreply;
	}

	public void setLostreply(Lostreply lostreply) {
		this.lostreply = lostreply;
	}

	public int getLostid() {
		return lostid;
	}

	public void setLostid(int lostid) {
		this.lostid = lostid;
	}



	public Find getFind() {
		return find;
	}



	public void setFind(Find find) {
		this.find = find;
	}



	public List<Find> getFindlist() {
		return findlist;
	}



	public void setFindlist(List<Find> findlist) {
		this.findlist = findlist;
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



	public int getFindid() {
		return findid;
	}



	public void setFindid(int findid) {
		this.findid = findid;
	}

	public int getReplyid() {
		return replyid;
	}

	public void setReplyid(int replyid) {
		this.replyid = replyid;
	}
	

}
