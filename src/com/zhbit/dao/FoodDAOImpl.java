package com.zhbit.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;
import com.zhbit.domain.food.Comments;

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

}
