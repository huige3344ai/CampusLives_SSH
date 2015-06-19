
package com.zhbit.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;

import org.springframework.transaction.annotation.Transactional;

import com.zhbit.domain.food.Restaurant;

@Transactional
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
	
	
	@SuppressWarnings("unchecked")
	
	public List<Restaurant> finduid(int user_id){
		
		String hql = "from Restaurant where u_id = '"+user_id+"'";
		List<Restaurant> relist;
		relist = sessionFactory.getCurrentSession().createQuery(hql).list();	
		return relist;
	
	}
	
	public void Delete(int r_id){
		String hql = "delete from Restaurant restaurant where restaurant.num = '"+r_id+"'";
		sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
		
	}
	
	
	

}
