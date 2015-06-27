
package com.zhbit.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;
import com.zhbit.domain.food.Restaurant;

@Transactional
public class RestaurantDAOImpl implements RestaurantDAO{
	@Resource
	private SessionFactory sessionFactory;
	
	
	public Restaurant saveRestaurant(Restaurant restaurant) {
		sessionFactory.getCurrentSession().save(restaurant);
		return restaurant;	
}
	
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
	//分页查找
	@SuppressWarnings("unchecked")
	public List<Restaurant> findid(int pageNo,int pageSize) {
		String hql = "from Restaurant order by price DESC";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setFirstResult((pageNo-1)*pageSize);
		query.setMaxResults(pageSize);
		return query.list();
	}
	
	public int gettotalPages(int pageSize){
		int totalPages;
		totalPages = (int)findid().size();
		totalPages = (totalPages%pageSize==0)?(totalPages/pageSize):(totalPages/pageSize+1);
		return totalPages;
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
	//商家用户更新店铺信息
	public void update(Restaurant restaurant){
		String hql = "update Restaurant restaurant set restaurant.rname = ? , restaurant.currency = ?  ," +
				" restaurant.style = ? , restaurant.servicetime = ? , restaurant.character_ = ?, restaurant.dishes_ = ?" +
				" where restaurant.num =?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, restaurant.getRname());
		query.setString(1, restaurant.getCurrency());
		query.setString(2, restaurant.getStyle());
		query.setString(3, restaurant.getServicetime());
		query.setString(4, restaurant.getCharacter_());
		query.setString(5, restaurant.getDishes_());
		query.setInteger(6, restaurant.getNum());
		query.executeUpdate();

	}
	
	//动态更新商店平均评分
	public void updateprice(Restaurant restaurant){
		String hql = "update Restaurant restaurant set restaurant.price = ? where restaurant.num = ?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setFloat(0, restaurant.getPrice());
		query.setInteger(1, restaurant.getNum());
		query.executeUpdate();
	}

}
