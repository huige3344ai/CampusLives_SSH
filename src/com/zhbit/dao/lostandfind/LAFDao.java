package com.zhbit.dao.lostandfind;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;


import com.zhbit.domain.lostandfind.Find;
import com.zhbit.domain.lostandfind.Lost;



public class LAFDao {

	@Resource
	private SessionFactory sessionFactory;
	
	
	
	//���ʧ����Ϣ
	public Lost insertLost(Lost lost) {
		sessionFactory.getCurrentSession().persist(lost);
		return lost;
	}
	
	//��ѯʧ��
	public List<Lost> getLost() {
		List<Lost> losts = null;
		String hql = "from Lost order by id";		
		Query query = sessionFactory.getCurrentSession().createQuery(hql); 		
		losts =  query.list();
		return losts;
	}
	
	
	//��ѯһ��ʧ��
	public List<Lost> getoneLost(int id) {
		List<Lost> losts = null;
		String hql = "from Lost where id="+id+" ";		
		Query query = sessionFactory.getCurrentSession().createQuery(hql); 		
		losts =  query.list();
		return losts;
	}
	
	
	//����ʧ����Ϣ
	public Lost updateLost(Lost lost) {		
			String hql = "update Lost lost  set lost.lostname = ? , lost.lostername = ? , lost.address = ? , lost.tel = ? , lost.description = ? , lost.promulgator = ?where lost.id =?";  
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			query.setString(0, lost.getLostname());	
			query.setString(1, lost.getLostername());	
			query.setString(2, lost.getAddress());	
			query.setString(3, lost.getTel());			
			query.setString(4, lost.getDescription());
			query.setString(5, lost.getPromulgator());
			query.setInteger(6, lost.getId());
			query.executeUpdate();
	
		return lost;
	
	}
	
	
	//���ʰ������Ϣ
	public Find insertFind(Find find) {
		sessionFactory.getCurrentSession().persist(find);
		return find;
	}
	
	//��ѯʰ����
	public List<Find> getFind() {
		List<Find> finds = null;
		String hql = "from Find order by id";		
		Query query = sessionFactory.getCurrentSession().createQuery(hql); 		
		finds =  query.list();
		return finds;
	}
	
	
	//��ѯһ��ʰ����
	public List<Find> getoneFind(int id) {
		List<Find> finds = null;
		String hql = "from Find where id="+id+" ";		
		Query query = sessionFactory.getCurrentSession().createQuery(hql); 		
		finds =  query.list();
		return finds;
	}
	
	
	//����ʰ������Ϣ
	public Find updateFind(Find find) {		
			String hql = "update Find find  set find.findname = ? , find.findername = ? , find.findress = ? , find.tel = ? , find.description = ? , find.promulgator = ?where find.id =?";  
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			query.setString(0, find.getFindname());	
			query.setString(1, find.getFindername());	
			query.setString(2, find.getAddress());	
			query.setString(3, find.getTel());			
			query.setString(4, find.getDescription());
			query.setString(5, find.getPromulgator());
			query.setInteger(6, find.getId());
			query.executeUpdate();
	
		return find;
	
	}
}
