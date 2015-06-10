package com.zhbit.actions;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import com.zhbit.domain.Follownote;
import com.zhbit.domain.Note;
import com.zhbit.domain.User;
import com.zhbit.services.NoteService;

public class NotaManagerAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	
	@Resource
	NoteService noteser;
	
	private Note note ;	//帖子数据、 货发帖子
	private int nid;//传到帖子详情表，用到的id
	private Follownote answer;//发送回复内容
	private List<Note> notes ;//主页帖子集合;
	private List<Follownote> answers;//回复内容集合
	private int pageNo = 1;
	private int pagesize = 10;
	private int pageCount ;
	
	//发布
	public String sendNote() {		
		Note note_insert= noteser.insertNote(note);
		if(note_insert!=null){
		return SUCCESS;
		}else{
		return ERROR;
		}
		
		
	}
	
	//主页获取所有内容
	@Override
	public String execute() throws Exception {
		pageCount = noteser.getPageCount(pagesize);//获取总页数
		if(pageCount<1){
			pageNo = 1;
		}else if(pageNo > pageCount){
			pageNo = pageCount;
		}else if(pageNo <= 0){
			pageNo = 1;
		}
		notes = noteser.searchNoteAll(pageNo, pagesize);		
		return "main";
	}
	

	
	//根据标题跳转获取内容
	public String noteGo(){
		HttpServletRequest request = ServletActionContext.getRequest();	
		note = noteser.searchNoteOne(nid);
		request.getSession().setAttribute("nid", nid);
		request.getSession().setAttribute("note", note);	
		updateAnswer();
		return "notego";				
	}
	
	//发表回复
	public String sendAnswer(){
		HttpServletRequest request = ServletActionContext.getRequest();	
		User user_answer = (User)request.getSession().getAttribute("user");		   
	  	Note note_answer = (Note)request.getSession().getAttribute("note");
	  	answer.setUser(user_answer);
	  	answer.setNote(note_answer);
		Follownote num = noteser.insertAnswer(answer);	
		updateAnswer();
		if(num!=null){				
			return "answer";
		}else{
			return ERROR;
		}
		
				
	}
	
	//更新回复内容
	public void  updateAnswer(){
		HttpServletRequest request = ServletActionContext.getRequest();	
		nid = (Integer) request.getSession().getAttribute("nid");
		answers = noteser.searchAnswerAll(nid);
		request.getSession().setAttribute("answers", answers);	
	}
	
	



	public void setNoteser(NoteService noteser) {
		this.noteser = noteser;
	}
	
	public String allNote(){		
		return null;
		
	}
	
	public Note getNote() {
		return note;
	}

	public void setNote(Note note) {
		this.note = note;
	}

	public int getNid() {
		return nid;
	}

	public void setNid(int nid) {
		this.nid = nid;
	}

	public Follownote getAnswer() {
		return answer;
	}

	public void setAnswer(Follownote answer) {
		this.answer = answer;
	}


	public List<Note> getNotes() {
		return notes;
	}


	public void setNotes(List<Note> notes) {
		this.notes = notes;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;		
	}

	public int getPagesize() {
		return pagesize;
	}

	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}





	

	

}
