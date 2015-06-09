package com.zhbit.services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.zhbit.dao.NoteDao;
import com.zhbit.domain.Follownote;
import com.zhbit.domain.Note;

@Transactional
public class NoteServiceImpl implements NoteService {

	@Resource
	NoteDao nd;
	
	public Note insertNote(Note note) {
		// TODO Auto-generated method stub
		
		return nd.insertNote(note);
	}

	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Note>searchNoteAll(int pageNo,int pageSize) {
		// TODO Auto-generated method stub		
		return nd.searchNoteAll(pageNo, pageSize);
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public int getPageCount(int pageSize) {
		// TODO Auto-generated method stub
		return nd.getPageCount(pageSize);

	}	
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public Note searchNoteOne(int nid) {
		// TODO Auto-generated method stub
		return nd.searchNoteOne(nid);
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Follownote> searchAnswerAll(int nid) {
		// TODO Auto-generated method stub
		return nd.searchAnswerAll(nid);
	}

	public Follownote insertAnswer(Follownote answer) {
		// TODO Auto-generated method stub
		return nd.insertAnswer(answer);
	}




}
