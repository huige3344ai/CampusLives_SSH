
package com.zhbit.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;

import com.zhbit.domain.food.Restaurant;

public class RestaurantDAOImpl implements RestaurantDAO{
	@Resource
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	@Override
	public Restaurant findid(int id) {
		String hql = "from Restaurant where Num = '"+id+"'";
		Restaurant restaurant = new Restaurant();
		List<Restaurant> relist;
		relist = sessionFactory.getCurrentSession().createQuery(hql).list();
		for(Restaurant re : relist)
			restaurant = re;
		return restaurant;
		
	}
	

	@SuppressWarnings("unchecked")
	@Override
	public List<Restaurant> findid() {
		String hql = "from Restaurant";
		List<Restaurant> relist;
		relist = sessionFactory.getCurrentSession().createQuery(hql).list();
		return relist;
		
	}
	

}
