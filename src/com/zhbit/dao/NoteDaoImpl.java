package com.zhbit.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.zhbit.domain.Follownote;
import com.zhbit.domain.Note;
import com.zhbit.domain.User;
import com.zhbit.services.NoteServiceImpl;


public class NoteDaoImpl implements NoteDao {
	@Resource
	private SessionFactory sessionFactory;

	

	public Note insertNote(Note note) {
		// TODO Auto-generated method stub
	
			HttpServletRequest request = ServletActionContext.getRequest();				
			User user = (User) request.getSession().getAttribute("user");
			note.setUser(user);			
			note.setTitle(note.getTitle());
			note.setContent(note.getContent());
			note.setNtime(note.getNtime());
			sessionFactory.getCurrentSession().save(note);
		return note;
	}
	
	//分页查询
	@SuppressWarnings("unchecked")
	public List<Note> searchNoteAll(int pageNo,int pageSize) {
		List<Note> notes = null;
		try {
			notes = new ArrayList<Note>();
			String hql = "from Note order by nid desc";  
			Query query = sessionFactory.getCurrentSession().createQuery(hql); 
			query.setFirstResult((pageNo-1)*pageSize);
			query.setMaxResults(pageSize);
			notes = query.list();
			return notes;			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return notes;
		
	}
	
	//获取页数
	@Override
	public int getPageCount(int pageSize) {
		// TODO Auto-generated method stub
		String hql = "select count(nid) from Note";
		int count = 0 ;//总记录数
		int pageCount = 0 ; //总页数
		try {
			Query query = sessionFactory.getCurrentSession().createQuery(hql); 
			 long temp = (Long)query.uniqueResult();
			 count = (int)temp;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}	
		
		if(count%pageSize == 0){
			pageCount = count/pageSize;
		}else{
			pageCount = count/pageSize+1;
		}
		return pageCount;
	}	
	
	//获取帖子详情
	public Note searchNoteOne(int nid) {
		Note notes = new Note();
		
		// TODO Auto-generated method stub
		try {
			List list ;
			String hql = "from Note where nid ="+nid;  
			Query query = sessionFactory.getCurrentSession().createQuery(hql); 
			list = query.list();
			if(list.size()>0){
				notes = (Note)query.list().get(0);	
			}else{
				notes.setNid(0);
			}
				
						
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return notes;
		
	}
	
	//获取帖子回复
	@SuppressWarnings("unchecked")
	public List<Follownote> searchAnswerAll(int nid) {
		List<Follownote> answers = null;
		// TODO Auto-generated method stub
		try {
			answers = new ArrayList<Follownote>();
			String hql = "from Follownote where nid = "+nid;  
			Query query = sessionFactory.getCurrentSession().createQuery(hql); 
			answers = query.list();		
			return answers;						
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return answers;
		
	}	

	
	public Follownote insertAnswer(Follownote answer) {		
		sessionFactory.getCurrentSession().persist(answer);
		return answer;		

	}


	
	
}
