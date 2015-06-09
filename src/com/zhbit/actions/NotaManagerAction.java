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
	
	private Note note ;	//�������ݡ� ��������
	private int nid;//��������������õ���id
	private Follownote answer;//���ͻظ�����
	private List<Note> notes ;//��ҳ���Ӽ���;
	private List<Follownote> answers;//�ظ����ݼ���
	private int pageNo = 1;
	private int pagesize = 10;
	private int pageCount ;
	
	//����
	public String sendNote() {		
		Note note_insert= noteser.insertNote(note);
		if(note_insert!=null){
		return SUCCESS;
		}else{
		return ERROR;
		}
		
		
	}
	
	//��ҳ��ȡ��������
	@Override
	public String execute() throws Exception {
		pageCount = noteser.getPageCount(pagesize);//��ȡ��ҳ��
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
	

	
	//���ݱ�����ת��ȡ����
	public String noteGo(){
		HttpServletRequest request = ServletActionContext.getRequest();	
		note = noteser.searchNoteOne(nid);
		request.getSession().setAttribute("nid", nid);
		request.getSession().setAttribute("note", note);	
		updateAnswer();
		return "notego";				
	}
	
	//����ظ�
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
	
	//���»ظ�����
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
