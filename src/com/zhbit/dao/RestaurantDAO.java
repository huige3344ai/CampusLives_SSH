package com.zhbit.dao;

import java.util.List;

import com.zhbit.domain.food.Restaurant;

public interface RestaurantDAO  {
	
	 public Restaurant saveRestaurant(Restaurant restaurant);
	
	 public Restaurant findid(int id);
	 
	 public List<Restaurant> findid(int pageNo,int pageSize);
	 
	 public List<Restaurant> finduid(int user_id);
	 
	 public void Delete(int r_id);
	 
	 public void update(Restaurant restaurant);

	 public List<Restaurant> findid();
	 
	 public int gettotalPages(int pageSize);
	 
	 public void updateprice(Restaurant restaurant);
	 
	
}