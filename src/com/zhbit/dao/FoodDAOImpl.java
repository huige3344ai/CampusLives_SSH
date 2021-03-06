package com.zhbit.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.zhbit.domain.Role;
import com.zhbit.domain.User;
import com.zhbit.domain.food.Comments;
import com.zhbit.domain.food.Restaurant;

@Transactional
public class FoodDAOImpl implements FoodDAO{
	@Resource
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Comments> findR_id(int r_id) {
		
		String hql = "from Comments where r_id ='"+r_id+"'";
		List<Comments>  ctlist;
		ctlist = sessionFactory.getCurrentSession().createQuery(hql).list();
		return ctlist;

	}
	
		public Comments saveComment(Comments comment) {
			sessionFactory.getCurrentSession().save(comment);
			return comment;	
	}
	
		
	public int gettotalPages(int r_id,int pageSize){
		int totalPages;
		totalPages = (int)findR_id(r_id).size();
		totalPages = (totalPages%pageSize==0)?(totalPages/pageSize):(totalPages/pageSize+1);
		return totalPages;
	}
	
	@SuppressWarnings("unchecked")
	public List<Comments>  findByPage(int pageNo, int pageSize, int r_id){
		String hql = "from Comments where r_id ='"+r_id+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setFirstResult((pageNo-1)*pageSize);
		query.setMaxResults(pageSize);
		return query.list();	
	}
	

	public Role searchUser(int urid) {
		// TODO Auto-generated method stub
		String hql = "from Role where rid = ? ";		
		Query query = sessionFactory.getCurrentSession().createQuery(hql); 
		query.setInteger(0,urid);		
		Role user =  (Role) query.list().get(0);
		return user;
	}
	
	@SuppressWarnings("unchecked")
	public List<Comments> findComment(int r_id,int user_id){
		String hql = "from Comments where r_id ='"+r_id+"'and commenter='"+user_id+"'";
		List<Comments>  ctlist;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		 ctlist= query.list();
		return ctlist;
	}
	//������avg
	public double selectAVG(int num){
		double avg;
		String hql = "select avg(score) from Comments where r_id = '"+num+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		avg= (Double) query.uniqueResult();
		return avg;

		
	}
	
	

}
