package com.zhbit.dao.lostandfind;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;


import com.zhbit.domain.lostandfind.Lost;



public class LAFDao {

	@Resource
	private SessionFactory sessionFactory;
	
	
	
	//添加失物信息
	public Lost insertLost(Lost lost) {
		sessionFactory.getCurrentSession().persist(lost);
		return lost;
	}
	
	//查询失物
	public List<Lost> getLost() {
		List<Lost> losts = null;
		String hql = "from Lost order by id";		
		Query query = sessionFactory.getCurrentSession().createQuery(hql); 		
		losts =  query.list();
		return losts;
	}
	
	
	//查询一个失物
	public List<Lost> getoneLost(int id) {
		List<Lost> losts = null;
		String hql = "from Postlist where id="+id+" ";		
		Query query = sessionFactory.getCurrentSession().createQuery(hql); 		
		losts =  query.list();
		return losts;
	}
	
	
	//更新失物信息
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
}
