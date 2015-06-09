package com.zhbit.dao;

import java.util.List;

import com.zhbit.domain.Follownote;
import com.zhbit.domain.Note;



public interface NoteDao {
	public Note insertNote(Note note);
	
	public List<Note> searchNoteAll(int pageNo,int pageSize);//分页查询
	
	public int getPageCount(int pageSize);//获取页数
	
	public Note searchNoteOne(int nid);
	
	public List<Follownote> searchAnswerAll(int nid);
	
	public Follownote insertAnswer(Follownote answer);
	

}
